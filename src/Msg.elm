module Msg exposing (Msg(..))

import Navigation


type Msg
    = NoOp
    | UrlChange Navigation.Location
