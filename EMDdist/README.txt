 /********************************************
 * README.txt
* Copyright (c) CNR-IMATI Ge - 2016
 * Author: Silvia Biasotti
 * All rights reserved
********************************************/

This code computes the EMD distance between two histograms (it is possible to extend to a set of histograms).
It uses the MATLAB function pdist2.m that belongs to the Piotr Dollar's Toolbox. For convenience it is provided in the same folder ad EMDdist.m

Usage: dist= EMDdist(filehistogram1,filehistogram2)

Input: two histograms (store in the files filehistogram1 and filehistogram2, respectively).

it prints the distance value in the standard output.
