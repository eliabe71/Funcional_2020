aux  x y = 
	if x >y
		then x 
	else y
maior xs =
	if (length xs == 1) 
		then head xs 
	else aux (head xs) (maior (tail xs))
