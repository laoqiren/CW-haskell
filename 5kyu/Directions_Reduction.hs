data Direction = North | East | West | South deriving (Eq,Show)

dirReduce :: [Direction] -> [Direction]
dirReduce = foldl foldFunc []

isMatch :: Direction -> Direction -> Bool
isMatch a b
    | a == North && b == South || a == South && b == North = True
    | a == East && b == West || a == West && b == East = True
    | otherwise = False

foldFunc :: [Direction] -> Direction -> [Direction]
foldFunc [] m = [m]
foldFunc acc m
    | isMatch (last acc) m = init acc
    | otherwise = acc ++ [m]

{-
法一：
dirReduce :: [Direction] -> [Direction]
dirReduce = foldr collapse []

collapse North (South:xs) = xs
collapse South (North:xs) = xs
collapse East (West:xs) = xs
collapse West (East:xs) = xs
collapse x xs = x:xs
-}