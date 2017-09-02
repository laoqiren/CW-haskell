import Data.Char

isIsogram :: String -> Bool
isIsogram [] = True
isIsogram str
    | x `elem` xs = False
    | otherwise = isIsogram xs
    where (x:xs) = map toLower str

{-
法一：
isIsogram :: String -> Bool
isIsogram str = null $ map toLower str \\ ['a'..'z']

法二：
isIsogram = unique . map toLower
  where unique []     = True
        unique (x:xs) = x `notElem` xs && unique xs

法三：
import Data.Char
import qualified Data.Set as S

isIsogram :: String -> Bool
isIsogram s = length l == (length $ S.elems $ S.fromList l)
  where l = map toLower s 　--利用Set性质
-}