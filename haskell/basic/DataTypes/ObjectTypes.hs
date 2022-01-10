module DataTypes.ObjectTypes where

data StudentStatus = NotStudent 
                   | IsStudent deriving Show

data SchoolTypes   = Elementary (Maybe String)
                   | JuniorHigh (Maybe String)
                   | High (Maybe String)
                   | None (Maybe String) deriving Show

data Student = Student 
  { studentName   :: String
  , studentAge    :: Int
  , studentStatus :: StudentStatus
  , currentSchool :: SchoolTypes
  } deriving (Show)

toStringCurrentSchool :: Student -> String
toStringCurrentSchool s = case currentSchool s of
  Elementary _        -> show (studentStatus s) ++ ": This person still in elementary school at "                ++ show (currentSchool s)
  JuniorHigh _        -> show (studentStatus s) ++ ": This person now attend junior high school at "             ++ show (currentSchool s)
  High       _        -> show (studentStatus s) ++ ": This person almost done with the compulsory schooling at " ++ show (currentSchool s)
  None       _        -> show (studentStatus s) ++ ": This person already graduate "

basedOnStatus :: Student -> String
basedOnStatus s = case studentStatus s of
  IsStudent   -> toStringCurrentSchool s
  NotStudent  -> toStringCurrentSchool (overrideCurrentSchool s)

overrideCurrentSchool :: Student -> Student
overrideCurrentSchool s = s {currentSchool = None Nothing}

{-
>>> jason = Student {studentName = "Jason Akbar", studentAge = 21, studentStatus = NotStudent, currentSchool = High (Just "SMK NEGERI 2 KOTA TERNATE")}

>>> jason
Student {studentName = "Jason Akbar", studentAge = 21, studentStatus = NotStudent, currentSchool = High (Just "SMK NEGERI 2 KOTA TERNATE")}

>>> toStringCurrentSchool jason
"NotStudent: This person almost done with the compulsory schooling at High (Just \"SMK NEGERI 2 KOTA TERNATE\")"

>>> basedOnStatus jason
"NotStudent: This person already graduate "

-}
