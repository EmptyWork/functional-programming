module Tests.Main (main) where

import Test.Hspec (hspec)

import Tests.DataTypes.BasicTypes

main :: IO ()
main = hspec $ do
  basicTypes