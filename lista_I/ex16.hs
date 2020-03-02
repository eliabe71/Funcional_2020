
aux x xs xc = 
	if length xs ==1 
		then head xs:[]
	else if head xs <   
menores x xs = 
	aux x xs []
