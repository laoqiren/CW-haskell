import Data.List

longestConsec :: [String] -> Int -> String
longestConsec strs k
    | k <= 0 || k > length strs || null strs= ""
    | k == 1 = maximumBy (\a b->compare (length a) (length b)) $ reverse strs
    | otherwise = maximumBy (\a b->compare (length a) (length b)) $ reverse $ allConcats strs k

allConcats :: [String] -> Int -> [String]
allConcats all@(x:xs) k
    | length all < k = []
    | otherwise = concat (take k all) : allConcats xs k