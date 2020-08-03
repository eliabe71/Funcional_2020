pertence n xs = 
	if length xs <1 
		then False
	else if head xs == n 
		then True
	else pertence n (tail xs)
