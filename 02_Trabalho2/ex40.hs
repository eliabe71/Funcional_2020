parteaux [] = []
parteaux xs = 
  if length xs ==1 
    then [[head xs]]
  else if length xs == 2
    then [xs]++ parteaux [head xs ]
  else [xs,[head xs, last xs]]++ parteaux (init xs)
partes [] = [[]]
partes xs = parteaux xs ++ partes (tail xs)