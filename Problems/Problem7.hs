module Problem7
	where

  data ListElem a = Elem a | List [ListElem a] 

  flatten :: ListElem a -> [a]
  flatten (Elem x) = [x]
  flatten (List x) = concatMap flatten x
