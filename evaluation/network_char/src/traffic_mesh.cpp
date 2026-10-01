// Exact synchronous specialization of sim.py for continuous unicast traffic.
// Ports are ordered by Python repr(input_key): local, west, north, south, east.
// Keep event insertion order, finite input slots, shared-port issue interval,
// packet output ownership, and acknowledgment/retirement semantics identical.
#include <algorithm>
#include <cmath>
#include <cstdint>
#include <deque>
#include <iostream>
#include <limits>
#include <memory>
#include <queue>
#include <stdexcept>
#include <vector>
using namespace std;
static constexpr double INF=numeric_limits<double>::infinity();
struct Packet;
struct Op { Packet* packet=nullptr; int hop=0,flit=0,input=0; double ready=0,capture=0; Op* upstream=nullptr; };
struct Hop { int node,input_port,output; };
struct Packet { uint64_t id; int source,lane; const vector<Hop>* path; vector<Op> ops; };
struct Input { deque<Op*> queue; int occupancy=0; double scheduled=INF,forward_next=0; };
struct Output { vector<deque<Op*>> queues; int last=-1; int64_t owner=-1; double next=0,scheduled=INF; };
struct Source { vector<Hop> path; double phase=0; uint64_t sequence=0; };
enum Kind { START,INJECT,ARRIVE,ADMIT,FORWARD,GRANT,DELIVER };
struct Event { double time; uint64_t serial; Kind kind; int key; Op* op; double requested; };
struct Later { bool operator()(const Event&a,const Event&b) const {
    return a.time>b.time || (a.time==b.time && a.serial>b.serial);
}};
struct Engine {
    int side,n,flits,lanes,capacity,bins; double clock,latency,wire,capture_delay,warm,window,end,period,now=0;
    uint64_t serial=0,events=0,next_id=0,completed=0,live=0,peak=0,issued=0,delivered=0;
    vector<Input> inputs; vector<Output> outputs; vector<double> port_next;
    vector<Source> sources; vector<uint64_t> counts;
    priority_queue<Event,vector<Event>,Later> heap;
    Engine() {
        int stages;
        if(!(cin>>side>>flits>>lanes>>capacity>>clock>>stages>>wire>>capture_delay>>warm>>window>>period>>bins))
            throw runtime_error("Invalid configuration");
        n=side*side;latency=stages*clock;end=warm+window;
        inputs.resize(n*5*lanes);outputs.resize(n*5);port_next.resize(n*5,0);
        sources.resize(n);counts.resize(bins,0);
        for(auto& o:outputs)o.queues.resize(5*lanes);
        for(int s=0;s<n;++s) {
            int x,y,dx,dy;cin>>x>>y>>dx>>dy>>sources[s].phase;
            vector<pair<int,int>> coords{{x,y}};
            while(x!=dx){x+=(dx>x ? 1:-1);coords.emplace_back(x,y);}
            while(y!=dy){y+=(dy>y ? 1:-1);coords.emplace_back(x,y);}
            auto& path=sources[s].path;
            for(size_t h=0;h<coords.size();++h) {
                auto [a,b]=coords[h];
                int inp=h ? direction(coords[h-1].first-a,coords[h-1].second-b):0;
                int out=h+1<coords.size() ? direction(coords[h+1].first-a,coords[h+1].second-b):0;
                int node=a*side+b;path.push_back({node,inp,node*5+out});
            }
            if(sources[s].phase<end)at(sources[s].phase,START,s);
        }
        if(!cin)throw runtime_error("Incomplete source pattern");
    }
    static int direction(int x,int y) {return x<0?1:y<0?2:y>0?3:x>0?4:0;}
    void at(double t,Kind kind,int key=0,Op* op=nullptr) {
        if(t<now-1e-7)throw runtime_error("Event moved backwards");
        heap.push({max(t,now),serial++,kind,key,op,t});
    }
    double aligned(double t) const {return ceil(t/clock-1e-10)*clock;}
    double admission(int key) const {
        return aligned(max({now,port_next[key/lanes],inputs[key].queue.front()->capture}));
    }
    void wake_input(int key) {
        auto& in=inputs[key];if(in.queue.empty())return;
        double t=admission(key);
        if(in.scheduled<=t)return;
        in.scheduled=t;at(t,ADMIT,key);
    }
    void wake_output(int key) {
        auto& out=outputs[key];double t=aligned(max(now,out.next));
        if(out.scheduled<=t)return;
        out.scheduled=t;at(t,GRANT,key);
    }
    void start(int source) {
        if(now>=end)return;
        auto& s=sources[source];double attempted=s.phase+s.sequence*period;
        if(attempted>now+1e-7) {if(attempted<end)at(attempted,START,source);return;}
        ++s.sequence;
        auto* p=new Packet;p->id=next_id++;p->source=source;p->lane=p->id%lanes;p->path=&s.path;
        p->ops.resize(s.path.size()*(flits+1));
        for(size_t h=0;h<s.path.size();++h)for(int f=0;f<=flits;++f) {
            auto& o=p->ops[h*(flits+1)+f];o.packet=p;o.hop=h;o.flit=f;
            o.input=(s.path[h].node*5+s.path[h].input_port)*lanes+p->lane;
        }
        ++live;peak=max(peak,live);issued+=flits*28;
        at(now,INJECT,0,&p->ops[0]);
    }
    void arrive(Op* o) {inputs[o->input].queue.push_back(o);wake_input(o->input);}
    void retire(Op* o) {
        auto& in=inputs[o->input];if(--in.occupancy<0)throw runtime_error("Negative occupancy");
        wake_input(o->input);
    }
    void acknowledge(Op* o) {
        int key=(*o->packet->path)[o->hop].output;
        if(o->flit==flits)outputs[key].owner=-1;
        retire(o);wake_output(key);
    }
    void admit(int key,double scheduled) {
        auto& in=inputs[key];if(in.scheduled!=scheduled)return;in.scheduled=INF;
        if(in.queue.empty() || in.occupancy>=capacity)return;
        if(admission(key)>now+1e-8){wake_input(key);return;}
        Op* o=in.queue.front();in.queue.pop_front();
        // Network admission is stage 1, already counted in the router depth.
        o->ready=max(now+latency-(o->hop ? clock:0.),in.forward_next);
        if(o->flit)o->ready=max(o->ready,(o-1)->ready+clock);
        in.forward_next=o->ready+clock;port_next[key/lanes]=now+clock;++in.occupancy;
        at(o->ready,FORWARD,0,o);
        if(o->hop==0) {
            if(o->flit<flits)at(now+clock,INJECT,0,o+1);
            else start(o->packet->source);
        } else acknowledge(o->upstream);
        int base=key-key%lanes;
        for(int lane=0;lane<lanes;++lane)wake_input(base+lane);
    }
    void forward(Op* o) {
        int key=(*o->packet->path)[o->hop].output;
        outputs[key].queues[o->input%(5*lanes)].push_back(o);wake_output(key);
    }
    void grant(int key,double scheduled) {
        auto& out=outputs[key];if(out.scheduled!=scheduled)return;out.scheduled=INF;
        int first=-1,selected=-1;
        for(int k=0;k<5*lanes;++k) {
            auto& q=out.queues[k];
            if(q.empty() || (out.owner>=0 && out.owner!=int64_t(q.front()->packet->id)))continue;
            if(first<0)first=k;
            if(k>out.last && selected<0)selected=k;
        }
        if(first<0)return;if(selected<0)selected=first;
        Op* o=out.queues[selected].front();out.queues[selected].pop_front();
        out.owner=o->packet->id;out.last=selected;out.next=now+clock;
        if(o->hop+1==int(o->packet->path->size()))at(now,DELIVER,0,o);
        else {Op* child=o+(flits+1);child->upstream=o;child->capture=now+capture_delay;
              at(now+wire,ARRIVE,0,child);}
        wake_output(key);
    }
    void deliver(Op* o) {
        acknowledge(o);
        if(o->flit) {
            delivered+=28;
            if(now>=warm && now<end) {
                int i=min(bins-1,int((now-warm)/window*bins));counts[i]+=28;
            }
            if(o->flit==flits){++completed;--live;delete o->packet;}
        }
    }
    void run() {
        while(!heap.empty() && heap.top().time<end) {
            Event e=heap.top();heap.pop();now=e.time;++events;
            switch(e.kind) {
                case START:start(e.key);break;
                case INJECT:at(now,ARRIVE,0,e.op);break;
                case ARRIVE:arrive(e.op);break;
                case ADMIT:admit(e.key,e.requested);break;
                case FORWARD:forward(e.op);break;
                case GRANT:grant(e.key,e.requested);break;
                case DELIVER:deliver(e.op);break;
            }
        }
        if(delivered>issued)throw runtime_error("Payload conservation failed");
        cout<<"{\"delivered_bits_by_bin\":[";
        for(int i=0;i<bins;++i)cout<<(i?",":"")<<counts[i];
        cout<<"],\"started_messages_by_source\":[";
        for(int i=0;i<n;++i)cout<<(i?",":"")<<sources[i].sequence;
        cout<<"],\"events\":"<<events<<",\"completed_packets\":"<<completed
            <<",\"active_packets_at_stop\":"<<live<<",\"peak_live_packets\":"<<peak
            <<",\"issued_payload_copy_bits\":"<<issued<<",\"delivered_bits_since_start\":"<<delivered<<"}\n";
        // Outstanding packet graphs are intentionally discarded with the worker
        // process. No drain is performed, and no post-window delivery is counted.
    }
};
int main() {try {Engine engine;engine.run();}catch(const exception&e){cerr<<e.what()<<'\n';return 1;}}
