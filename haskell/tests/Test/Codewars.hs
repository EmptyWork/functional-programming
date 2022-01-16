{-# OPTIONS_GHC -Wno-type-defaults #-}

module Test.Codewars where

import Test.Hspec (Spec, describe, it, shouldBe, shouldNotBe, shouldNotContain, shouldContain)

import EightKyu.DividedBy.DividedBy
import EightKyu.RealFloor.RealFloor
import EightKyu.ReversedString.ReversedString
import EightKyu.ShortLongShort.ShortLongShort
import EightKyu.SimpleMultiplication.SimpleMultiplication
import EightKyu.StringRepeat.StringRepeat
import EightKyu.SumString.SumString

codeWars :: Spec 
codeWars = describe "CodeWars" $ do
  eightKyu
  eightKyuAdvance

eightKyu :: Spec
eightKyu = describe "EightKyu" $ do
  describe "EightKyuDividedBy" $ do
    it "should be True" $ isDividedby (-12) 2 (-6) `shouldBe` True
    it "should not be False" $ isDividedby (-12) 2 (-6) `shouldNotBe` False
    it "should be False" $ isDividedby (-12) 2 (-5) `shouldBe` False
    it "should not be True" $ isDividedby (-12) 2 (-5) `shouldNotBe` True
    it "should be False" $ isDividedby 45 1 6 `shouldBe` False
    it "should not be True" $ isDividedby 45 1 6 `shouldNotBe` True
    it "should be True" $ isDividedby 45 5 15 `shouldBe` True
    it "should not be False" $ isDividedby 45 5 15 `shouldBe` True
    it "should be True" $ isDividedby 45 5 15 `shouldBe` True
    it "should not be False" $ isDividedby 4 1 4 `shouldBe` True
    it "should be True" $ isDividedby 4 1 4 `shouldBe` True
    it "should not be False" $ isDividedby 15 (-5) 3 `shouldBe` True

  describe "EightKyuRealFloor" $ do
    it "should return 0" $ realFloor 0 `shouldBe` 0
    it "should not return 1" $ realFloor 0 `shouldNotBe` 1
    it "should return 0" $ realFloor 1 `shouldBe` 0
    it "should not return 3" $ realFloor 1 `shouldNotBe` 3
    it "should return 4" $ realFloor 5 `shouldBe` 4
    it "should not return 4" $ realFloor 5 `shouldNotBe` 5
    it "should return 13" $ realFloor 15 `shouldBe` 13
    it "should not return 14" $ realFloor 15 `shouldNotBe` 14
    it "should return -3" $ realFloor (-3) `shouldBe` (-3)
    it "should not return -5" $ realFloor (-3) `shouldNotBe` (-5)

  describe "EightKyuReversedString" $ do
    it "should be \"olleh\"" $ reversedString "hello" `shouldBe` "olleh"
    it "should not be \"hello\"" $ reversedString "hello" `shouldNotBe` "hello"
    it "should be \"world\"" $ reversedString "dlrow" `shouldBe` "world"
    it "should be \"eno\"" $ reversedString "one" `shouldBe` "eno"
    it "should not be \"one\"" $ reversedString "one" `shouldNotBe` "one"

  describe "EightKyuShortLongShort" $ do
    it "should be \"ccaaacc\"" $ shortLongShort "aaa" "cc" `shouldBe` "ccaaacc"
    it "should not be \"cccaaaccc\"" $ shortLongShort "aaa" "ccc" `shouldNotBe` "cccaaaccc"
    it "should be \"\"" $ shortLongShort "aaa" "ccc" `shouldBe` ""
    it "should not contain \"\"" $ shortLongShort "aaa" "ccc" `shouldNotContain` "ccc"
    it "should be \"---@@@@---\"" $ shortLongShort "---" "@@@@" `shouldBe` "---@@@@---"
    it "should be \"\"" $ shortLongShort "|||" "222" `shouldBe` ""
    it "should not be \"---@@@@---\"" $ shortLongShort "---" "" `shouldNotBe` "---@@@@---"
    it "should not be \"---@@@@---\"" $ shortLongShort "---" "" `shouldNotContain` "@@@@"
    it "should not be \"---\"" $ shortLongShort "---" "" `shouldBe` "---"
    it "should not be \"---\"" $ shortLongShort "---" "" `shouldNotBe` ""
    it "should not be \"---\"" $ shortLongShort "---" " " `shouldContain` " "

  describe "EightKyuSimpleMultiplication" $ do
    it "should be 8" $ simpleMultiplication 1 `shouldBe` 9
    it "should be -8" $ simpleMultiplication (-1) `shouldBe` (-9)
    it "should be 18" $ simpleMultiplication 2 `shouldBe` 16
    it "should not be 18" $ simpleMultiplication 2 `shouldNotBe` 18
    it "should not be 30" $ simpleMultiplication 3 `shouldNotBe` 30
    it "should be -18" $ simpleMultiplication (-2) `shouldBe` (-16)
    it "should be -48" $ simpleMultiplication (-6) `shouldBe` (-48)
    it "should be -160" $ simpleMultiplication (-20) `shouldBe` (-160)
    it "should not be 0" $ simpleMultiplication (-20) `shouldNotBe` 0
    it "should be 0" $ simpleMultiplication 0 `shouldBe` 0
    it "should be 8" $ simpleMultiplication 0 `shouldNotBe` 8
    it "should be 9" $ simpleMultiplication 0 `shouldNotBe` 9

  describe "EightKyuStringRepeat" $ do
    it "should be \"hellohello\"" $ repeatStr 2 "hello" `shouldBe` "hellohello"
    it "should be \"hellohello\"" $ repeatStr2 2 "hello" `shouldBe` "hellohello"
    it "should not be \"hello\"" $ repeatStr 0 "hello" `shouldNotBe` "hello"
    it "should not be \"hello\"" $ repeatStr2 0 "hello" `shouldNotBe` "hello"
    it "should be \"\"" $ repeatStr 0 "hello" `shouldBe` ""
    it "should be \"\"" $ repeatStr2 0 "hello" `shouldBe` ""
    it "should be \"\"" $ repeatStr (-1) "hello" `shouldBe` ""
    it "should be \"\"" $ repeatStr2 (-1) "hello" `shouldBe` ""
    it "should contain \"ello\"" $ repeatStr 8 "HelloWorld" `shouldContain` "ello"
    it "should contain \"ello\"" $ repeatStr2 8 "HelloWorld" `shouldContain` "ello"

  describe "EightKyuSumString" $ do
    it "should be 7" $ sumStr "-1" "8" `shouldBe` "7"
    it "should be 7" $ sumStr "-1" "" `shouldBe` "-1"
    it "should not be 0" $ sumStr "-1" "" `shouldNotBe` "0"
    it "should be -88" $ sumStr "2" "-90" `shouldBe` "-88"
    it "should be -90" $ sumStr "" "-90" `shouldBe` "-90"
    it "should not be -88" $ sumStr "" "-90" `shouldNotBe` "-88"

eightKyuAdvance :: Spec 
eightKyuAdvance = describe "EightKyuAdvance" $ do
    it "should be \"dlrowdlrowd\"" $ repeatStr 2 (reversedString "world") `shouldBe` "dlrowdlrow" 
    it "should be \"a##c---a##a##c---a##\"" $ repeatStr 2 (reversedString (shortLongShort "---c" "##a")) `shouldBe` "a##c---a##a##c---a##" 
    it "should be False" $ isDividedby 20 (realFloor 1) (simpleMultiplication 4) `shouldBe` False