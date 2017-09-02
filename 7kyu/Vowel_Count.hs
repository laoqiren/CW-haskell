getCount :: String -> Int
getCount str = length [c | c <- str, c `elem` "aeiou"]

{-
法一：
getCount = length . filter (`elem` "aeiou")
-}