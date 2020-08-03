aux x [] = 0
aux x xs = 
	if x >(head xs)
		then 1 + aux x (tail xs) 
	else aux x (tail xs)
	
menores xs n =
	if n<=0 
		then []
	else if length xs ==0 
		then []
	else if length xs ==1 && n==0
		then head xs:[]
	else if aux (head xs) (tail xs) > n-1 
		then []++menores ([y | y<-xs, y /= head xs]) n
	else head xs:[]++ menores([y | y<-xs, y /= head xs]) (n-1)
