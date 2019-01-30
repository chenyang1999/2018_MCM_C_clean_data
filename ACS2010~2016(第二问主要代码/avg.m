%ÑùÌõ²åÖµ
for j =1:6
    for i=2:3227
        if df.TotalDrugReportsCounty(i)==0
            bj=0;
            a=df.FIPS_Combined(i-1);
            b=df.FIPS_Combined(i+1);
            c=df.TotalDrugReportsCounty(i-1);
            d=df.TotalDrugReportsCounty(i+1);
            if(df.FIPS_Combined(i)==a)
                df.TotalDrugReportsCounty(i)=df.TotalDrugReportsCounty(i)+c;
                bj=bj+1;
            end;
            if(df.FIPS_Combined(i)==b)
                df.TotalDrugReportsCounty(i)=df.TotalDrugReportsCounty(i)+d;
                bj=bj+1;
            end;
            if(bj>0)
                df.TotalDrugReportsCounty(i)=df.TotalDrugReportsCounty(i)/bj;
            end
        end
    end
end


              
            