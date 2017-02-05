clear all
close all
clc

N = 30; % number of series elements
set(0, 'RecursionLimit', N*N)
x = 2; 

keep_val = zeros(N, 1);

for i = 1:N

    tic
    keep_val(i) = iter_sqrt(x, i);

    fprintf('[%d] Value: %3.5f. (%3.2fs)\n', i, keep_val(i), toc)
end

figure
hax = axes;
plot(keep_val, 'Color', [0.3 0.3 0.3], 'Linewidth', 2.1)
ylim([0, 3.4])
xlabel('Number of N', 'Fontsize', 16, 'Fontweight', 'bold')
ylabel('Sum of series', 'Fontsize', 16, 'Fontweight', 'bold')
hold on;
line(get(hax,'XLim'), [3 3], 'Color',[0.5 0.5 0.5], 'Linestyle', '--', ...
    'Linewidth', 1.9)
set(gca, 'FontSize', 16)
saveas(gcf, 'ramanujan.jpg')
