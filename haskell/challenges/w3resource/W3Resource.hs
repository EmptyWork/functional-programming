{- 
= W3Resource C Exercises =
link: https://www.w3resource.com/c-programming-exercises/basic-algo/index.php 

This challeges itself was created specially for C lang.
And this is how to solve it using Haskell language.
-}

module W3Resource where

import Data.Maybe (fromMaybe)

returnMaybe :: Maybe Int -> Int
returnMaybe = fromMaybe 0

--- Number one 
--- Write a Haskell program to compute the sum of the two given integer values. If the two values are the same, then return triple their sum.
sumOfTriple :: Int -> Int -> (Int, Int)
sumOfTriple numberOne numberTwo
  | numberOne == numberTwo = (numberOne + numberTwo, returnMaybe $ Just ((numberOne + numberTwo) * 3))
  | otherwise = (numberOne + numberTwo, returnMaybe Nothing)

--- NumberTwo
--- Write a Haskell program to get the absolute difference between n and 51. If n is greater than 51 return triple the absolute difference.
diffFromFiftyOne :: Int -> Int
diffFromFiftyOne number
  | number > 51 = (number - 51) * 3
  | otherwise = 51 - number

--- NumberThree
--- Write a Haskell program to check two given integers, and return true if one of them is 30 or if their sum is 30.
isThirty :: Int -> Int -> Bool
isThirty numberOne numberTwo = numberOne == 30 || numberTwo == 30 || numberOne + numberTwo == 30

--- NumberFour
--- Write a Haskell program to check a given integer and return true if it is within 10 of 100 or 200.
isWithinTen :: Int -> Bool
isWithinTen a = abs (a - 100) <= 10 || abs (a - 200) <= 10

--- NumberFive
--- Write a Haskell program to check whether a given positive number is a multiple of 3 or a multiple of 7.
isMultipleOfThreeOrSeven :: Int -> Bool
isMultipleOfThreeOrSeven a = abs a `mod` 3 == 0 || abs a `mod` 7 == 0

--- NumberSix
--- Write a Haskell program to check whether a given temperatures is less than 0 and the other is greater than 100.
isSmallerGreater :: Int -> Int -> Bool
isSmallerGreater temperatureSmaller temperatureGreater = temperatureSmaller < 0 && abs temperatureGreater > 100

--- NumberSeven
--- Write a Haskell program to check two given integers whether either of them is in the range 100..200 inclusive.
isInRange :: Int -> Int -> Bool
isInRange a b = a <= 200 && a >= 100 && b <= 200 && b >= 100

--- NumberEight
--- Write a Haskell program to check whether three given integer values are in the range 20..50 inclusive. Return true if 1 or more of them are in the said range otherwise return false.
isInRange2 :: Int -> Int -> Bool
isInRange2 a b = a <= 50 && a >= 20 || b <= 50 && b >= 20

--- NumberNine
--- Write a Haskell program to check whether two given integer values are in the range 20..50 inclusive. Return true if 1 or other is in the said range otherwise false.
isInRange3 :: Int -> Int -> Bool
isInRange3 a b = a <= 50 && a >= 20 || b <= 50 && b >= 20

--- NumberTen
--- Write a Haskell program to check which number nearest to the value 100 among two given integers. Return 0 if the two numbers are equal.
isNearAHundred :: Int -> Int -> Int
isNearAHundred numberOne numberTwo
  | abs (numberOne - 100) < abs (numberTwo - 100) = numberOne
  | abs (numberOne - 100) > abs (numberTwo - 100) = numberTwo
  | numberOne == numberTwo = 0
  | otherwise = 0

--- NumberEleven
--- Write a Haskell program to check whether two given integers are in the range 40..50 inclusive, or they are both in the range 50..60 inclusive.
isInRange4 :: Int -> Int -> Bool
isInRange4 numberOne numberTwo = isBetweenFourtyAndFifty numberOne && isBetweenFourtyAndFifty numberTwo

isBetweenFourtyAndFifty :: Int -> Bool
isBetweenFourtyAndFifty a = a <= 60 && a >= 40

--- NumberTwelve
--- Write a Haskell program to find the larger value from two positive integer values that is in the range 20..30 inclusive, or return 0 if neither is in that range.
isInRange5 :: Int -> Int -> Int
isInRange5 numberOne numberTwo
  | isBetweenTwentyAndThirty numberOne && isBetweenTwentyAndThirty numberTwo && numberOne > numberTwo = numberOne
  | isBetweenTwentyAndThirty numberOne && isBetweenTwentyAndThirty numberTwo && numberOne < numberTwo = numberTwo
  | otherwise = 0

isBetweenTwentyAndThirty :: Int -> Bool
isBetweenTwentyAndThirty a = a <= 30 && a >= 20

--- NumberThirteen
--- Write a Haskell program to check if two given non-negative integers have the same last digit.
isTheSameLast :: Int -> Int -> Bool
isTheSameLast numberOne numberTwo = lastNumber numberOne == lastNumber numberTwo

lastNumber :: Integral b => b -> b
lastNumber n = isTheLast
  where (_, isTheLast) = divMod (abs n) 10

--- NumberFourteen
--- Write a Haskell program to check whether the sequence of numbers 1, 2, 3 appears in a given array of integers somewhere.
-- newArr :: [a] -> [a]
-- newArr [] = []
-- newArr (x:xs) = 

--- NumberFifteen
--- Write a Haskell program to count the number of two 5's are next to each other in an array of integers. Also count the situation where the second 5 is actually a 6.
