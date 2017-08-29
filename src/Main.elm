module Main exposing (main)

import App
import View
import Update
import Model
import Navigation
import Msg exposing (Msg(UrlChange))


main : Program Never Model.Model Msg
main =
    Navigation.program UrlChange
        { view = View.view
        , init = App.init
        , update = Update.update
        , subscriptions = (\_ -> Sub.none)
        }
