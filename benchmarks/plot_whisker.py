#!/usr/bin/python

"""This program shows `hyperfine` benchmark results as a box and whisker plot.

Quoting from the matplotlib documentation:
    The box extends from the lower to upper quartile values of the data, with
    a line at the median. The whiskers extend from the box to show the range
    of the data. Flier points are those past the end of the whiskers.
"""

import argparse
import json
import matplotlib.pyplot as plt
import matplotlib.ticker as ticker
import numpy as np
import pathlib

parser = argparse.ArgumentParser(description=__doc__)
parser.add_argument("paths", metavar='PATH', nargs='+',
                    help="JSON file with benchmark results")
args = parser.parse_args()

fig = plt.figure()

for path in args.paths:
    with open(path) as f:
        results = json.load(f)["results"]

    label = pathlib.Path(path).stem
    parameters = [b["parameter"] for b in results]
    medians = [b["median"] for b in results]
    stddevs = [b["stddev"] for b in results]

    plt.errorbar (parameters, medians, stddevs, label=label)

ax = plt.gca()
ax.xaxis.set_major_locator(ticker.MultipleLocator(10))
ax.xaxis.set_major_formatter(ticker.FormatStrFormatter('%d'))

plt.autoscale(enable=False, axis='x')
plt.xlim(0,100)
plt.xlabel("Size [number of inputs]")
plt.ylim(0,None)
plt.ylabel("Time [s]")
plt.legend(loc='upper left')
plt.show()
