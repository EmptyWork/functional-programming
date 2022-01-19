--- https://www.w3resource.com/c-programming-exercises/basic-algo/index.php
module W3Resource where

--- Number one 
--- Write a Haskell program to compute the sum of the two given integer values. If the two values are the same, then return triple their sum.
sumOfTriple :: Int -> Int -> (Int, Maybe Int)
sumOfTriple numberOne numberTwo
  | numberOne == numberTwo = (numberOne + numberTwo, Just ((numberOne + numberTwo) * 3))
  | otherwise = (numberOne + numberTwo, Nothing)
