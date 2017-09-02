longest :: [Char] -> [Char] -> [Char]
longest a b = filter (`elem` a++b) ['a'..'z']