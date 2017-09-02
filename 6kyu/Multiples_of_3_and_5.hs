import Data.Set
solution :: Integer -> Integer
solution num = sum $ toList $ fromList ([3,6..num-1] ++ [5,10..num-1])

{-
改进: 

import Data.List

solution :: Integer -> Integer
solution n = sum $ nub $ [3,6..n-1] ++ [5,10..n-1]

或者:
solution :: Integer -> Integer
solution number = sum [n | n <- [1..number - 1], n `mod` 3 == 0 || n `mod` 5 == 0]
-}