module App exposing (..)

import Model
import Msg exposing (Msg(..))
import Navigation


init : Navigation.Location -> ( Model.Model, Cmd msg )
init location =
    ( Model.Model [ location ]
    , Cmd.none
    )


update : Msg -> Model.Model -> ( Model.Model, Cmd Msg )
update msg model =
    case msg of
        UrlChange location ->
            ( { model | history = location :: model.history }
            , Cmd.none
            )

        Msg.NoOp ->
            ( model, Cmd.none )
