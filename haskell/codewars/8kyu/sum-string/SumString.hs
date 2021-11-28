module SumString where

sumStr :: String -> String -> String
sumStr a b = show (toInt a + toInt b)

toInt :: String -> Int 
toInt "" = 0
toInt s = read s


-- https://www.codewars.com/kata/5966e33c4e686b508700002d/train/haskell