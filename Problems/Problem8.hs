module Problem8
	where
	
	compress :: (Eq a) => [a] -> [a]
	compress [] = []
	compress [x] = [x]
	compress (x:xs) = 
		if x == y
			then compress xs
			else x : compress xs
		where y = head xs	
