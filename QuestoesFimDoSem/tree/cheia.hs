data ArvBin a = Vazia | No a ( ArvBin a ) ( ArvBin a ) deriving (Eq,Show)

cheia :: ArvBin a -> Bool
cheia Vazia = False
cheia (No node (Vazia) (Vazia)) = True
cheia (No node (esq) (Vazia)) = False
cheia (No node (Vazia) (dir)) = False
cheia (No node (esq) (dir)) = (cheia esq && cheia dir) 