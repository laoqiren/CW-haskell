import Data.List
import Data.Char

orderWeight :: [Char] -> [Char]
orderWeight = unwords . sortBy compareFunc . words


compareFunc :: [Char] -> [Char] -> Ordering
compareFunc a b = sum (map digitToInt a) `compare` sum (map digitToInt b)`mappend` (a `compare` b)