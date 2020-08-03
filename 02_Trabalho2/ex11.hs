maioresQue x xs =
	if length xs == 0
		then []
	else if head xs > x 
		then head xs:[] ++ maioresQue x (tail xs)
	else maioresQue x (tail xs)
