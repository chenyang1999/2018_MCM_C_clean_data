%% ������ӱ���е�����
% ���ڴ����µ��ӱ�������ݵĽű�:
%
%    ������: /Users/Macbook/Desktop/MCMcoding/2018_MCMProblemC_DATA/ACS2010~2016/clean.xlsx
%    ������: Sheet1
%
% Ҫ��չ�����Թ�����ѡ�����ݻ��������ӱ��ʹ�ã������ɺ���������ű���

% �� MATLAB �Զ������� 2019/01/28 20:06:17

%% ��������
[~, ~, raw] = xlsread('/Users/Macbook/Desktop/MCMcoding/2018_MCMProblemC_DATA/ACS2010~2016/clean.xlsx','Sheet1');
raw = raw(2:end,[1,5:50,578,595:end]);

%% ������ֵԪ���滻Ϊ 4400.0
R = cellfun(@(x) (~isnumeric(x) && ~islogical(x)) || isnan(x),raw); % ���ҷ���ֵԪ��
raw(R) = {4400.0}; % �滻����ֵԪ��

%% �����������
clean1 = reshape([raw{:}],size(raw));

%% �����ʱ����
clearvars raw R;