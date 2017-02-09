clear all
close all
clc


%% Recursive
N = 30; % number of series elements
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


%% Non-recursive, check out values of nested radicals

N = 30; % number of series elements
t = 1;
s = 1; % index for saving

for k = N:-1:2
    s = s + 1;
    t(s) = sqrt(k*t(s - 1) + 1);
end

figure
hax = axes;
plot(t, 'Color', [0.3 0.3 0.3], 'Linewidth', 2.1)
hold on;
line(get(hax,'XLim'), [3 3], 'Color',[0.5 0.5 0.5], 'Linestyle', '--', ...
    'Linewidth', 1.9)
xlabel('s (loop iteration)', 'Fontsize', 16, 'Fontweight', 'bold')
ylabel('t', 'Fontsize', 16, 'Fontweight', 'bold')
set(gca, 'FontSize', 16)
saveas(gcf, 'ramanujan_val.jpg')


