module Fibonacci
  where

  fibs :: [Integer]
  fibs = 1 : 2 : zipWith (+) fibs (tail fibs)

  getEvenSum = sum $ filter (\x -> x `mod` 2 == 0) $ takeWhile (\x -> x < 4000000) fibs
