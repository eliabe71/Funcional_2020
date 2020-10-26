data Arv a =No a (Arv a) (Arv a)
 			| Arvvazia
 			deriving (Show,Eq)
arv2 = No 2 (Arvvazia) (Arvvazia) 			
arv1 = No 1 (Arvvazia) arv2
inseri a Arvvazia = No a (Arvvazia) (Arvvazia) 
inseri a (No y esq dir) | y==a = (No y esq dir)
						| y < a = inseri a dir
						| a<y = inseri a esq  
-- busca:: Ord -> a-> Arv a -> Bool 
busca _ Arvvazia  = False
busca y (No x esq dir) | x == y = True
				       | x>y  = busca y esq
				       | x< y = busca y dir 

--foldTree :: (a->b) -> (b->b->b) -> Arv a -> b
foldTree f fx (No x esq dir)   = f (fx ( (No x esq dir)) )

node = foldTree (\x -> x )   ( \x y -> x+y ) 