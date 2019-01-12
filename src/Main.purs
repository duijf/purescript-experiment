module Main where

import Prelude

import Effect (Effect)
import Concur.Core (Widget)
import Concur.React (HTML)
import Concur.React.DOM (button, text)
import Concur.React.Run (runWidgetInDom)
import Concur.React.Props (onClick)


contactSearch :: forall a. Widget HTML a
contactSearch = do
  _ <- button [onClick] [text "click me"]
  text "BOOM"


main :: Effect Unit
main = do
  runWidgetInDom "contact" contactSearch
