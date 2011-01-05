module Problem19
  where

  rotate l n =
    if n < 0
      then drop ((length l) + n) l ++ take ((length l) + n) l
      else drop n l ++ take n l
