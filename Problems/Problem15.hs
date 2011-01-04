module Problem15
  where

  repli :: [a] -> Int -> [a]
  repli [] _ = []
  repli (x:xs) t = printElement x t ++ repli xs t

  printElement :: a -> Int -> [a]
  printElement x 1 = [x]
  printElement x t = x : printElement x (t-1)
