module View exposing (view)

import Html exposing (Html)
import Html as H
import Html.Attributes as HA

import Links
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
  , H.br [] []
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
    , "Given several tech talks about: functional reactive programming, stacking diffs, and golang at Uber"
    , "Added expense code management to admin tool"
    , "Improved policy error messaging"
    ]
  ]

prezi = workEntry {place="Prezi", date="June 2014 - August 2014", title="Elm intern"}
  [ H.p [] [H.text """
 I collaborated with Evan Czaplicki, Elm-lang's author, for a summer working at Prezi's
 headquarters in beautiful Budapest.
    """]
  , ul
    [ "Wrote the second (and current) iteration of the time-traveling debugger"
    , "Authored the blog post about it"
    , "Polled and worked closely with the Elm open-source community"
    , "Devised a performance testing framework for Elm"
    ]
  ]

nomic = workEntry {place="Nomic", date="June 2013 - August 2013", title="Full-stack intern"}
  [ H.p [] [H.text """
My first technical internship showed me how a CRUD app works from the very front to the back.
Nomic was a way to discover and show off the incredible people in your neighborhood--
learn that the barista at your local coffee shop also does pottery on the side.
The whole company was 6 people so I got to help with everything.
    """]
  , ul
    [ "Created photo messaging feature on the Node.js backend"
    , "implemented web frontend for photo feature on chat app"
    , "learned and wrote the iOS feature for photo messaging"
    ]
  ]

t3 = bodyEntry "tic-tac-toe"
  [ H.p [] [H.text """
You've played tic-tac-toe. This game will always beat you. It figures out the best move, naviagting
a large tree of possible moves. The code is generalized to easily apply the solver logic
to any game.
    """]
  ]

wikiSolver = bodyEntry "wiki solver"
  [ H.p [] [H.text """
Let's play a game: I give you two wikipedia pages and you need to find the fewest page clicks
required to get there. I think the average is about 3 clicks. This server/client pair shows you
the \"shortest path\" between any two pages using a basic fanning out search.
    """]
  ]

pottery = bodyEntry "pottery"
 [H.text "pottery"]

electronics = bodyEntry "electronics"
  [ H.text """
I wanted a nice speaker amplifier when I moved out to SF, but I didn't want to buy one.
I decided to build one. There was one problem: I didn't know anything about electrical engineering.
I've been teaching myself and built my amplifier!
It's a class D amplifier that can power two 80 watt speakers.
"""
  , H.br [] []
  , H.text "It sounds nice."
  ]

photography = bodyEntry "photography"
  [ H.text "phtography"
  , H.br [] []
  , H.a [HA.href Links.flickr] [H.text "see my photos"]
  ]
