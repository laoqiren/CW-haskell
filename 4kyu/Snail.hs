import Data.List

snail :: [[Int]] -> [Int]
snail [] = []
snail x = head x ++ snail (reverse $ transpose $ tail x)

-- snail (xs:xss) = xs ++ (snail . reverse . transpose) xss

{-
* 取首行
* 去掉首行，逆时针旋转矩阵
* 回到第一步
-}