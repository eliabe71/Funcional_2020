divide 0 xs = [[],xs]
divide n xs = [take n xs, drop (n) xs]
