module Replicate
	where

	replicate' :: Int -> Int -> [Int]
	replicate' x 1 = [x]
	replicate' x y = x : replicate' x (y-1)
		
