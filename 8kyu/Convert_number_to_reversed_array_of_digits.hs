digitize :: Int -> [Int]
digitize n
    | n < 10 = [n]
    | otherwise = n `rem` 10 : digitize (n `div` 10)

-- the solutions learning from others
{-
法一：　digitize = reverse . map digitToInt . show
-}