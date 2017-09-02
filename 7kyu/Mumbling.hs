import Data.List
import Data.Char

-- my solution

accum :: [Char] -> [Char]
accum = intercalate "-" . reverse . foldl (\acc c -> (toUpper c : replicate (length acc) (toLower c)) : acc) []

-- the solutions learning from others
{-
法一:
accum =  intercalate "-" . zipWith (\i c -> toUpper c : replicate (i-1) (toLower c)) [1..]

法二:
accum s = intercalate "-" [ (toUpper c) : replicate i (toLower c) | c<-s | i<-[0..] ]
-}