clear all
close all
clc

N = 10; % number of series elements
set(0, 'RecursionLimit', N*N)
x = 2; 

tic
val = iter_sqrt(x, N);

disp('____________')
fprintf('Value: %3.5f.\n', val)
fprintf('Time: %3.5f seconds.\n', toc)