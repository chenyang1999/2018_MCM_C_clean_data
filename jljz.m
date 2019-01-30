for  i=1:1
        xh=dy(i,1)
        for j=1:461
            if(huanming(2,j)==xh)
                jlxh=j;
            end
        end
        dyjljz=jl(jlxh, :);
        dyjljz=[dyjljz; huanming ];
        dyjljz=sortrows(dyjljz.')
end

        