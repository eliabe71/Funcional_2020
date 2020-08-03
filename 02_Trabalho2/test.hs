 hex = [(10,"A"),(11,"B"),(12, "C"),(13, "D"),(14,"E"), (15, "F")]
 aux n xs = 
   if n == fst(head xs)
	 then snd(head xs)
   else aux n (tail xs)

base n b = 
   if n< b 
   	 then show n
   else if b == 16
   	  if mod n b >=10 
   	  	then base (verify( n b (round (n/b))) 16 ++ aux (mod n b) hex 
	  else base (verify( n b (round (n/b)))) 16  ++ show ( mod n b)
	else base (verify (n b (round (n/b)))) b  ++ show(mod n b)

verif :: Int->Int->Int->Int 
verif x y z = 
   if z*y > x
    then verif x y (z-1)
   else z