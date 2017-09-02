findEvenIndex :: [Int] -> Int
findEvenIndex xs
    | null result = -1
    | otherwise = head result
    where result = filter (\n -> sum (fst $ splitAt n xs) == sum (tail $ snd $ splitAt n xs)) [0..length xs - 1]

{-
法一：
import Control.Applicative ((<$>), (<*>))
import Data.List (elemIndex)
import Data.Maybe (fromMaybe)

findEvenIndex :: [Int] -> Int
findEvenIndex = fromMaybe (-1) . elemIndex True .
  (zipWith (==) <$> scanl1 (+) <*> scanr1 (+))

-}