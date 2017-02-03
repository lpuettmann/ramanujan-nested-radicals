clear all
close all
clc

N = 30; % number of series elements
set(0, 'RecursionLimit', N*N)
x = 2; 

val = zeros(N, 1);

for i = 1:N

    tic
    val(i) = iter_sqrt(x, i);

    fprintf('[%d] Value: %3.5f. (%3.2fs)\n', i, val(i), toc)
end

figure
hax = axes;
plot(val, 'Color', [0.3 0.3 0.3], 'Linewidth', 1.9)
ylim([0, 3.4])
xlabel('Number of $$N$$', 'Interpreter', 'Latex', 'Fontsize', 16)
ylabel('Sum of series', 'Interpreter', 'Latex', 'Fontsize', 16)
hold on;
line(get(hax,'XLim'), [3 3], 'Color',[0.5 0.5 0.5], 'Linestyle', '--')