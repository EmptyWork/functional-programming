module Main (main) where
import Basic.DataTypes.BasicTypes (showTrue, circle, sayHello, charC)

main :: IO ()
main = do
  putStrLn "Copyright (C) 2022  EmptyWork"
  putStrLn ""
  sayHello
  print (circle 2)
  print showTrue
  print charC