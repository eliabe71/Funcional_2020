oco x xs = 
	if length xs == 0
		then 0
	else if head xs == x 
		then 1+ (oco x (tail xs))
	else (oco x (tail xs))
compac [] = []
compac xs =
  if oco (head xs) (xs) >1
	then [[oco (head xs) (xs), head xs]] ++ compac ([y | y <-xs, y /= head xs ])
  else [[head xs]]++ compac ([y | y <-xs, y /= head xs])
