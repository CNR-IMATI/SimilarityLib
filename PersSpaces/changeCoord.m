function [Pu,Pv,locPers]=changeCoord(hom,ll,bb)

len = size(hom);
Pu=zeros(size(hom,1),2); 
Pv=zeros(size(hom,1),2); 
locPers=zeros(size(hom,1),1);
%count=0;

for i=1:len(1)
        Ps=hom(i,1);
        Pt=hom(i,2);
        %count=count+1;
        %locPers(count,1)=hom(i,3);
        %Pu(count,:)=Ps*ll+bb;
        %Pv(count,:)=Pt*ll+bb;
        locPers(i,1)=hom(i,3);
        Pu(i,:)=Ps*ll+bb;
        Pv(i,:)=Pt*ll+bb;
end
