aux 0 m v = []
aux x m v = (m+v):[]++ aux (x-1) m (v+1)
sequencia n m = aux n m 0
