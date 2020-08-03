quick [] = []
quick (x:xs) =
  let menores = quick [a | a <- xs, a <= x]
      maiores = quick [a | a <- xs, a > x]
  in  menores ++ [x] ++ maiores