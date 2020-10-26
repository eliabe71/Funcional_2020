data Arvore a = Folha a | Ramo (Arvore a) (Arvore a) deriving (Show)


foldTree :: (a->b) -> (b->b->b) -> Arvore a -> b
foldTree f1 f2 (Folha a ) = f1 a
foldTree f1 f2 (Ramo (left) (rigth)) = f2 (foldTree f1 f2 (left)) (foldTree f1 f2 (rigth))

