import Data.List

data Pessoa = Pessoa { nome :: String, idade :: Int, salario :: Float}

data Criterio = ByNome | ByIdade | BySalario deriving (Eq)

-- classifica lista de pessoa por critério
sortListPessoa :: [Pessoa] -> Criterio -> [Pessoa]
sortListPessoa xs c
    | c == ByNome  = sortBy (\p1 p2 -> compare (nome p1) (nome p2)) xs
    | c == ByIdade = sortBy (\p1 p2 -> compare (idade p1) (idade p2)) xs
    | otherwise    = sortBy (\p1 p2 -> compare (salario p1) (salario p2)) xs


instance Show Pessoa where
    show p =  nome p ++ " tem " ++ (show $ idade p) ++ " anos e ganha de salario " ++ (show $ salario p)

pessoas = [ Pessoa "Joao" 25 2000, Pessoa "Ana" 20 2500, Pessoa "Alyson" 22 2200]