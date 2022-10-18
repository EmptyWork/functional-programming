module CodeWars.EightKyu.DividedBy where

import Prelude

import Data.Ord (abs)

dividedBy ∷ Int → Int → Int → Boolean
dividedBy numberOne numberTwo result = ((abs numberOne) / (abs numberTwo) == (abs result))

dividedByWithoutAbs ∷ Int → Int → Int → Boolean
dividedByWithoutAbs numberOne numberTwo result = (numberOne / numberTwo) == result

dividedByLogic ∷ Int → Int → Int → Boolean → Boolean 
dividedByLogic numberOne numberTwo result cond = 
  if cond 
    then 
      ((abs numberOne) / (abs numberTwo) == (abs result)) 
  else 
    (numberOne / numberTwo) == result

dividedByLogic2 ∷ Int → Int → Int → Boolean → Boolean 
dividedByLogic2 numberOne numberTwo result cond
  | cond = ((abs numberOne) / (abs numberTwo) == (abs result)) 
  | otherwise = (numberOne / numberTwo) == result