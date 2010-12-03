module Problem3
	where

	elementAt :: [a] -> Int -> a
	elementAt x y 
		| index < 0 = error "Index out of bounds"
		| index > (length x)-1 = error "Index out of bounds"
		| otherwise = x !! (y-1)
		where index = (y-1)

	elementAt' :: [a] -> Int -> a
	elementAt' (x:xs) y
		| y == 1 = x
		| y > (length xs) + 1 = error "Index out of bounds"
		| y < 1 = error "Index out of bounds"
		| otherwise = elementAt' xs (y-1)

