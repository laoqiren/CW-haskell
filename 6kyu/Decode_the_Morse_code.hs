import Codewars.Kata.DecodeMorse.Preload (morseCodes)

import Data.Map.Strict ((!))

decodeMorse :: String -> String
decodeMorse str = decodeMorse' $ beautifyStr str
        

beautifyStr :: String -> String
beautifyStr = dropWhile (==' ') . reverse . dropWhile (==' ') . reverse

decodeMorse' :: String -> String
decodeMorse' [] = []
decodeMorse' str
    | take 3 str == "   " = 
        let chStr = takeWhile (/= ' ') (drop 3 str)
            ch = morseCodes ! chStr
        in " " ++ ch ++ decodeMorse' (drop (length chStr + 3) str)
    | take 1 str == " " = decodeMorse' $ drop 1 str
    | otherwise = 
        let chStr = takeWhile (/= ' ') str
            ch = morseCodes ! chStr
        in ch ++ decodeMorse' (drop (length chStr) str)


{-
法一：
import Data.List.Split (splitOn)
import Data.Map.Strict ((!))

decodeMorse :: String -> String
decodeMorse = unwords . filter (not . null) . map (concatMap (morseCodes!) . words) . splitOn "   "
-}