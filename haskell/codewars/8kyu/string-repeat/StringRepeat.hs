module StringRepeat where

repeatStr :: Int -> String -> String
repeatStr n str = combine (replicate n str)
  where 
    combine [] = []
    combine (x:xs) = combine xs ++ x