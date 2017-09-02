import Data.Char

squareDigit :: Int -> Int
squareDigit num
    | num < 0 = negate $ getResult $ negate num
    | otherwise = getResult num
    where getResult = read . concatMap (show . (^2) . digitToInt) . show


{-
法一：
squareDigit n
  | n < 0 = negate (squareDigit (negate n))
  | otherwise = read (show n >>= (show . (^2) . digitToInt))　//运用了Monad
-}