module Problem10
	where

	encode :: (Eq a, Integral b) => [a] -> [(a,b)]
	encode [] = []
	encode (x:xs) = 
		count x xs 1

	count :: (Eq a, Integral b) => a -> [a] -> b -> [(a,b)]
	count x [] i = [(x,i)]
	count x (y:ys) i = 
		if x == y
			then count x ys (i+1)
			else [(x,i)] ++ count y ys 1
