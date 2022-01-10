module Main (main) where

import Test.Hspec (hspec)

import Test.BasicTypes
import Test.ObjectTypes

main :: IO ()
main = hspec $ do
  basicTypes
  objectTypes