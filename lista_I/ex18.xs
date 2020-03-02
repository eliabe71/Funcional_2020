reverse' xs = 
	if length xs == 0
		then [] 
	else last xs:[]++ reverse' (init xs) 

