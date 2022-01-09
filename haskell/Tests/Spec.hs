module Main (main) where

import Test.Hspec (hspec)

import Test.BasicTypes

main :: IO ()
main = hspec $ do
  basicTypes