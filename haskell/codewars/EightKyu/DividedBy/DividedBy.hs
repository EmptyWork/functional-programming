module EightKyu.DividedBy.DividedBy where

isDividedby :: Integral a => a -> a -> a -> Bool
isDividedby num a b = isWholeNumber num b && isWholeNumber num a
  where 
    isWholeNumber number divider = number `mod` divider == 0

isDividedby2 :: Int -> Int -> Int -> Bool
isDividedby2 num a b = (num `mod` a == 0) && (num `mod` b == 0)
