data ArvBin a = Empty | No a ( ArvBin a ) ( ArvBin a ) deriving (Show)

leafs :: Int -> ArvBin a -> [a]
leafs _ Empty = []
leafs 1  (No root (Empty)(Empty)) = [root]
leafs 0 _  = [] 
leafs level  (No root (Empty)(right))  = leafs (level -1) right
leafs level  (No root (left)(Empty))  = leafs (level -1) left  
leafs level  (No root (left)(right))  = leafs (level -1) left ++ leafs (level -1) right

smallerLevel :: Ord a => ArvBin a -> Int
smallerLevel (No root (Empty) (Empty) )= 1 
smallerLevel (No root (left) (Empty) ) = 1 + smallerLevel left
smallerLevel (No root (Empty) (right) )= 1  + smallerLevel right
smallerLevel (No root (left) (right))  = min(1+ smallerLevel left) (1+ smallerLevel right)

smallerLevelLeafs:: Ord a => ArvBin a -> [a]
smallerLevelLeafs tree = leafs (smallerLevel tree) tree 
