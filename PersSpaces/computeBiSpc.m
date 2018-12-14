function computeBiSpc(nameModel,numPts,fileproperty1,fileproperty2)

system(['./Ply2Off ',strcat(nameModel,' > temp.off')]);
system(['wine off2sk.exe ',strcat('temp.off')]);

% Open OFF files and read vetices number
fid1=fopen(strcat('temp.off'),'r');
fscanf(fid1,'%s',1);
numVer=fscanf(fid1,'%d',1);
fclose(fid1);

%Fix step in the computation of persistence spaces
n=floor(log(numVer));

%Open textured filtering functions
F1=load(fileproperty1);
F2=load(fileproperty2);

FF1=(max(F1)-F1)/max(F1);
FF2=(max(F2)-F2)/max(F2);

%Compute tha maximum absolute value for the two components; needed later
MaxF=max([max(abs(FF1)) max(abs(FF2))]);

%Fix steps
step_l=(0.9-0.1)/(n-1); %%%%%%%%%%%%%%%5
step_b=2*MaxF/(n-1);

%%% Compute persistence space for 2-dimensional function %%%

ss=(n-1)*(n-1)*numPts; %allocate space for the persistence space, given numPts
X=zeros(ss,4); %coordinates for each points in the persistence
pers=zeros(ss,1); %persistence of each point in the persistence space

count=0;

for l1=0.1:step_l:0.9
    for b1=-MaxF:step_b:MaxF 
        FFF1=(FF1-b1)/l1;
        FFF2=(FF2+b1)/(1-l1);
        FFF=min(l1,1-l1)*max(FFF1,FFF2); %#ok<NASGU>
        save('filtFunc.f','FFF','-ascii');
        
        % for triangle mesh: compute 0th persistent homology for m=(l1,1-l1) and b=(b1,-b1)
        system(['wine persKernel.exe temp.size filtFunc.f persDiag.pd']);
        persDiagConversion('persDiag','filtFunc');
        hom0=load('persDiagConverted.pd');
        homAux=hom0(:,2)-hom0(:,1);
        hom0=horzcat(hom0,homAux); %#ok<AGROW>
        hom0=sortrows(hom0,-3);
        sH=size(hom0,1);
        
        if numPts<sH
            hom0(numPts+1:sH,:)=[];
        end
        
        %map persistent points to \R^4
        if size(hom0,1)>0
            count=count+1;
            l=[l1 1-l1];
            b=[b1 -b1];
            [Pu,Pv,locPers]=changeCoord(hom0,l,b);
            s=size(locPers,1);
            pers(count:count+s-1)=locPers;
            Puv=horzcat(Pu,Pv);
            X(count:count+s-1,:)=Puv;
            count=count+s-1;
        end
        
        %clear options
        clear FFF1; clear FFF2; clear FFF; 
        clear Pu; clear Pv; clear Puv; 
        clear hom0; clear homAux; clear locPers;
        delete('filtFunc.f','persDiag.pd','persDiagConverted.pd');
    end
end

delete('temp.off','temp.size');
clear FF1; clear FF2;

%remove empty cells from pers and X 
pers(count+1:ss,:)=[];
X(count+1:ss,:)=[]; %#ok<NASGU>

%normalize persistence
pers=pers/max(pers); %#ok<NASGU>
          
%save files
persPath=strcat('pers_',nameModel,'.pers');

save(persPath,'pers','-ascii');

spacePath=strcat('persSpc_',nameModel,'.space');

save(spacePath,'X','-ascii');

clear all;
end
