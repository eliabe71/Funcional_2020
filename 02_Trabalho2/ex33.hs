aux n y = 
	if n ==2 
		then True
	else if n `mod` y /= 0 && y < n
		then aux n (y+1)
	else if n `mod` y == 0 && y < n
		then False
	else True
primo' n= aux n 2
