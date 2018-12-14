function persDiagConversion(nameFile,nameFunc)

    %%%%%%%% Size Theory %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    %scanning sf file: cornerline (x,infty)-->cornerpoint (x,max(filtFunc))
    file=strcat(nameFile,'.pd');
    file2=strcat(nameFunc,'.f');
    B=load(file2);
    maxB=max(B);
    fid2=fopen(file);
    A=textscan(fid2,'%c%d%f%f','emptyValue',maxB);
    fclose(fid2);
    
    %converitng sf file
    S=size(A{3});
    MM=zeros(S(1),2);
    MM(:,1)=A{3};
    MM(:,2)=A{4};
    
    %writing converted sf file
    filePath=strcat(nameFile,'Converted.pd');
    save(filePath,'MM','-ascii');
    clear A; clear MM;
end