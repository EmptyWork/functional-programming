module Realfloor where

import Prelude

import CodeWars.EightKyu.RealFloor (realFloor)
import Test.Spec (Spec, describe, it)
import Test.Spec.Assertions (shouldEqual)

testRealFloor ∷ Spec Unit
testRealFloor = do
  describe "" do
    it "" do
      realFloor 0 `shouldEqual` 0