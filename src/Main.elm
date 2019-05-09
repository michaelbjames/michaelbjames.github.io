module Main exposing (main)

import Browser exposing (sandbox)
import Model exposing (Model, baseModel)
import View exposing (view)


-- Keeping these stupid so I can make it responsive later


update : update -> model -> model
update _ =
    identity


main : Program () Model msg
main =
    sandbox
        { init = baseModel
        , view = view
        , update = update
        }
