kolakoski = 1:2:2: concat [replicate x y | (x,y) <- zip  l_tam_blocos l_blocos]
    where 
    l_blocos = cycle [1,2]
    l_tam_blocos = tail (tail kolakoski) 