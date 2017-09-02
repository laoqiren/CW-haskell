tribonacci :: Num a => (a, a, a) -> Int -> [a]
tribonacci (a, b, c) n = take n $ fibonacci (a,b,c)

fibonacci :: Num a => (a,a,a) -> [a]
fibonacci (a,b,c) = [a,b,c] ++ fibonacci ((a+b+c),(a+2*b+2*c),(2*a+3*b+4*c))

{-

tribonacci :: Num a => (a, a, a) -> Int -> [a]
tribonacci _ n | n < 1 = []
tribonacci (a, b, c) n = a : tribonacci (b, c, a+b+c) (n-1)
-}