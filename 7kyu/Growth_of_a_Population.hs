nbYear :: Int -> Double -> Int -> Int -> Int
nbYear p0 percent aug p = getYear p0 percent aug p 0

getYear :: Int -> Double -> Int -> Int -> Int -> Int
getYear p0 percent aug p year
    | p0 >= p = year
    | otherwise = getYear (floor (fromIntegral p0 * (1 + percent * 0.01)) + aug) percent aug p year+1

{-)
法一：
nbYear p0 percent aug p
  = length
  $ takeWhile (< p)
  $ iterate ((+ aug ) . floor . (* (1+percent/100)) . fromIntegral) p0
-}