{-# OPTIONS_GHC -Wno-type-defaults -Wno-missing-fields -Wno-unused-imports #-}

module Test.ChaW3Re where

import Test.Hspec (Spec, describe, it, shouldBe, shouldNotBe, shouldContain, shouldNotContain, shouldStartWith)

import W3Resource

challengesW3Resource :: Spec
challengesW3Resource = describe "ChallegesW3Resource" $ do
  challengesW3Normal

challengesW3Normal :: Spec
challengesW3Normal = describe "ChallengesW3ResourceNormal" $ do
  describe "ChallengesW3NReturnMaybe" $ do
    it "should be 0" $ returnMaybe Nothing `shouldBe` 0
    it "should be 89" $ returnMaybe (Just 89) `shouldBe` 89
    it "should be (-8)" $ returnMaybe (Just (-8)) `shouldBe` (-8)
  describe "ChallengesW3NsumOfTriple" $ do
    it "should be (40, 120)" $ sumOfTriple 20 20 `shouldBe` (40, 120)
    it "should be (21, 0)" $ sumOfTriple 10 11 `shouldBe` (21, 0)
    it "should be (21, 0)" $ sumOfTriple 20 1 `shouldBe` (21, 0)
    it "should be (2, 6)" $ sumOfTriple 1 1 `shouldBe` (2, 6)
  describe "ChallengesW3NdiffFromFiftyOne" $ do
    it "70 - 51 * 3 should be 57" $ diffFromFiftyOne 70 `shouldBe` 57