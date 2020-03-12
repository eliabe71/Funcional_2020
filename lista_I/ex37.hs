impar [] = []
impar xs = 
	if head xs `mod` 2 /=0 
		then head xs:[]++ impar (tail xs)
	else impar (tail xs)  
par [] = []
par xs = 
	if head xs `mod` 2 ==0 
		then head xs:[]++ par (tail xs)
	else par (tail xs)  
splints xc = 
	impar xc:par xc:[]
