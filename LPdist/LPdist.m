******************************************** 
% * LPdist.m 
% * Copyright (c) CNR-IMATI Ge - 2016 
% * Author: Silvia Biasotti 
% * All rights reserved 
% ******************************************** 

function [dist]=LPdist(filehistogram1,filehistogram2) 

H1=load(filehistogram1); 
H2=load(filehistogram2); 

X=[H1;H2]; 
dist=pdist(X,'euclidean');

