module Problem16
  where

  dropEvery x y = dropEvery' x y 1
  
  dropEvery' [] _ _ = []
  dropEvery' (x:xs) y c =
    if y == c
      then dropEvery' xs y 1
      else x : dropEvery' xs y (c+1)
