aux 1 y = True
aux n y = 
	if y*y == n 
		then True
	else if y*y /= n && y<n
		then aux n (y+1)
	else False
perfeito n = aux n 1
	
