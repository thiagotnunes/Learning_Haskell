module Problem20
  where

  removeAt l i = (l !! i, take i l ++ drop (i+1) l)
