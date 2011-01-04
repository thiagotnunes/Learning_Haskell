module Problem9
	where

	pack :: (Eq a) => [a] -> [[a]]
	pack (x:xs) = reverse (packIt [x] xs [])

	packIt :: (Eq a) => [a] -> [a] -> [[a]] -> [[a]]
	packIt xs [] result = xs:result
	packIt xs (y:ys) result =
		if x == y
			then packIt (y:xs) ys result
			else packIt [y] ys (xs:result)
		where x = head xs

	pack' :: (Eq a) => [a] -> [[a]]
	pack' [] = []
	pack' (x:xs) = (x:takeWhile (==x) xs) : pack' (dropWhile (==x) xs)
