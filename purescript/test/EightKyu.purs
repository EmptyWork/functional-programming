module Test.EightKyu where

import Prelude

import CodeWars.EightKyu.RealFloor (realFloor)
import Effect (Effect)
import Effect.Class.Console (log)

eightKyu :: Effect Unit
eightKyu = do
  log ("RealFloor")
  log ("The Answer is " <> show (realFloor 1))
  log ("The Answer is " <> show (realFloor 13))
  log ("The Answer is " <> show (realFloor (-2)))
  log ("The Answer is " <> show (realFloor (-5)))
  log ("The Answer is " <> show (realFloor (0)))
  log ("The Answer is " <> show (realFloor (99)))