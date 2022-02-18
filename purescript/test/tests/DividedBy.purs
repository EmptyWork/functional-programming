module DividedBy where

import Prelude

import CodeWars.EightKyu.DividedBy (dividedBy, dividedByLogic, dividedByLogic2, dividedByWithoutAbs)
import Test.Spec (Spec, describe, it)
import Test.Spec.Assertions (shouldEqual, shouldNotEqual)

testDividedBy ∷ Spec Unit
testDividedBy = do
  describe "dividedBy: a function to check if an integer `number` is divisible by both integers `a` and `b`." do
    
    it "one of it is negative numbers" do
      dividedBy (-12) 2 6 `shouldEqual` true
      dividedBy (-12) 2 5 `shouldEqual` false
      dividedByWithoutAbs (-12) 2 (-6) `shouldEqual` true
      dividedByWithoutAbs (-12) 2 (-5) `shouldEqual` false
    
    it "both negative numbers" do
      dividedBy (-24) (-12) 48 `shouldEqual` true
      dividedBy (-24) (-12) 48 `shouldNotEqual` false
      dividedByLogic (-24) (-2) 12 false `shouldEqual` true
      dividedByLogic2 (-24) (-2) 12 false `shouldEqual` true
    
    it "returns negative number" do
      dividedByWithoutAbs (-100) 5 (-20) `shouldEqual` true
      dividedByLogic (-100) 5 (-20) false `shouldEqual` true
      dividedByLogic2 (-100) 5 (-20) false `shouldEqual` true