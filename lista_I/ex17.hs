alter 0 = []
alter n =  reverse$(n):(-n):[] ++ alter (n-1)
