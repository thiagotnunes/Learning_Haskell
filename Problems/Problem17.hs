module Problem17
  where

  split :: [Char] -> Int -> ([Char], [Char])
  split l i = splitAt i l

  split' l i = (take i l, drop i l)
