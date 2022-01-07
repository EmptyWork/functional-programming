{-# OPTIONS_GHC -Wno-type-defaults #-}

module Tests.DataTypes.BasicTypes where

import Test.Hspec (Spec, describe, it, shouldBe)

import Basic.DataTypes.BasicTypes


basicTypes :: Spec
basicTypes = describe "All basic data types:" $ do
  basicTypes1

basicTypes1 :: Spec
basicTypes1 = describe "Basic test one: " $ do
  it "return True" $ showTrue `shouldBe` True
  it "return not True so its False" $ not showTrue `shouldBe` False
  it "return 'c' character" $ charC `shouldBe` 'c'
  it "return the number of phi" $ phi `shouldBe` 3.14
  it "return circle area" $ circle 20 `shouldBe` 1256
  it "return circle area" $ circle 2 `shouldBe` 12.56
