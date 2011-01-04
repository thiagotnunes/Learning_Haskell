module Problem12
  where

  data Response = Single Char | Multiple Int Char deriving (Show)

  decodeModified [] = []
  decodeModified (x:xs) = printResponse x ++ decodeModified xs

  printResponse (Single c) = [c]
  printResponse (Multiple 1 c) = [c]
  printResponse (Multiple t c) = c : printResponse (Multiple (t-1) c)
