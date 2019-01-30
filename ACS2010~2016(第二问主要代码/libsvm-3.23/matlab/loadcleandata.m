%% 导入电子表格中的数据
% 用于从以下电子表格导入数据的脚本:
%
%    工作簿: /Users/Macbook/Desktop/MCMcoding/2018_MCMProblemC_DATA/ACS2010~2016/clean.xlsx
%    工作表: Sheet1
%
% 要扩展代码以供其他选定数据或其他电子表格使用，请生成函数来代替脚本。

% 由 MATLAB 自动生成于 2019/01/28 20:06:17

%% 导入数据
[~, ~, raw] = xlsread('/Users/Macbook/Desktop/MCMcoding/2018_MCMProblemC_DATA/ACS2010~2016/clean.xlsx','Sheet1');
raw = raw(2:end,[1,5:50,578,595:end]);

%% 将非数值元胞替换为 4400.0
R = cellfun(@(x) (~isnumeric(x) && ~islogical(x)) || isnan(x),raw); % 查找非数值元胞
raw(R) = {4400.0}; % 替换非数值元胞

%% 创建输出变量
clean1 = reshape([raw{:}],size(raw));

%% 清除临时变量
clearvars raw R;