data BinaryTree a = Empty | Node a ( BinaryTree a ) ( BinaryTree a ) deriving (Show,Eq)

removeSheets:: BinaryTree a -> BinaryTree a
removeSheets Empty = Empty
removeSheets (Node a (Empty ) (Empty)) = Empty
removeSheets (Node a (left) (right)) = Node a (removeSheets left) (removeSheets right)
removeSheets (Node a (left) (Empty)) = Node a (removeSheets left) (Empty)
removeSheets (Node a (Empty) (right))= Node a (Empty) (removeSheets right)
