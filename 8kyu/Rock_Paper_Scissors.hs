rps :: String -> String -> String
rps p1 p2 | p1 == p2 = "Draw!"
          | (p1, p2) `elem` [("rock", "scissors"), ("paper", "rock"), ("scissors", "paper")] = "Player 1 won!"
          | otherwise = "Player 2 won!"

-- the solutions learning from others
{-
法一:

data RPS = Rock | Paper | Scissors deriving (Eq)

instance Ord RPS where
    Scissors <= Rock  = True
    Rock <= Paper     = True
    Paper <= Scissors = True
    _ <= _            = False

instance Read RPS where
    readsPrec _ rps = case rps of
                        "rock"     -> [(Rock, "")]
                        "paper"    -> [(Paper, "")]
                        "scissors" -> [(Scissors, "")]
                        _          -> []

rps :: String -> String -> String
rps p1 p2 = case compare (read p1::RPS) (read p2) of
                GT -> "Player 1 won!"
                LT -> "Player 2 won!"
                _  -> "Draw!"
-}