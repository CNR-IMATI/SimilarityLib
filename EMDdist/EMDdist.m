%********************************************
% * EMDdist.m
% * Copyright (c) CNR-IMATI Ge - 2016
% * Author: Silvia Biasotti
% * All rights reserved
% ********************************************
function [dist]=EMDdist(filehistogram1,filehistogram2)
%
%Given two histogams (contained in the files filehistogram1,filehistogram2) provides their EMD distance
%
H1=load(filehistogram1);
H2=load(filehistogram2);

dist=pdist2(H1,H2,'emd');
