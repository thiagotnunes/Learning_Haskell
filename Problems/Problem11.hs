module Problem11
  ( Response(..)
  , encodeMultiple 
  ) where

  data Response = Single Char | Multiple Int Char deriving (Show)

  encodeMultiple :: [Char] -> [Response]
  encodeMultiple (x:xs) = encodeMultiple' xs x 1

  encodeMultiple' :: [Char] -> Char -> Int -> [Response]
  encodeMultiple' [] c t = [getResponse c t]
  encodeMultiple' (x:xs) c t = 
    if x == c
      then encodeMultiple' xs c (t+1)
      else getResponse c t : encodeMultiple' xs x 1

  getResponse :: Char -> Int -> Response
  getResponse c t = 
    if t == 1
      then Single c
      else Multiple t c
