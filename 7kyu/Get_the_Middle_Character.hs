getMiddle :: String -> String
getMiddle str
    | even strLength = 
        let (_,latter) = splitAt (strLength `div` 2 - 1) str
        in take 2 latter
    | otherwise =
        let (_,latter) = splitAt (strLength `div` 2) str
        in [head latter]
    where strLength = length str


{-
法一： 
getMiddle "" = ""
getMiddle [a] = [a]
getMiddle [a,b] = [a,b]
getMiddle (_:x) = getMiddle (init x)

法二：
getMiddle s = take n $ drop d s
    where l = length s
          d = div (l - 1) 2
          n = l - 2*d
-}