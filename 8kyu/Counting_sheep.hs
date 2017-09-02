
countSheep :: [Bool] -> Int
countSheep = length . filter (==True)

-- the solutions learning from others
{-
法一： countSheep = length . filter id

法二：　countSheep = sum . map fromEnum
-}