palind x = show x == reverse (show x)
crivo [] = []
crivo (x:xs) = x:crivo (filter (\y -> mod y x /= 0) xs)

primo= crivo [2..]
primosPalind =  [(x,y) |(x,y) <- primo , palind x ]