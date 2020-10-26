data Mobile = Pendente Int | Barra Mobile Mobile deriving (Eq, Show)
auxiliarpeso :: Mobile -> Int
auxiliarpeso (Pendente x) = x
auxiliarpeso (Barra mob1 mob2) = (peso mob1) + (peso mob2) 

balanceado :: Mobile -> Bool 
balanceado Pendente x) = True
balanceado (Barra mob1 mob2) = if (peso mob1) == (peso mob2) && balanceado mob1 && balanceado mob2 then True else False

makeMobile :: [Int] -> Mobile
makeMobile [x] = Pendente x
makeMobile [x,y] = Barra (Pendente x) (Pendente y)
makeMobile xs = Barra (makeMobile (head (separaLista xs))) (makeMobile (last (separaLista xs)))
