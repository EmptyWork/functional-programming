{-# OPTIONS_GHC -Wno-type-defaults -Wno-missing-fields -Wno-unused-imports #-}

module Test.ChaW3Re where

import Test.Hspec (Spec, describe, it, shouldBe, shouldNotBe, shouldContain, shouldNotContain, shouldStartWith)

import W3Resource

challengesW3Resource :: Spec
challengesW3Resource = describe "ChallengesW3Resource" $ do
  challengesW3Normal

challengesW3Normal :: Spec
challengesW3Normal = describe "ChallengesW3ResourceNormal" $ do
  describe "ChallengesW3NReturnMaybe" $ do
    it "returnMaybe Nothing should be 0" $ returnMaybe Nothing `shouldBe` 0
    it "returnMaybe (Just 89) should be 89" $ returnMaybe (Just 89) `shouldBe` 89
    it "returnMaybe (Just (-8)) should be (-8)" $ returnMaybe (Just (-8)) `shouldBe` (-8)
  describe "ChallengesW3NsumOfTriple" $ do
    it "sumOfTriple 20 20 should be (40, 120)" $ sumOfTriple 20 20 `shouldBe` (40, 120)
    it "sumOfTriple 10 11 should be (21, 0)" $ sumOfTriple 10 11 `shouldBe` (21, 0)
    it "sumOfTriple 20 1 should be (21, 0)" $ sumOfTriple 20 1 `shouldBe` (21, 0)
    it "sumOfTriple 1 1 should be (2, 6)" $ sumOfTriple 1 1 `shouldBe` (2, 6)
  describe "ChallengesW3NdiffFromFiftyOne" $ do
    it "diffFromFiftyOne 70 should be 57" $ diffFromFiftyOne 70 `shouldBe` 57
    it "diffFromFiftyOne 52 should be 3" $ diffFromFiftyOne 52 `shouldBe` 3
    it "diffFromFiftyOne 30 should be 21" $ diffFromFiftyOne 30 `shouldBe` 21
    it "diffFromFiftyOne 2 should be 49" $ diffFromFiftyOne 2 `shouldBe` 49
  describe "ChallengesW3NisThirty" $ do
    it "isThirty 20 20 should be True" $ isThirty 20 20 `shouldBe` False
    it "isThirty 20 20 should not be False" $ isThirty 20 20 `shouldNotBe` True
    it "isThirty 20 10 should be True" $ isThirty 20 10 `shouldBe` True
    it "isThirty 20 10 should Not be False" $ isThirty 20 10 `shouldNotBe` False
    it "isThirty 20 30 should Not be False" $ isThirty 20 30 `shouldNotBe` False
    it "isThirty 20 30 should be True" $ isThirty 20 30 `shouldBe` True
    it "isThirty 30 30 should be False" $ isThirty 20 30 `shouldNotBe` False
    it "isThirty 30 30 should be True" $ isThirty 20 30 `shouldBe` True