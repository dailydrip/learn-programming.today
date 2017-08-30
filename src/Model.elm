module Model exposing (Model)

import Navigation


type alias Model =
    { history : List Navigation.Location
    }
