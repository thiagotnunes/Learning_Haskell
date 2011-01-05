module Problem21
  where
  
  insertAt c [] _ = [c]
  insertAt c l i = take (i-1) l ++ [c] ++ drop (i-1) l
