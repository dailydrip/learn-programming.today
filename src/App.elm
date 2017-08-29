module App exposing (..)

import Model exposing (Model, Flags, init)
import Navigation
import Store.Msg as Msg


init : Navigation.Location -> ( Model, Cmd Msg )
init location =
    ( Model [ location ]
    , Cmd.none
    )
