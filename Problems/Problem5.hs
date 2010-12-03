module Problem5
	where

	reverse' :: [a] -> [a]
	reverse' [] = []
	reverse' (x:xs) = reverse xs ++ [x]
