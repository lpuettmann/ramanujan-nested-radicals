function val = iter_sqrt(x, n)

if n == 0
    val = 0;
else
    val = sqrt(1 + x*iter_sqrt(x + 1, n - 1));
end