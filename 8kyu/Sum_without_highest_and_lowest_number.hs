import Data.List

-- my ugly code
sumArray :: Maybe [Int] -> Int
sumArray (Just xs@(_:_:_)) = 
    let (Just firstMax) = elemIndex (maximum xs) xs
        withoutFirstMax = getSplit firstMax xs
        (Just firstMin) = elemIndex (minimum xs) withoutFirstMax
        withoutFirstMin = getSplit firstMin withoutFirstMax
    in sum withoutFirstMin
sumArray _ = 0

getSplit :: Int -> [a] -> [a]
getSplit n xs =
    let (front,back) = splitAt n xs
    in front ++ tail back

-- the solutions learning from others
{-
法一：　
sumArray :: Maybe [Int] -> Int
sumArray (Just xs@(_:_:_)) = sum xs - maximum xs - minimum xs
sumArray _ = 0

法二：

sumArray (Just xs@(_:_:_)) = sum . tail . init $ sort xs 
sumArray _ = 0

-}