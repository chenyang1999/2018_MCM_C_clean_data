for i=8:514
    a=[];
    a=df(:,i);
    a=table2array(a);
    if  mean2(a)<=0.5
        df(:,i)=[];
    end
end