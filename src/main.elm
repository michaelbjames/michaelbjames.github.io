module Main exposing (main)

import Html.App exposing (beginnerProgram)

import Model exposing (Model, baseModel)
import View exposing (view)

-- Keeping these stupid so I can make it responsive later
update : update -> model -> model
update _ = identity

main : Program Never
main =
  beginnerProgram
    { model = baseModel
    , view = view
    , update = update
    }
