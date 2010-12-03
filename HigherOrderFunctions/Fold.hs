module Fold
	where

	sum' :: (Num a) => [a] -> a
	sum' x = foldl (\acc x -> acc + x) 0 x

	sum'' :: (Num a) => [a] -> a
	sum'' [] = 0
	sum'' (x:xs) = x + sum'' xs

	elem' :: (Eq a) => a -> [a] -> Bool
	elem' x [] = False
	elem' x xs = foldl (\acc y -> if y == x then True else acc) False xs

	map' :: (a -> b) -> [a] -> [b]
	map' f xs = foldr (\x acc -> f x : acc) [] xs

	map'' :: (a -> b) -> [a] -> [b]
	map'' f xs = foldl (\acc x -> acc ++ [f x]) [] xs
