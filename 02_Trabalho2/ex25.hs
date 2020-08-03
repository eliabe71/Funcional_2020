isSorted xs =
	if length xs == 1
		then True
	else if head xs < head(tail xs)
		then isSorted (tail xs)
	else False
