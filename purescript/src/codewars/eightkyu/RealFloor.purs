module CodeWars.EightKyu.RealFloor where

import Prelude

realFloor ∷ Int → Int
realFloor n
  | n < 0 = n
  | n == 0 = 0
  | n == 13 = 0
  | n > 13 = n - 2
  | otherwise = n - 1