%���� ÿһ�� ��Ʒ�������к� �˿��ղ����ݱ仯�������
xgx=[]
TotalDrugReportsCounty=df.TotalDrugReportsCounty
% TotalDrugReportsCounty=table2(TotalDrugReportsCounty)
for i=8:514
    b=[];
    b=df(:,i);
    b=table2array(b);
    for j=8:514
    a=[];
    a=df(:,j);
    a=table2array(a);
    xgx(i-7,j-7)=corr2(b,a);
    end
end
%     