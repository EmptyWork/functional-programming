module Test.EightKyu where

import Prelude

import DividedBy (testDividedBy)
import Realfloor (testRealFloor)
import Test.Spec (Spec)

eightKyu :: Spec Unit
eightKyu = do
  testRealFloor
  testDividedBy