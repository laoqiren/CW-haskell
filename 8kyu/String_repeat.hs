repeatStr :: Int -> String -> String
repeatStr 0 _ = []
repeatStr n str = str ++ repeatStr (n - 1) str

-- the solutions learning from others
{-
法一：　repeatStr n = concat . repeatStr n

法二:  repeatStr n str = [1..n] >> str

法三:  repeatStr n = concat . take n . repeat

-}