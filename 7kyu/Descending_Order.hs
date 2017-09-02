import Data.Char
import Data.List

descendingOrder :: Integer -> Integer
descendingOrder = read . map intToDigit . reverse . sort . map digitToInt . show

{-
改进: descendingOrder = read . reverse . sort . show

or: descendingOrder = read . sortBy (flip compare) . show
-}