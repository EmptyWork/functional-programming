module DividedBy where

isDividedby :: Integral a => a -> a -> a -> Bool
isDividedby num a b = isWholeNumber num b && isWholeNumber num a
  where 
    isWholeNumber number div = number `mod` div == 0