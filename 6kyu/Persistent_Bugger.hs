import Data.Char

-- timeout
persistence :: Int -> Int
persistence num = getTime num 0
    where getTime n time
            | n `elem` [1..9] = time
            | otherwise = getTime (getProduct n) (time + 1)

getProduct :: Int -> Int
getProduct = product . map digitToInt . show

{-
法一：　
persistence :: Int -> Int
persistence n = if n < 10 then 0 else 1 + persistence (product $ map digitToInt $ show n)
-}