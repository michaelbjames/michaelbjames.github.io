module View exposing (view)

import Html exposing (Html)
import Html as H
import Html.Attributes as HA

import Model exposing (Model)

view : Model -> Html msg
view _ =
  H.span [] 
    [ sidebar
    , centralViewport
    ]

sidebar = H.div [HA.style [("width", "300px")]]
  [ selfie
  , name
  ]

selfie = H.img 
  [ HA.src "assets/me.jpg"
  , HA.width 300
  ] []

name = H.h3 [] [H.text "Michael B. James"]

experience : String -> List (Html msg) -> Html msg
experience title body = H.div []
  [ H.h4 [] [H.text title]
  , H.div [] body
  ]

bodyEntry : String -> List (Html msg) -> Html msg
bodyEntry title body = H.div []
  [ H.h5 [] [H.text title]
  , H.div [] body
  ]

centralViewport = H.div []
  [ summary
  , experience "work"
    [ uber
    , prezi
    , nomic
    ]
  , experience "side projects"
    [ t3
    , wikiSolver
    ]
  , experience "personal"
    [ pottery
    , electronics
    , photography
    ]
  ]

summary = H.div [] []

uber = bodyEntry "uber"
 [H.text "uber"]

prezi = bodyEntry "prezi"
 [H.text "prezi"]

nomic = bodyEntry "nomic"
 [H.text "nomic"]

t3 = bodyEntry "tic-tac-toe" [H.text "elm-tic-tac-toe"]

wikiSolver = bodyEntry "wiki solver" [H.text "wikipedia solver"]

pottery = bodyEntry "pottery"
 [H.text "pottery"]

electronics = bodyEntry "electronics"
 [H.text "electronics"]

photography = bodyEntry "photography"
 [H.text "phtography"]
