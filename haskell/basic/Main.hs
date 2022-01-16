module Main (main) where
import DataTypes.BasicTypes (showTrue, circle, sayHello, charC, phi)
import Data.Typeable (typeOf)
import EmptyWork (terminalLogo)

main :: IO ()
main = do
  putStrLn "Copyright (C) 2022  EmptyWork"
  putStrLn ""
  putStrLn terminalLogo
  sayHello
  putStr "The area of circle with r = 2 is: "
  print $ circle (2 :: Double)
  putStr "The area of circle with r = phi is: "
  print $ circle (phi :: Double)
  print [(1 :: Int) .. 10]
  print [(1 :: Int) .. 200]
  print showTrue
  print charC
  print $ typeOf charC 
