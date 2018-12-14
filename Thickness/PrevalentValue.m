function [ value ] = PrevalentValue(namefile,percentage,step,start)
%print the average value (x coordinates) of the elements of an histogram whose value is
%higher than the percentage in input. It needs the step of the bins and the
%starting value that correspondes to the first bin.

A=load(namefile);
value=mean(find(A>((percentage/100)*max(A))))*step+start;
end

