data MultiSet a = MultiSet [(a,Int)] deriving(Show)

makeMultiSet :: Ord a => [a] -> MultiSet a
makeMultiSet [] = (MultiSet [])
makeMultiSet (x:xs) =  insert x (makeMultiSet xs)

concat' :: Ord a => MultiSet a -> MultiSet a -> MultiSet a
concat' (MultiSet xs) (MultiSet ys) = MultiSet (xs ++ ys)

insert :: Ord a => a -> MultiSet a -> MultiSet a
insert x (MultiSet []) = (MultiSet [(x,1)])
insert x (MultiSet ((y,z):ys))
    | x == y = MultiSet (( y, z + 1):ys)
    | x < y = MultiSet ((x,1):((y,z):ys))
    | x > y = concat' ( MultiSet [(y,z)] )  (insert x (MultiSet ys))


delete :: Ord a => a -> Int -> MultiSet a -> MultiSet a
delete x y (MultiSet []) =  (MultiSet [])
delete x y (MultiSet ((w,z):zs))
    | x == w = if (z - y) <= 0 then (MultiSet zs) else (MultiSet ((w,(z-y)):zs))
    | x < w = (MultiSet ((w,z):zs))
    | x > w = concat' (MultiSet [(w,z)])  (delete x y (MultiSet zs))