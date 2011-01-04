module Problem18
  where

  slice :: [Char] -> Int -> Int -> [Char]
  slice l f s = slice' l f s 1
  
  slice' :: [Char] -> Int -> Int -> Int -> [Char]
  slice' [] _ _ _ = []
  slice' (x:xs) f s c = 
    if c >= f && c <= s
      then x : slice' xs f s (c + 1)
      else slice' xs f s (c + 1)

  slice'' :: [Char] -> Int -> Int -> [Char]
  slice'' l f s = drop (f-1) $ take s l
