import Data.Char

digpow :: Int -> Int -> Int
digpow n p
    | getSum `mod` n == 0 = getSum `div` n
    | otherwise = -1
    where getSum = sum $ foldl (\acc x -> x^(p + length acc):acc) [] (map digitToInt $ show n)


{-
法一：

import Data.Char

digpow :: Integer -> Integer -> Integer
digpow n p | sp `mod` n == 0  = sp `div` n
           | otherwise        = -1
  where sp = fromIntegral $ sum $ zipWith (^) (map digitToInt $ show n) [p..]
-}
