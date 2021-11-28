module RealFloor where

realFloor :: (Num a, Ord a) => a -> a
realFloor n
  | n < 0 = n
  | n == 0 = 0
  | n == 13 = 0
  | n > 13 = n - 2
  | otherwise = n - 1
