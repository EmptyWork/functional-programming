module Main where
import Prelude hiding (sum)

solveMeFirst :: Int -> Int -> Int
solveMeFirst a b = a + b

main :: IO()
main = do
    putStrLn "Input the first number: "
    val1 <- readLn
    putStrLn "Input the first number: "
    val2 <- readLn
    let sum = solveMeFirst val1 val2
    print sum
