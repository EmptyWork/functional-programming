module Main where
import Prelude hiding (sum)
import System.Environment (getArgs)

solveMeFirst :: Int -> Int -> Int
solveMeFirst a b = a + b

main :: IO()
main = do
    args <- getArgs
    case args of
      [] -> do
            putStrLn "Input the first number: "
            val1 <- readLn
            putStrLn "Input the second number: "
            val2 <- readLn
            print $ solveMeFirst val1 val2
      s : ss -> do
            let val1 = read s :: Int
            case ss of 
              [] -> do
                    putStrLn "Input the second number: "
                    val2 <- readLn
                    print $ solveMeFirst val1 val2
              str : _ -> do 
                    let val2 = read str :: Int 
                    print $ solveMeFirst val1 val2