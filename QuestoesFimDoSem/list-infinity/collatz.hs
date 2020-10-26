next:: Int->Int
next 1 = 0
next x = if odd x then (x*3+1) else (div x 2)

collatz:: Int->[Int]
collatz n = takeWhile (>=1) (iterate next n)