module Main (main) where

import Test.Hspec (hspec)

import Test.BasicTypes
import Test.ObjectTypes
import Test.Codewars

main :: IO ()
main = hspec $ do
  basicTypes
  objectTypes
  codeWars