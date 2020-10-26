data Trem a = Vagao a ( Trem a ) | Vazio deriving (Show, Eq)

type Quantidade = Int

type Peso = Int

data Carga = SemCarga | Passageiro Quantidade | Mercadoria Peso deriving (Show,Eq)

numPassageiros :: Trem Carga -> Int
numPassageiros (Vazio)                      = 0
numPassageiros (Vagao (SemCarga) (t1))      = 0 + numPassageiros t1
numPassageiros (Vagao (Passageiro x) (t1))  = x + numPassageiros t1
numPassageiros (Vagao (Mercadoria y) (t1))  = 0 + numPassageiros t1
