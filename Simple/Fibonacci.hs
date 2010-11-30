module Fibonacci
	where
	
	f x = case x of 0 -> 0
			1 -> 1
			_ -> f (x-2) + f(x-1)
