% 姿勢，軌道を状態変数(変数７個？)に持つGPR
clc
clear
close all
dir = pwd;
addpath(strcat(dir, '/simple_plate'))

% kernel parameters
tau = log(1);
sigma = log(1);
eta = log(1);
params = [tau sigma eta];

% 学習データ読み込み
% (平板のモデルに対して，とりあえず乱数を足して作った１１個のデータ)
sample = readmatrix('simple_plate_0.csv', NumHeaderLines=1);
data = zeros(length(sample(:,1)), length(sample(1, :)), 11); % 事前割り当て
for i = 0:1:10
    filename = strcat('simple_plate_', num2str(i), '.csv');
    data(:,:,i+1) = readmatrix(filename, NumHeaderLines=1);
end


























