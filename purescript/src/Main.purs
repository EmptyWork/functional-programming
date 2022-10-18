module Main where

import Prelude

import CodeWars.EightKyu.DividedBy (dividedBy)
import Effect (Effect)
import Effect.Console (log)
import EmptyWork (terminalLogo)

main :: Effect Unit
main = do
  log "Copyright (C)  2022 EmptyWork"
  log $ terminalLogo
  log $ show (dividedBy 12 2 4)
