module Codewars.EightKyu.ReversedString where

solution :: String -> String
solution [] = []
solution (x:xs) = solution xs ++ [x]