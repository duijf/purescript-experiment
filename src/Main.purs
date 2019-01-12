module Main where

import Prelude

import Effect (Effect)
import Concur.Core (Widget)
import Concur.React (HTML)
import Concur.React.DOM (text)
import Concur.React.Run (runWidgetInDom)


contactSearch :: forall a. Widget HTML a
contactSearch = text "HI IT WORKS"


main :: Effect Unit
main = do
  runWidgetInDom "contact" contactSearch
