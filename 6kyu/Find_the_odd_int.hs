findOdd :: [Int] -> Int
findOdd all@(x:xs)
    | odd $ length $ filter (==x) all = x
    | otherwise = findOdd $ filter (/=x) all 

{-
一个牛逼的想法：
import Data.Bits (xor)

findOdd :: [Int] -> Int
findOdd = foldr1 xor -- 利用和自身异或结果为0

-}