subconjuntos [] = [[]]
subconjuntos (x:xs) = sub ++ [ x:y | y <- sub]
    where 
    sub = subconjuntos xs

qSort [] = []
qSort (x:xs) = qSort (filter (<=x) xs) ++ [x] ++ qSort (filter (>x) xs)


splits xs = [(x,y) | x  <- sub, y <- sub,  qSort (x ++ y)  == qSort xs] ++  [(y,x) | x  <- sub, y <- sub, qSort (x ++ y)  == qSort xs]  
    where
    sub = subconjuntos xs

mesmoValor (x,y) = if sum x == sum y then True else False
eqsplits xs = filter (mesmoValor) [(x,y) | (x,y) <- splits xs]