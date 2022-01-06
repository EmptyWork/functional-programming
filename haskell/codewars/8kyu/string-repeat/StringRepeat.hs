module StringRepeat where

repeatStr :: Int -> String -> String
repeatStr n str = combine (replicate n str)
  where 
    combine [] = []
    combine (x:xs) = combine xs ++ x

repeatStr2 :: Int -> String -> String
repeatStr2 n str = concat (replicate n str)

{-
>>> repeatStr2 2 "Hello Guys"
"Hello GuysHello Guys"

>>> repeatStr2 "Hello Guys"
"Hello GuysHello Guys"
-}
