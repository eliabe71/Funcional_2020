troc [] = []
troc [x] = [x]
troc (x:y:xs) = 
  if x>y 
	 then y:troc(x:xs)
  else x:troc(y:xs)

bubbleaux [] _ = []
bubbleaux xs 0 = xs   
bubbleaux xs x = bubbleaux (troc(xs)) (x-1)

bubble xs = bubbleaux (xs) (length xs)