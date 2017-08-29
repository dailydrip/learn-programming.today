module Types.Store
    exposing
        ( Model
        , new
        )

import Types.Post as Post
import Dict exposing (Dict)


type alias Model =
    { posts : Dict Int Post.Model
    }


new : Model
new =
    { posts = Dict.empty
    }
