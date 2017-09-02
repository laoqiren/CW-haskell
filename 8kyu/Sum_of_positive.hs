positiveSum :: [Int] -> Int
positiveSum = foldl (\acc x -> acc + x) 0 . filter (>0)

-- the solutions learning from others
{-
法一: positiveSum = sum . filter (>0)

法二：positiveSum numbers = sum [a | a <- numbers, a > 0]

法三: positvieSum x:xs = if x < 0 then positiveSum xs else x + positiveSum xs
-}