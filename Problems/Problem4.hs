module Problem4
	where
	
	myLength :: [a] -> Int
	myLength x = length x

	myLength' :: [a] -> Int
	myLength' [] = 0
	myLength' (x:xs) = 1 + myLength' xs
