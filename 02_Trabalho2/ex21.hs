menor x y = 
	if y<x
		then y
	else x
varios xs = 
	if length xs ==1
		then head xs
	else if length xs == 0 
		then -1
	else menor (head xs)(varios (tail xs))
contido xs n = 
	if length xs ==1 && head xs == n
		then True
	else if length xs ==1 && head xs /= n
		then False
	else if head xs == n
		then True
	else contido (tail xs ) n
menor2 c y x = 
	if x<y && x>c
		then x
	else if x>y && y>c
		then y
	else c 
menos xs xd n =
	if length n ==0 
		then xd 
	else if (contido xd (head xs))== True 
		then menos (tail xs) xd n
	else if  (contido xd (head xs))== False
		then (menor2 (last xd) (head xs)) 
menore xs n = menos xs (varios xs:xd)

	
	
