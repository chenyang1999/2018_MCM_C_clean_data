for  i=2:3480
    if(fdy(i,1)==fdy(i-1,1))
        fdy(i,4)=fdy(i,3)-fdy(i-1,3);
        fdy(i,5)=fdy(i,3)-fdy(i-1,3);
        fdy(i,4)=fdy(i,4)/(fdy(i,2)-fdy(i-1,2));
        fdy(i,4)=fdy(i,4)/fdy(i-1,3);
        
    end
end