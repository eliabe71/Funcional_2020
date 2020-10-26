--palind x = show x == reverse (show x)

crivo [] = []
crivo (x:xs) = x:crivo (filter (\y -> mod y x /= 0) xs)
--li x y= (x==y)  

primo= crivo [2..]

--primosPalind =  [x |x <- primo , palind x ]

--gemeos [1] = []
gemeosAux (x:y:xs) = if x+2 == y then [(x,y)]++ gemeosAux(y:xs) else gemeosAux(y:xs) 

gemeos = gemeosAux primo