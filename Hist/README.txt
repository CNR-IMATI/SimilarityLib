 /********************************************
 * README.txt
* Copyright (c) CNR-IMATI Ge - 2017
 * Author: Silvia Biasotti
 * All rights reserved
********************************************/


MATLAB routine to build the Histogram of a scalar function defined on the vertices of a 3D model, selecting the number of bins and the interval of the scalar values.

Tested on Ubuntu 14.04 and Windows 10.

Usage: h=Hist_interval(namefile, nameoutput, numbins, interval);

The input is contained in the file 'namefile' and it is supposed to contain a scalar value for each vertex of a 3D model. According to the current naming convention are files like: *_CURVM.txt or *_sdf30.txt.

The parameters bins and interval determine the number of bins of the histogram and the range of the scalar values. To be comparable, two histograms MUST be computed with the same settings of the parameters bins and interval.

Examples:
h=Hist_interval('465_1891_50K_SDF30.txt','465_1891_50K_SDF30_hist.txt',140,[0,14]);
h=Hist_interval('464_1891_1M_CURVM.txt','464_1891_1M_CURVM_hist.txt',200,[-0.05,0,05]);

The file 465_1891_1M_SDF30_hist.txt is supposed to contain the histogram of the sdf30 scalar values.
The file 464_1891_50K_CURVM_hist.txt is supposed to contain the histogram of the mean curvature (CURVM) scalar values.

Two input files are provided (465_1891_50K_SDF30.txt and 464_1891_1M_CURVM.txt) with their respective output (465_1891_50K_SDF30_hist.txt and 464_1891_1M_CURVM_hist.txt)

This output is used for:
similarity evaluation.
