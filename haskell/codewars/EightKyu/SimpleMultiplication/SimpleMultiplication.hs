module EightKyu.SimpleMultiplication.SimpleMultiplication where

simpleMultiplication :: Int -> Int
simpleMultiplication n 
 | even n = n * 8 
 | otherwise = n * 9
