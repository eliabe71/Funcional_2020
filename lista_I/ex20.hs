intercala a b = 
	if length a >0 && length b>0
		then head a:head b:[]++ intercala (tail a ) (tail b)
	else if length a == 0  
		then []++b
	else []++a
	
