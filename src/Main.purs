module Main where

import Prelude

import Effect (Effect)
import Concur.Core (Widget)
import Concur.React (HTML)
import Concur.React.DOM (button, text)
import Concur.React.Run (runWidgetInDom)
import Concur.React.Props (onClick)
import Control.Alt ((<|>))


contactSearch :: forall a. Widget HTML a
contactSearch = (button [onClick] [text "click me"] >>= \_ -> text "BOOM") <|> text "yes"


main :: Effect Unit
main = do
  runWidgetInDom "contact" contactSearch
