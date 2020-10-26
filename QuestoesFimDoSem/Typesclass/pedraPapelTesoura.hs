data Gesto = Pedra | Papel | Tesoura deriving (Eq)


ganhou :: (Gesto, Gesto) -> Bool
ganhou (x,y)
    | x == Pedra   = if y == Tesoura then True else False
    | x == Papel   = if y == Pedra   then True else False
    | x == Tesoura = if y == Papel   then True else False


pegaIndices :: Int -> Int -> [Int] -> [Int]
pegaIndices index a []     = []
pegaIndices index a (x:xs) = if a == x then [index] ++ pegaIndices (index+1) a xs else pegaIndices (index+1) a xs

a = [(Papel, Pedra)]


ganhadores :: [(Gesto,Gesto)] -> [Int]
ganhadores [] = []
ganhadores xs = pegaIndices 0 1 [ if ganhou x then 1 else -1 | x <- xs]

fr = ganhadores a
