module Maximum
	where

	maximum' (x:[]) = x
	maximum' (x:xs) = 
			let y = head xs
			in if x > y 
				then maximum' (x:(tail xs))
				else maximum' (y:(tail xs))

	maximumP :: (Ord a) => [a] -> a  	
	maximumP [] = error "Maximum of empty list"
	maximumP [x] = x
	maximumP (x:xs)
		| x > maxTail = x
		| otherwise = maxTail
		where maxTail = maximumP xs
