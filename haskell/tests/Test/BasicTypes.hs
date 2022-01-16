{-# OPTIONS_GHC -Wno-type-defaults #-}

module Test.BasicTypes where

import Test.Hspec (Spec, describe, it, shouldBe, shouldNotBe)

import DataTypes.BasicTypes

basicTypes :: Spec
basicTypes = describe "BasicTypes" $ do
  basicTypes1

basicTypes1 :: Spec
basicTypes1 = describe "BasicTypesNormal" $ do
  it "return True" $ showTrue `shouldBe` True
  it "return True so its not False" $ showTrue `shouldNotBe` False
  it "not return True" $ not showTrue `shouldBe` False
  it "not return True so its False" $ not showTrue `shouldNotBe` True
  it "return 'c' character" $ charC `shouldBe` 'c'
  it "not return 'j' character" $ charC `shouldNotBe` 'j'
  it "return the number of phi" $ phi `shouldBe` 3.14159265
  it "return circle area" $ circle 20 `shouldBe` 1256.63706
  it "return circle area" $ circle 2 `shouldBe` 12.5663706
  it "return circle area" $ circle 2 `shouldNotBe` 20
