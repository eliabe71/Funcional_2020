quicksort :: Ord a => [a] -> [a]
quicksort []     = []
quicksort (p:xs) = (quicksort lesser) ++ [p] ++ (quicksort greater)
    where
        lesser  = filter (< p) xs
        greater = filter (>= p) xs
hammingaux  x = [x*y | y<- [2,3,5]]
todo [] = []
todo xs = hammingaux(head xs ) ++ todo (tail xs)
vet xs x =   
	if x ==0 
		then xs++ todo(xs) ++ vet ((todo(xs))) 1
	else (todo(xs)) ++ [y | y <- (vet (tail (todo xs )) 1), not (elem y  (todo(xs))) ]

hamming x = take x ((vet [1] 0))