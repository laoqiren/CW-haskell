import Data.Char

digitalRoot :: Integer -> Integer
digitalRoot num
    | num < 10 = num
    | otherwise = digitalRoot (sum $ map (toInteger.digitToInt) $ show num)

{-
法一： 
digitalRoot :: Integral a => a -> a
digitalRoot n = 1 + (n - 1) `rem` 9
-}