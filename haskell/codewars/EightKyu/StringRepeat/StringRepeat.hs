module EightKyu.StringRepeat.StringRepeat where

repeatStr :: Int -> String -> String
repeatStr n str = combine (replicate n str)
  where 
    combine [] = []
    combine (x:xs) = combine xs ++ x

repeatStr2 :: Int -> String -> String
repeatStr2 n str 
  | n < 0 = concat (replicate 0 str)
  | otherwise = concat (replicate n str)

{-
>>> repeatStr2 2 "Hello Guys"
"Hello GuysHello Guys"

>>> repeatStr (-1) "Hello Guys"
""
-}
