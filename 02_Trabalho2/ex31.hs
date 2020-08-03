aux xc 1 = head xc
aux  xc n = aux (tail xc) (n-1)
select [] xd = []
select xc [] =[]
select xc xd = aux xc ((head xd) +1):[]++select xc (tail xd)
