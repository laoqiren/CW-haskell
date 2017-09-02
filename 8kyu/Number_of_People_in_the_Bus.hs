number :: [(Int,Int)] -> Int
number = foldl (\acc (inN,outN) -> inN - outN + acc) 0

-- the solutions learning from others
{-
法一：　number = sum . map (uncurry (-))

法二：　number xs = sum [ fst x - snd x | x <- xs]
-}