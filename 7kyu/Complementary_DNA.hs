data Base = A | T | C | G deriving(Show)
type DNA = [Base]

dnaStrand :: DNA -> DNA
dnaStrand = map findPair

findPair :: Base -> Base
findPair b = case b of A -> T
                       T -> A
                       C -> G
                       G -> C