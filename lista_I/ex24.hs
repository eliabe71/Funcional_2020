inseri x [] = []
inseri x u = 
	if x > head u  
		then head u :[] ++ inseri x (tail u)
	else x:[]++u
