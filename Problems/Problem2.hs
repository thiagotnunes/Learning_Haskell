module Problem2
	where

	myButLast :: [a] -> a
	myButLast [] = error "Cannot get but last from empty list"
	myButLast [x] = error "Cannot get but last from list with only one element"
	myButLast (x:[y]) = x
	myButLast (_:xs) = myButLast xs
