data LinkedList a = Vazia | No a (LinkedList a) deriving (Eq, Show)
fromList :: [a] -> LinkedList a
fromList []     = Vazia
fromList (x:xs) = No x (fromList xs)

toList :: LinkedList a -> [a]
toList Vazia = []
toList (No x (y)) = x:toList y

append :: a -> LinkedList a -> LinkedList a
append x Vazia = No x (Vazia)
append x (No y (z)) = No y (append x z)

reverseLinkedList :: LinkedList a -> LinkedList a
reverseLinkedList Vazia = Vazia
reverseLinkedList (No x (y)) = append x (reverseLinkedList y)