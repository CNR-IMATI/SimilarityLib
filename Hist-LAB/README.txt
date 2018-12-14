 /********************************************
 * README.txt
* Copyright (c) CNR-IMATI Ge - 2017
 * Author: Silvia Biasotti
 * All rights reserved
********************************************/

MATLAB routine to build the Histogram of the LAB values of a 3D model selecting the interval of the L, a and b channels.

Tested on Ubuntu 14.04 and and CentOs.

Usage: h=HistLAB(namefile,nameoutput,intervalL,intervalA,intervalB);

The input is contained in the file 'namefile' and it is supposed to be the three LAB channels of a model, i.e. a vector with three elements (L, a and b values respectively), three elements for each vertex. According to the current naming convention are files like: *_LAB.txt.

The parameters intervalL, intervalA, intervalB can vary according to range of the Lab value. To be comparable, two histograms MUST be computed with the same settings of the parameters intervalL, intervalA and intervalB.

Example:
h=HistLAB('09_840_1M_LAB.txt','09_840_1M_LAB_hist.txt',[41,100],[-15,20],[-15,50]);

The file 09_840_1M_LAB_hist.txt contains the histogram of the three Lab channels (it is a concatenated of the three channels, first L, then a and finally b).

Two input files are provided (09_840_1M_LAB.txt and 465_1891_1M_LAB.txt) with their respective output ones (09_840_1M_LAB_hist.txt and 465_1891_1M_LAB_hist.txt)

This output is used for:
similarity evaluation.
