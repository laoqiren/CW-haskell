isSquare :: Int -> Bool
isSquare n = let sr = round $ sqrt $ fromIntegral n in sr * sr == n