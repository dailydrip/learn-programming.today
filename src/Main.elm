module Main exposing (main)

import App
import View
import Model
import Navigation
import Msg exposing (Msg(UrlChange))


main : Program Never Model.Model Msg
main =
    Navigation.program UrlChange
        { view = View.view
        , init = App.init
        , update = App.update
        , subscriptions = (\_ -> Sub.none)
        }
