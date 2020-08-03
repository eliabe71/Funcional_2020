hex = [(10,"A"),(11,"B"),(12, "C"),(13, "D"),(14,"E"), (15, "F")]

aux n xs = if n == fst(head xs) then (snd(head xs)) else aux n (tail xs)

base :: Int -> Int -> [Char]
base n 1 = show n 
base n b = 
    if n< b || b >37
      then show n
    else 
      (if b == 16 then
          (if mod n b >=10 
             then base (div n b) 16 ++ aux (mod n b) hex 
           else base (div n b) 16  ++ show ( mod n b))
       else base (div n b) b  ++ show(mod n b))