{-# OPTIONS_GHC -Wno-name-shadowing #-}
module DataTypes.BasicTypes where

{-

=○ [Default type in Haskell] ○=
you can use `:t` to check the type of
variables or functions 
>>> :t 2
>>> circle 2
>>> :t circle
>>> :t True
>>> :t 3.4
>>> :t 'c'
>>> :t "Hello World"
2 :: Num p => p
12.5663706
circle :: Fractional radius => radius -> radius
True :: Bool
3.4 :: Fractional p => p
'c' :: Char
"Hello World" :: [Char]

-}

showTrue :: Bool
showTrue = True

charC :: Char 
charC = 'c'

phi :: Fractional p => p
phi = 3.14159265

circle :: Fractional radius => radius -> radius
circle r = phi * (r * r)

sayHello :: IO()
sayHello = putStrLn "Hello World"
