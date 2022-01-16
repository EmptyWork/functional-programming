module EightKyu.ReversedString.ReversedString where

reversedString :: String -> String
reversedString [] = []
reversedString (x:xs) = reversedString xs ++ [x]
