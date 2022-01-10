{-# OPTIONS_GHC -Wno-name-shadowing #-}
module DataTypes.BasicTypes where

{-
>>> :t 2
2 :: Num p => p

>>> circle 2

>>> :t True

>>> :t 3.4

>>> :t 'c'

>>> :t "Hello World"

-}

showTrue :: Bool
showTrue = True

charC :: Char 
charC = 'c'

phi :: Fractional p => p
phi = 3.14

circle :: Fractional radius => radius -> radius
circle r = phi * (r * r)

sayHello :: IO()
sayHello = putStrLn "Hello World"