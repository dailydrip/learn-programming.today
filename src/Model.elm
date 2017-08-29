module Model exposing (Model, init)

import Types.Store as Store
import Navigation


type alias Model =
    { store : Store.Model
    , history : List Navigation.Location
    }


init location =
    ( Model [ location ]
    , Cmd.none
    )
