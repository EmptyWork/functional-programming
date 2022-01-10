module Codewars.EightKyu.SumString where

sumStr :: String -> String -> String
sumStr a b = show (toInt a + toInt b)

toInt :: String -> Int 
toInt "" = 0
toInt s = read s