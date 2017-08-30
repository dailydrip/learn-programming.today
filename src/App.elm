module App exposing (..)

import Model


init location =
    ( Model.Model [ location ]
    , Cmd.none
    )
