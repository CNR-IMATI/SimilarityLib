/********************************************
 * README.txt
* Copyright (c) CNR-IMATI Ge - 2016
 * Author: Silvia Biasotti
 * All rights reserved
********************************************/

This code computes the LP distance between two histograms (it is possible to extend to a set of histograms).
It uses the MATLAB function pdist.m avalable in the Statistics toolbox of MATLAB or of Octave.

Usage: dist= LPdist(filehistogram1,filehistogram2)

Input: two histograms (store in the files filehistogram1 and filehistogram2, respectively).

it prints the distance value in the standard output.
