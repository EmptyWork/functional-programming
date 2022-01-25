module Main (main) where

import Test.Hspec (hspec)

import Test.BasicTypes
import Test.ObjectTypes
import Test.Codewars
import Test.ChaW3Re

main :: IO ()
main = hspec $ do
  basicTypes
  objectTypes
  codeWars
  challengesW3Resource 