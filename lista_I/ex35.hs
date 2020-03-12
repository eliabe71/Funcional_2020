aux []=[]
aux xs = (head xs:[]):[]++aux (tail xs)
sding n = sum(map(read::String ->Int)$aux (show (n)))
