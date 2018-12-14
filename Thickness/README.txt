 /********************************************
 * README.txt
* Copyright (c) CNR-IMATI Ge - 2017
 * Author: Silvia Biasotti
 * All rights reserved
********************************************/

MATLAB routine to evaluate the prevalent value of an histogram among the bins that have a value higher than a percentage of the whole histogram values, selecting the interval among the bins, the first value

Tested on Ubuntu 14.04 and Windows 10.

Usage: value=PrevalentValue(manefile,percentage,step,start)

The input is contained in the file 'namefile' and it is supposed to contain a scalar value for each vertex of a 3D model. According to the current naming convention are files like: *_CURVM.txt or *_SDF30.txt.

The parameters "bins" and "interval" determine the number of bins of the histogram and the range of the scalar values. To be comparable, two histograms MUST be computed with the same settings of the parameters bins and interval.

Examples:
value=PrevalentValue('465_1891_50K_SDF30_hist.txt',90,0.1,0.0)

value=1.15

represents the average x-value of the elements of the histogram whose value is over the 90th centile of the histogram.
The output is visualized on the matlab terminal and stored in the variable value.

An input file is provided (465_1891_50K_SDF30_hist.txt), the output is the value at the command line which can be store in a .txt file.

This output is used for:
similarity evaluation.
