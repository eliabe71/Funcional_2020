auxUPPER_ xs xc xd s = 
	if s == ' '
		then ' '
	else if s == head xs 
		then head xc
	else if s == head xc 
		then head xc
	else if s == head xd 
		then head xd 
	else auxUPPER (tail xs) (tail xc) (tail xd) s
auxUPPER xs xc xd s = 
	if s == ' '
		then ' '
	else if s == head xc 
		then head xs
	else if s == head xc 
		then head xs
	else if s == head xd 
		then head xd 
	else auxUPPER (tail xs) (tail xc) (tail xd) s
aux2 :: [Char]-> Bool ->[Char]
aux2 [] b = []
aux2 xs b =
	if (head xs) == ' ' && (head(tail xs)) == ' '
		then head xs:[]++ aux2 (tail xs) (False)
	else if (head xs) == ' ' && head(tail xs) /= ' ' 
		then head xs:auxUPPER_(['a'..'z'] ['A'..'Z'] ['0'..'9'] (head(tail xs))):[]++ aux2 tail(tail xs) (True)
	else if b
		then (auxUPPER_['a'..'z'] ['A'..'Z'] ['0'..'9'] (head xs)):[]++ aux (tail xs) (False)
	else auxUPPER(['a'..'z'] ['A'..'Z'] ['0'..'9'] (head xs)):[]++aux (tail xs) (False) 
titulo xs =
	aux2 xs True
