module View exposing (view)

import Html exposing (Html)
import Html as H
import Html.Attributes as HA

import Model exposing (Model)
import Sidebar exposing (sidebar)

view : Model -> Html msg
view _ =
  H.div [HA.class "row"]
   [ H.br [] [] 
   , H.div [HA.class "medium-11 small-centered columns"]
      [ H.div [HA.class "row"]
        [ H.div
          [ HA.class "columns medium-3"
          , HA.style
            [ ("position", "fixed")
            , ("max-width", "300px")
            ]
          ] [sidebar]
        , H.div
          [ HA.class "columns medium-8"
          , HA.style
            [ ("max-width", "700px")
            ]
          ] [centralViewport]
        ]
      ]
    ]

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

workEntry : {date:String, place:String, title:String} -> List (Html msg) -> Html msg
workEntry info body = H.div []
  [ H.strong [] [H.text info.place]
  , H.text " | "
  , H.text info.title
  , H.text " | "
  , H.i [] [H.text info.date]
  , H.div [] body
  ]

ul : List String -> Html msg
ul strs =
  H.ul [] (List.map (\str -> H.li [] [H.text str]) strs)

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

uber = workEntry {place="Uber", date="June 2015 - present", title="Software Engineer"}
 [ H.p [] [H.text """
 Hired as a front-end engineer, I refactored and maintain business.uber.com. After a few months,
 I wanted to see more of the stack, so I transitioned to a full-stack role where I've been since.
 In my time at Uber I have:
 """]
 , ul 
   [ "Migrated business.uber.com from backbone to redux"
   , "Designed and wrote frist golang service for Uber for Business"
   ]
 ]

prezi = workEntry {place="Prezi", date="June 2014 - August 2014", title="Elm intern"}
 [H.p [] [H.text """
 I collaborated with Evan Czaplicki, Elm-lang's author, for a summer working at Prezi's
 headquarters in beautiful Budapest.
 """]
 , ul
   [ "Wrote the second (and current) iteration of the time-traveling debugger"
   , "Authored the blog post about it"
   , "Polled and worked closely with the Elm open-source community"
   , "Devised a speed testing framework for Elm"
   ]
 ]

nomic = workEntry {place="Nomic", date="June 2013 - August 2013", title="Full-stack intern"}
 [H.text "nomic"]

t3 = bodyEntry "tic-tac-toe" [H.text "elm-tic-tac-toe"]

wikiSolver = bodyEntry "wiki solver" [H.text "wikipedia solver"]

pottery = bodyEntry "pottery"
 [H.text "pottery"]

electronics = bodyEntry "electronics"
 [H.text "electronics"]

photography = bodyEntry "photography"
 [H.text "phtography"]
