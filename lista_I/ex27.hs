rotEsq n [] = []
rotEsq 0 xs = xs
rotEsq n xs = 
	if length xs == n
		then last xs:[]++(rotEsq (n-1) (init xs))
	else []++drop n xs ++rotEsq n (take n (xs))
		
