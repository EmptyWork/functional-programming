module Realfloor where

import Prelude

import CodeWars.EightKyu.RealFloor (realFloor)
import Test.Spec (Spec, describe, it)
import Test.Spec.Assertions (shouldEqual)

testRealFloor ∷ Spec Unit
testRealFloor = do
  describe "realFloor: a function that given a floor in the american system returns the floor in the european system" do
    it "on the zeroth floor" do
      realFloor 0 `shouldEqual` 0
    it "the floor is lower than 13" do
      realFloor 3 `shouldEqual` 2
      realFloor 2 `shouldEqual` 1
      realFloor 1 `shouldEqual` 0
      realFloor 12 `shouldEqual` 11
    it "the floor is higher than 13" do
      realFloor 14 `shouldEqual` 12
      realFloor 20 `shouldEqual` 18
    it "underground floor" do
      realFloor (-1) `shouldEqual` (-1)
      realFloor (-12) `shouldEqual` (-12)