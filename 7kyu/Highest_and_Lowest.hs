import Data.List
import Data.Char

highAndLow :: String -> String
highAndLow str = 
    let nums = map read (words str)::[Int]
    in show (maximum nums) ++ " " ++ show (minimum nums)