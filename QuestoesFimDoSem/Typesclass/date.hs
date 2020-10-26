data Mes = Janeiro 
            | Fevereiro 
            | Marco 
            | Abril 
            | Maio 
            | Junho 
            | Julho 
            | Agosto 
            | Setembro 
            | Outubro
            | Novembro
            | Dezembro
            deriving (Show, Ord, Eq, Enum) 

data Date = MkDate { dia :: Int 
            , mes :: Mes    
            , ano :: Int   
            }

instance Show Date where
    show (MkDate d m a) = show d ++ " de " ++ show m ++ " de " ++ show a

instance Eq Date where
    (==) (MkDate d1 m1 a1) (MkDate d2 m2 a2)  = d1 == d1 && m1 == m2 && a1 == a2

instance Ord Date where
    (<) (MkDate d1 m1 a1) (MkDate d2 m2 a2)
        | a1 < a2 = True
        | a1 == a2 = if m1 < m2 then True else if m1 > m2 then False else d1 < d2
        | otherwise = False

    (<=) d1 d2 = if d1 < d2 || d1 == d2 then True else False