module SeparateNames
	where

	import Data.List
	import Data.Maybe

	words' :: [Char] -> [[Char]]
	words' name =
		reverse(separateWithSpaceDelimiter name [] (elemIndex ' ' name))

	separateWithSpaceDelimiter :: [Char] -> [[Char]] -> Maybe Int -> [[Char]]
	separateWithSpaceDelimiter name nameParts Nothing =
		name : nameParts
	separateWithSpaceDelimiter name nameParts index =
		let 	i = (fromMaybe 1 index)
			droppedName = drop (i+1) name
		in 	separateWithSpaceDelimiter droppedName ((take i name) : nameParts) (elemIndex ' ' droppedName)
