oco x xs = 
	if length xs == 0
		then 0
	else if head xs == x 
		then 1+ (oco x (tail xs))
	else (oco x (tail xs))
semrepe xs = [x | x <- xs ,oco x xs == 1]
