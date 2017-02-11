infSqrt x 1 = x
infSqrt x k = infSqrt ((k-1)*sqrt(1+x)) (k-1)

main = do ((\x -> print x) (infSqrt 1000000 1000000))
