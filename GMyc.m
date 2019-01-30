load('data.mat');
for i=1:3472 
    if(yc(i,2)==2010) 
        if (yc(i+7,2)==2017)
        G=GM(yc,i)
            for j=1:3 
                yc=[yc(1:i+6+j,:) ; [yc(i+5+j,1), 2017+j, G(j+8)]; yc(i+6+j+1:end,:)];
                'yes'
            end
        end
    end
end