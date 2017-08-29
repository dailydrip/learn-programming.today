module App exposing (..)

import Model
import Navigation


init location =
    ( Model.Model [ location ]
    , Cmd.none
    )
