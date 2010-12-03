module Problem1
	where

	myLast :: [a] -> a
	myLast [] = error "Cannot get myLast from empty list"
	myLast [x] = x
	myLast (_:xs) = myLast xs
