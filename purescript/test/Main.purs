module Test.Main where

import Prelude

import Effect (Effect)

import Test.EightKyu (eightKyu)

main :: Effect Unit
main = do
  eightKyu
