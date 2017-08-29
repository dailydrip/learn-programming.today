module Update exposing (update)

import Model exposing (Model)
import Msg exposing (Msg(..))


{- We are just storing the location in our history in this example, but
   normally, you would use a package like evancz/url-parser to parse the path
   or hash into nicely structured Elm values.
       <http://package.elm-lang.org/packages/evancz/url-parser/latest>
-}


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        UrlChange location ->
            ( { model | history = location :: model.history }
            , Cmd.none
            )

        Msg.NoOp ->
            ( model, Cmd.none )
