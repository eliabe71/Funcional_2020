fib n = 
	if n ==0  
		then 0
	else if n < 3
		then 1
	else fib(n-1) + fib(n-2) 
