"""SciencePlots vector PDF rendering shared by every architectural experiment."""
from collections import defaultdict
import json
import os
from pathlib import Path
import string
import subprocess

os.environ.setdefault('MPLCONFIGDIR', '/tmp/ferroma-matplotlib')
import matplotlib
matplotlib.use('Agg')
import matplotlib.pyplot as plt
from matplotlib.ticker import MaxNLocator, MultipleLocator
import numpy as np

STYLES = Path(__file__).resolve().parents[1] / 'data'
# These are the unmodified upstream styles, with their MIT license alongside.
plt.style.use([STYLES / 'science.mplstyle', STYLES / 'no-latex.mplstyle'])
SCIENCE_COLORS = plt.rcParams['axes.prop_cycle'].by_key()['color']
COLORS = {label: SCIENCE_COLORS[index] for label, index in
          (('Tree', 0), ('Mesh', 1), ('Repeated unicast', 2))}
COLORS.update({'Hierarchical encoding': SCIENCE_COLORS[0],
               'Bitmask': SCIENCE_COLORS[1], 'FBS': SCIENCE_COLORS[1],
               'EDL': SCIENCE_COLORS[2]})
plt.rcParams.update({'font.size': 11, 'axes.titlesize': 12, 'axes.labelsize': 11,
                     'legend.fontsize': 10, 'pdf.fonttype': 42,
                     'axes.grid': True, 'axes.axisbelow': True,
                     'grid.alpha': .18, 'grid.linestyle': ':',
                     'lines.linewidth': 1.5})


def decorate(ax, xlabel=None, ylabel=None, yscale='linear'):
    ax.set_xscale('linear'); ax.set_yscale(yscale)
    if yscale == 'linear':
        ax.set_ylim(bottom=0)
        ax.yaxis.set_major_locator(MaxNLocator(nbins=5, min_n_ticks=3))
    ax.margins(x=0)
    if xlabel: ax.set_xlabel(xlabel)
    if ylabel: ax.set_ylabel(ylabel)


def stack(ax, rows, components, labels, scale=1., discrete=False, colors=None):
    x = np.array([r['x'] for r in rows])
    ys = np.array([[r[k] * scale for r in rows] for k in components])
    if np.any(ys < -1e-8):
        raise ValueError('Negative stacked component; check the timing/energy accounting')
    # Small roundoff is visually zero. A substantive negative is an error above.
    ys = np.maximum(ys, 0.)
    ax.stackplot(x, ys, labels=labels, colors=colors or SCIENCE_COLORS[:len(ys)],
                 alpha=.65, step='post' if discrete else None, linewidth=0)
    ax.plot(x, ys.sum(axis=0), color='#303030', label='Total', linewidth=1.2,
            marker='o', markersize=2.3 if discrete else 3,
            drawstyle='steps-post' if discrete else 'default')


