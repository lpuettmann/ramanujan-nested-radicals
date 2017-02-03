function val = iter_sqrt(x, N)

if N == 0
    val = 0;
else
    val = sqrt(1 + x*iter_sqrt(x + 1, N - 1));
end

end