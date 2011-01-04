module FunctionCompostion
  where
  
  oddSquareNumbers = sum (takeWhile (<1000) (filter odd (map (^2) [1..])))

  oddSquareNumbers' = sum . takeWhile (<1000) . filter odd . map (^2) $ [1..]