def unicast_panels(obj):
    p = obj['plot']; rows = obj['rows']
    topologies=p.get('topologies',['Tree','Mesh'])
    fig, axes = plt.subplots(1, len(topologies), figsize=(11.5 if len(topologies)>1 else 7.5, 4.7), sharex=True, sharey=True)
    axes=np.atleast_1d(axes)
    for col, topology in enumerate(topologies):
        ax = axes[col]
        group = [r for r in rows if r['topology'] == topology]
        stack(ax, group, p['components'], p['component_labels'], p['scale'], True,
              [SCIENCE_COLORS[i] for i in (0, 2, 1)][:len(p['components'])])
        if len(topologies)>1:ax.lines[-1].set_label('Total ('+topology+')')
        ax.legend(loc='upper left',fontsize=10)
        decorate(ax, ylabel=p['ylabel'] if col == 0 else None)
        side = 2**obj['metadata']['config']['depth']
        ax.set_xlim(0, side)
        ax.xaxis.set_major_locator(MultipleLocator(max(1, side // 8)))
        ax.xaxis.set_minor_locator(MultipleLocator(1))
    maximum = max(sum(r[k] for k in p['components']) * p['scale'] for r in rows)
    axes[0].set_ylim(0., max(maximum * 1.08, 1e-9))
    fig.supxlabel(p['xlabel'], y=.035, fontsize=12)
    fig.subplots_adjust(left=.085, right=.985, bottom=.17, top=.96, wspace=.10)
    return fig


def throughput_panels(obj):
    p=obj['plot'];rows=obj['rows']
    panels=p.get('panels') or [dict(topology=t,label=t) for t in p['topologies']]
    fig,axes=plt.subplots(1,len(panels),figsize=(11.5 if len(panels)>1 else 7.5,4.9))
    for i,(ax,panel) in enumerate(zip(np.atleast_1d(axes),panels)):
        group=[r for r in rows if r['topology']==panel['topology'] and
               ('series' not in panel or r['series']==panel['series'])]
        for series in dict.fromkeys(r['series'] for r in group):
            points=sorted((r for r in group if r['series']==series),key=lambda r:r['x'])
            ax.errorbar([r['x'] for r in points],[r['mean'] for r in points],
                        yerr=[r['ci95'] for r in points],fmt='o-',capsize=2.5,
                        markersize=3.5,label=series,color=COLORS[series])
        xmax=max(r['x'] for r in group)*1.03
        ymax=max(r['mean']+r['ci95'] for r in group)*1.12
        ax.plot([0,xmax],[0,xmax],'--',color='#777777',linewidth=1.,label='Ideal: accepted = offered')
        decorate(ax,p['xlabel'],p['ylabel'])
        ax.set_xlim(0,xmax);ax.set_ylim(0,max(ymax,1e-9))
        ax.ticklabel_format(axis='both',style='sci',scilimits=(-3,4),useMathText=True)
        ax.legend(loc='lower right',fontsize=9)
    fig.tight_layout(w_pad=2.5)
    return fig


def multicast_panels(obj):
    p = obj['plot']; rows = obj['rows']; metric = p['metric']; scale = p['scale']
    fig, axes = plt.subplots(2, 2, figsize=(11.5, 8.2), sharex='col')
    for row, series in enumerate(('Repeated unicast', 'Tree')):
        for col, sweep in enumerate(('lca', 'rho')):
            ax=axes[row,col]
            group = sorted([r for r in rows if r['sweep'] == sweep and r['series'] == series],
                           key=lambda r: r['x'])
            valid = [r for r in group if r.get('status', 'ok') == 'ok']
            if valid:
                if series=='Tree':
                    stack(ax,valid,p['components'],p['component_labels'],scale,
                          colors=[SCIENCE_COLORS[i] for i in p.get('component_color_indices',[2,0])])
                    for area,hatch in zip(ax.collections,p.get('component_hatches',[])):
                        if hatch:
                            area.set_hatch(hatch);area.set_edgecolor('#3b5941')
                    ax.lines[-1].set_label('Total (Multicast)')
                else:
                    ax.plot([r['x'] for r in valid],[r[metric]*scale for r in valid],
                            'o-',color=COLORS[series],markersize=4,label=series)
                ax.set_ylim(0,max(max(r[metric]*scale for r in valid)*1.12,1e-9))
            failed = [str(r['x']) for r in group if r.get('status', 'ok') != 'ok']
            if failed:
                ax.text(.02, .04, 'Unsupported: ' + ', '.join(failed), transform=ax.transAxes, fontsize=9)
            xlabel=('LCA level λ' if sweep=='lca' else 'Destination density ρ') if row==1 else None
            decorate(ax,xlabel,p['ylabel'],'linear')
            if sweep=='lca':ax.xaxis.set_major_locator(MaxNLocator(integer=True))
            else:ax.set_xlim(0,1.)
            if valid:ax.legend(loc='best',fontsize=9)
    fig.tight_layout(w_pad=2.,h_pad=1.5)
    return fig


def single_panel(obj):
    rows = obj['rows']; p = obj['plot']; kind = p['kind']; scale = p.get('scale', 1.)
    fig, ax = plt.subplots(figsize=(7.5, 4.9))
    if kind in ('lines', 'metric'):
        grouped = defaultdict(list)
        for r in rows: grouped[r['series']].append(r)
        for series, group in grouped.items():
            group = sorted(group, key=lambda r: r['x'])
            metric = 'mean' if kind == 'lines' else p['metric']
            x = np.array([r['x'] for r in group])
            y = np.array([r.get(metric, float('nan')) * scale for r in group])
            color = COLORS[series]
            ax.plot(x, y, 'o-', markersize=3.5, color=color, label=series)
            if kind == 'lines':
                ci = np.array([r['ci95'] * scale for r in group])
                ax.fill_between(x, y - ci, y + ci, color=color, alpha=.15)
        ax.legend(loc='best')
        decorate(ax, p['xlabel'], p['ylabel'], p.get('yscale', 'linear'))
    elif kind == 'heatmap':
        xs = sorted({r['x'] for r in rows}); ys = sorted({r['y'] for r in rows})
        values = np.full((len(ys), len(xs)), np.nan)
        for r in rows:
            if p['metric'] in r: values[ys.index(r['y']), xs.index(r['x'])] = r[p['metric']]
        # A continuous ramp through science colors, with a linear normalization.
        cmap = matplotlib.colors.LinearSegmentedColormap.from_list(
            'science_blue', ['#ffffff', SCIENCE_COLORS[0]])
        cmap.set_bad('#dddddd')
        # PDF exports must contain vector cells, not an embedded PNG. imshow
        # always rasterizes the heatmap; large colorbars can rasterize too.
        positive=values[np.isfinite(values)&(values>0)]
        norm=(matplotlib.colors.LogNorm(vmin=positive.min(),vmax=positive.max())
              if p.get('color_scale')=='log' and len(positive) else
              matplotlib.colors.Normalize(vmin=0,vmax=np.nanmax(values)))
        shown = ax.pcolormesh(np.arange(len(xs) + 1) - .5,
                              np.arange(len(ys) + 1) - .5, values,
                              shading='flat', cmap=cmap, norm=norm, rasterized=False)
        bar = fig.colorbar(shown, ax=ax, label=p.get('colorbar_label','Accepted throughput (Gb/s / endpoint)'))
        bar.solids.set_rasterized(False)
        ax.set_xticks(range(len(xs)),[f'{x:g}' for x in xs]); ax.set_yticks(range(len(ys)), ys)
        ax.set_xlabel(p['xlabel']); ax.set_ylabel(p['ylabel']); ax.grid(False)
        ax.tick_params(which='minor', bottom=False, top=False, left=False, right=False)
        for i in range(len(ys)):
            for j in range(len(xs)):
                value = values[i, j]
                ax.text(j, i, 'unsupported' if np.isnan(value) else f'{value:.3g}',
                        ha='center', va='center', fontsize=9,
                        color='white' if np.isfinite(value) and norm(value)>.6 else '#252525')
    elif kind == 'pie':
        labels = [f'{r.get("label",r["module"])}\n{r["transistors"]:,} transistors  ·  {r["percent"]:.1f}%' for r in rows]
        wedges, _ = ax.pie([r['transistors'] for r in rows], startangle=90,
                           colors=SCIENCE_COLORS, wedgeprops=dict(edgecolor='white',linewidth=1.))
        ax.legend(wedges,labels,loc='center left',bbox_to_anchor=(1.,.5),fontsize=11,
                  labelspacing=1.4,handlelength=1.2,handleheight=1.2,frameon=False,
                  borderaxespad=0.,handletextpad=.8)
    else:
        raise ValueError('Unknown figure kind: ' + kind)
    fig.tight_layout()
    return fig


def validate_pdf(path):
    """Read the PDF independently with Poppler and reject rasterized figures."""
    with Path(path).open('rb') as source:
        if source.read(5) != b'%PDF-':
            raise ValueError('Export is not a PDF document')
    result = subprocess.run(['pdfinfo', str(path)], check=True, text=True,
                            capture_output=True)
    info = dict((key.strip(), value.strip()) for line in result.stdout.splitlines()
                for key, separator, value in [line.partition(':')] if separator)
    if info.get('Pages') != '1':
        raise ValueError('A plot must contain exactly one PDF page')
    images = subprocess.run(['pdfimages', '-list', str(path)], check=True,
                            text=True, capture_output=True)
    if any(line.strip() for line in images.stdout.splitlines()[2:]):
        raise ValueError('Plot PDF contains raster images')
    return info


def render(path, obj):
    kind = obj['plot']['kind']
    fig = (unicast_panels(obj) if kind == 'unicast_panels' else
           throughput_panels(obj) if kind == 'throughput_panels' else
           multicast_panels(obj) if kind == 'multicast_panels' else single_panel(obj))
    # Labels about calibration, assumptions and experiment notes remain in the
    # embedded metadata; exported figures have no watermark or footer.
    # Provenance and exact numerical values live inside PDF metadata, never in a
    # separate JSON/CSV export. Write atomically so collectors/readers see a
    # complete figure even if generation is interrupted.
    path = Path(path).with_suffix('.pdf')
    temporary = path.with_name('.' + path.stem + '.tmp.pdf')
    try:
        fig.savefig(temporary, format='pdf', metadata={
            'Title': obj['plot']['title'],
            'Creator': 'NoC architectural simulator; SciencePlots 2.2.2',
            'Subject': json.dumps(obj, sort_keys=True)})
        validate_pdf(temporary)
        temporary.replace(path)
    finally:
        plt.close(fig)
        if temporary.exists(): temporary.unlink()
