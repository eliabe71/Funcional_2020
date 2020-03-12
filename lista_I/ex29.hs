auxUPPER xs xc xd s = 
	if s == ' '
		then ' '
	else if s == head xs 
		then head xc
	else if s == head xc 
		then head xc
	else if s == head xd 
		then head xd 
	else auxUPPER (tail xs) (tail xc) (tail xd) s
upper xs = 
	if length xs == 0
		then []
	else (auxUPPER ['a'..'z'] ['A'..'Z'] ['1'..'10'](head xs)):[]++ upper (tail xs)
