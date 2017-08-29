module Main exposing (main)

import App
import View
import Update
import Model exposing (Model, Flags)


main =
    Navigation.program UrlChange
        { view = View.view
        , init = App.init
        , update = Update.update
        , subscriptions = (\_ -> Sub.none)
        }
