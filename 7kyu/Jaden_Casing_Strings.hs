import Data.Char
toJadenCase :: String -> String
toJadenCase = unwords . map (\word-> toUpper (head word):tail word) . words

{-
改进:

unwords . map (\(x:xs)-> toUpper x:xs) . words
-}