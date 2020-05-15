module Test (nuttyWorld) where

import Prelude

import Effect (Effect)
import Effect.Console (log)

nuttyWorld :: Effect Unit
nuttyWorld = do
  log "nutty.world :: Hello from PureScript!"
