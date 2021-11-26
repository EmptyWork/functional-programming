module ShortLongShort where

shortLongShort :: [Char] -> [Char] -> [Char]
shortLongShort x y 
  | length x > length y =  y ++ x ++ y
  | length x < length y =  x ++ y ++ x
  | otherwise = ""