"""Render the four selected SNN comparison figures."""
from evaluation.network_char.src import plotting as style
from .helpers import confidence95
plt, np = style.plt, style.np
from collections import defaultdict

import csv

import json

from pathlib import Path

def save_figure(fig, path, metadata):
    path = Path(path)
    path.parent.mkdir(parents=True, exist_ok=True)
    temporary = path.with_name('.' + path.stem + '.tmp.pdf')
    fig.savefig(temporary, format='pdf', metadata={
        'Creator': 'Ferroma batching comparison; SciencePlots',
        'Subject': json.dumps(metadata, sort_keys=True)})
    plt.close(fig)
    style.validate_pdf(temporary)
    temporary.replace(path)
from collections import defaultdict

import csv

import json

from pathlib import Path

ARCHITECTURES = ("our_tree", "hbs_tree", "sync_mesh")

LABELS = ("Our Tree", "HBS Tree", "Sync Baseline")

TITLES = {"map_nmnist_dense": "MAP-SNN / N-MNIST", "map_shd_dense": "MAP-SNN / SHD",
          "lsm_nmnist": "LSM / N-MNIST", "lsm_nmnist_alltoall": "LSM / N-MNIST"}

def workload_order(gate):
    def key(name):
        return (0 if "map_nmnist" in name else 1 if "map_shd" in name else 2, name)
    return sorted(gate["workloads"], key=key)

def title(name):
    return TITLES.get(name, name.replace("_", " "))

def _layout(count, columns=1, width=9.):
    fig, axes = plt.subplots(count, columns, figsize=(width, max(3.8, 3. * count)), squeeze=False)
    fig.subplots_adjust(left=.12, right=.98, bottom=.17 if count == 1 else .09 if count == 2 else .075,
                        top=.80 if count == 1 else .88 if count == 2 else .95, hspace=.35, wspace=.35)
    if count < 3:
        fig.suptitle("Partial suite: completed workloads only", fontsize=9, y=.995)
    return fig, axes

def aggregate(rows, metrics):
    groups = defaultdict(list)
    for row in rows:
        groups[(row["workload"], row["mapping"], row["architecture"], row["batch_max"])].append(row)
    bars = []
    for (workload, mapping, architecture, cap), selected in sorted(groups.items()):
        item = dict(workload=workload, mapping=mapping, architecture=architecture,
                    batch_max=cap, samples=len(selected))
        for metric in metrics:
            item[metric], item[metric + "_ci95"] = confidence95([r[metric] for r in selected])
        bars.append(item)
    return bars

def grouped_figure(gate, bars, metric, label, units, path,
                   xlabel="Maximum addresses per Our Tree packet, $B_{max}$"):
    names = workload_order(gate)
    caps = gate["batch_caps"]
    fig, axes = _layout(len(names))
    for i, name in enumerate(names):
        ax = axes[i, 0]
        selected = [r for r in bars if r["workload"] == name and r["mapping"] == "activity_aware"]
        maximum = max(r[metric] + r[metric + "_ci95"] for r in selected)
        factor, unit = next(((f, u) for f, u in units if maximum >= f), units[-1])
        for j, architecture in enumerate(ARCHITECTURES):
            data = sorted((r for r in selected if r["architecture"] == architecture), key=lambda r: r["batch_max"])
            if [r["batch_max"] for r in data] != caps:
                raise ValueError("Each architecture requires the complete fixed cap sweep")
            ax.bar(np.arange(len(caps)) + (j - 1) * .25, [r[metric] / factor for r in data],
                yerr=[r[metric + "_ci95"] / factor for r in data], width=.24,
                color=style.SCIENCE_COLORS[j], label=LABELS[j], capsize=2,
                edgecolor="white", linewidth=.4)
        ax.set_xticks(np.arange(len(caps)), [str(cap) for cap in caps])
        ax.set_ylim(0, max(maximum / factor * 1.18, 1.))
        ax.set_ylabel(label + (f" ({unit})" if unit else ""))
        ax.text(.015, .97, title(name), transform=ax.transAxes, va="top", fontsize=10)
        if i == len(names) - 1:
            ax.set_xlabel(xlabel)
    handles, labels = axes[0, 0].get_legend_handles_labels()
    fig.legend(handles, labels, loc="upper center", ncol=3, frameon=False,
               bbox_to_anchor=(.5, .935 if len(names) < 3 else .998))
    if gate.get("run_label"):
        fig.suptitle(f"Quick preliminary · {gate.get('samples', 30)} fixed test samples · 13-bit source identities",
                     fontsize=9, y=.995)
        if len(names) == 3:
            fig.subplots_adjust(top=.91)
            for legend in fig.legends:
                legend.set_bbox_to_anchor((.5, .965))
    save_figure(fig, path, dict(metric=metric, mapping="activity_aware", gate=gate, bars=bars))

def distribution_figure(gate, weighted, path):
    names = workload_order(gate)
    fig, axes = _layout(len(names))
    for i, name in enumerate(names):
        ax = axes[i, 0]
        stats = gate["workloads"][name]["mappings"]["activity_aware"]["natural_batch"]
        histogram = {int(k): v for k, v in stats["histogram"].items()}
        edge = 1
        bins = []
        while edge <= max(64, stats["max"]):
            bins.append(edge)
            edge *= 2
        total = stats["spikes"] if weighted else stats["count"]
        heights = [sum(count * (size if weighted else 1) for size, count in histogram.items()
                       if lo <= size < lo * 2) / max(1, total) for lo in bins]
        ax.bar(np.arange(len(bins)), heights, color=style.SCIENCE_COLORS[i % 3], width=.85)
        ax.set_xticks(np.arange(len(bins)), [str(v) if v == 1 else f"{v}–{v*2-1}" for v in bins],
                      rotation=25 if len(bins) > 9 else 0, fontsize=8)
        ax.set_ylim(0, max(max(heights, default=0) * 1.4, .1))
        ax.set_ylabel("Fraction of spike addresses" if weighted else "Fraction of natural groups")
        ax.text(.015, .97, title(name), transform=ax.transAxes, va="top", fontsize=10)
        ax.text(.985, .96, f"Mean {stats['mean']:.2f}   p95 {stats['p95']:g}\n"
                f"Spike fraction ≥16: {stats['spike_fraction_ge_16']:.1%}",
                transform=ax.transAxes, ha="right", va="top", fontsize=9)
        if i == len(names) - 1:
            ax.set_xlabel("Natural compatible address occurrences per native timestep (exact interval bins)")
    save_figure(fig, path, dict(spike_weighted=weighted, gate=gate))


def render_figures(figures, output):
    """Generate exactly the four public PDF names from their recorded inputs."""
    output=Path(output)
    for name,metric,label,units in (
        ('energy','total_energy_pj','NoC energy',((1e6,'μJ'),(1e3,'nJ'),(1.,'pJ'))),
        ('latency','noc_inference_latency_ns','NoC latency',((1e6,'ms'),(1e3,'μs'),(1.,'ns')))):
        data=figures[name]
        grouped_figure(data['gate'],data['bars'],metric,label,units,output/(name+'.pdf'),xlabel=r'$B_{max}$')
    for name,weighted in (('batch_distribution',False),('weighted_batch_distribution',True)):
        distribution_figure(figures[name]['gate'],weighted,output/(name+'.pdf'))
