contained x [] = False
contained x xs =  (x == head xs) || contained x (tail xs)  
intersec [] xc = []
intersec xs xc = 
	if contained (head xs) xc 
		then head xs:[]++intersec (tail xs ) xc
	else intersec (tail xs) xc
