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
    it "isThirty 20 30 should be False" $ isThirty 20 30 `shouldNotBe` False
    it "isThirty 30 20 should be True" $ isThirty 30 20 `shouldBe` True
    it "isThirty 30 20 should be False" $ isThirty 30 20 `shouldNotBe` False
    it "isThirty 30 0 should be True" $ isThirty 30 0 `shouldBe` True
    it "isThirty 30 0 should be False" $ isThirty 30 0 `shouldNotBe` False

  describe "ChallengesW3NisWithinTen" $ do
    it "isWithinTen of 222" $ isWithinTen 222 `shouldBe` False
    it "isWithinTen of 222" $ isWithinTen 222 `shouldNotBe` True
    it "isWithinTen of 110" $ isWithinTen 110 `shouldBe` True
    it "isWithinTen of 110" $ isWithinTen 110 `shouldNotBe` False
    it "isWithinTen of 205" $ isWithinTen 205 `shouldNotBe` False
    it "isWithinTen of 205" $ isWithinTen 205 `shouldBe` True
  
  describe "ChallengesW3NisMultipleOfThreeOrSeven" $ do
    it "isMultipleOfThreeOrSeven of 20" $ isMultipleOfThreeOrSeven 20 `shouldBe` False
    it "isMultipleOfThreeOrSeven of 31" $ isMultipleOfThreeOrSeven 30 `shouldNotBe` False
    it "isMultipleOfThreeOrSeven of 51" $ isMultipleOfThreeOrSeven 51 `shouldBe` True
    it "isMultipleOfThreeOrSeven of 21" $ isMultipleOfThreeOrSeven 21 `shouldBe` True
    it "isMultipleOfThreeOrSeven of 28" $ isMultipleOfThreeOrSeven 28 `shouldBe` True
    it "isMultipleOfThreeOrSeven more than 70" $ isMultipleOfThreeOrSeven 70 `shouldBe` True
    it "isMultipleOfThreeOrSeven more than 1000" $ isMultipleOfThreeOrSeven 3000 `shouldBe` True
    it "isMultipleOfThreeOrSeven negative number" $ isMultipleOfThreeOrSeven (-3) `shouldBe` True

  describe "ChallengesW3NisSmallerGreater" $ do
    it "isSmallGreater both positive" $ isSmallerGreater 30 30 `shouldBe` False
    it "isSmallGreater both positive" $ isSmallerGreater 0 105 `shouldBe` False
    it "isSmallGreater one negative, one positive" $ isSmallerGreater (-6) 105 `shouldBe` True
    it "isSmallGreater one negative, one positive" $ isSmallerGreater 100 (-9) `shouldBe` False
    it "isSmallGreater both negative" $ isSmallerGreater (-8) (-9) `shouldBe` False
    it "isSmallGreater more than -0 and 100" $ isSmallerGreater (-100) 300 `shouldBe` True
    it "isSmallGreater more than -0 and 100" $ isSmallerGreater (-10) 120 `shouldBe` True