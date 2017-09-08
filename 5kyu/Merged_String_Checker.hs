isMerge :: String -> String -> String -> Bool
isMerge all@(x:s) ally@(y:p1) allz@(z:p2)
    | x == y = isMerge s p1 allz
    | x == z = isMerge s ally p2
    | otherwise = False
isMerge s p1 p2 = s == p1 ++ p2　-- 可匹配到任意一个参数为[]的情况