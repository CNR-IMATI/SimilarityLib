%********************************************
% * ShapeIndex.m
% * Copyright (c) CNR-IMATI Ge - 2016
% * Author: Silvia Biasotti
% * All rights reserved
% ********************************************

%This function computes the shape index of a triangle mesh (contained in name) and saves it in the file output
%Note: remember to add the link to the paths of the toolbox_graph tool, currently in the two subfolders toolbox_graph and toolbox_graph/toolbox/

function [SI] = ShapeIndex(name,output)
options.name = name;
[vertex,faces] = read_mesh(options.name);
options.curvature_smoothing = 10;
options.verb = 0;
[Umin,Umax,Cmin,Cmax,Cmean,Cgauss,Normal] = compute_curvature(vertex,faces,options);
SI=2/pi*(arctan((Umin+Umax)/(Umin-Umax)));
save(output,'-ascii','SI');
