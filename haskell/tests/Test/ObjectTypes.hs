{-# OPTIONS_GHC -Wno-type-defaults #-}
{-# OPTIONS_GHC -Wno-missing-fields #-}

module Test.ObjectTypes where

import Test.Hspec (Spec, describe, it, shouldBe, shouldNotBe, shouldContain, shouldNotContain, shouldStartWith)

import DataTypes.ObjectTypes

objectTesting :: Student
objectTesting = Student
  { studentName = "Normal Student"
  , studentAge = 12
  , studentStatus = IsStudent
  , currentSchool = Elementary (Just "SD Jakarta Pusat Negeri 02")
  }

objectTypes :: Spec
objectTypes = describe "ObjectTypes" $ do
  objectTypes1
  objectTypes2
  objectTypes3

objectTypes1 :: Spec
objectTypes1 = describe "ObjectTypesNormal" $ do
  it "return the name of student" $ do studentName objectTesting `shouldBe` "Normal Student"
  it "not return random string" $ do studentName objectTesting `shouldNotBe` "Not a normal Student"
  it "should contain \"Normal Student\"" $ do studentName objectTesting `shouldContain` "Student"
  it "should return the age of student" $ do studentAge objectTesting `shouldBe` 12
  it "should not return incorrect age of student" $ do studentAge objectTesting `shouldNotBe` 30

objectTypes2 :: Spec
objectTypes2 = describe "ObjectTypesAdvance" $ do
  it "should contain \"Elementary\"" $ do toStringCurrentSchool objectTesting `shouldContain` "Elementary"
  it "should contain \"JuniorHigh\"" $ do toStringCurrentSchool Student {studentStatus = IsStudent, currentSchool = JuniorHigh Nothing} `shouldContain` "JuniorHigh"
  it "should contain \"High\"" $ do toStringCurrentSchool Student {studentStatus = IsStudent, currentSchool = High Nothing} `shouldContain` "High"
  it "should contain \"NotStudent\"" $ do toStringCurrentSchool Student {studentStatus = NotStudent, currentSchool = None Nothing} `shouldContain` "NotStudent"
  it "should not contain \"High\"" $ do toStringCurrentSchool objectTesting `shouldNotContain` "High"
  it "should not contain \"None\"" $ do toStringCurrentSchool objectTesting `shouldNotContain` "None"
  it "should not contain \"JuniorHigh\"" $ do toStringCurrentSchool objectTesting `shouldNotContain` "JuniorHigh"

objectTypes3 :: Spec
objectTypes3 = describe "ObjectTypesAdvanceTwo" $ do
  it "return a line about the student currentSchool" $ do basedOnStatus objectTesting `shouldContain` "IsStudent"
  it "the line should start with \"IsStudent\"" $ do basedOnStatus objectTesting `shouldStartWith` "IsStudent"
  it "should not contain \"NotStudent\"" $ do basedOnStatus objectTesting `shouldNotContain` "NotStudent"