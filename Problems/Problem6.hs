module Problem6
	where

	isPalindrome :: (Eq a) => [a] -> Bool
	isPalindrome [] = True
	isPalindrome x = 
		let halfTake = (length x) `div` 2 
		    halfDrop = if (length x) `mod` 2 /= 0 then halfTake + 1 else halfTake
		in isPalindrome' (take halfTake x) (reverse (drop halfDrop x))

	isPalindrome' :: (Eq a) => [a] -> [a] -> Bool
	isPalindrome' [] [] = True
	isPalindrome' _ [] = False
	isPalindrome' [] _ = False
	isPalindrome' (x:xs) (y:ys)
		| x == y = isPalindrome' xs ys
		| otherwise = False

	isPalindrome'' :: (Eq a) => [a] -> Bool
	isPalindrome'' xs = xs == reverse xs
