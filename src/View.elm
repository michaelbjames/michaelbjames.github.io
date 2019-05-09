module View exposing (view)

import Html exposing (Html)
import Html as H
import Html.Attributes as HA
import Links
import Model exposing (Model)
import Sidebar exposing (sidebar)


view : Model -> Html msg
view _ =
    H.div [ HA.class "row" ]
        [ H.br [] []
        , H.div [ HA.class "medium-11 small-centered columns" ]
            [ H.div [ HA.class "row" ]
                [ H.div
                    [ HA.class "columns medium-3 sidebar"
                    , HA.style
                        "max-width"
                        "300px"
                    ]
                    [ sidebar ]
                , H.div
                    [ HA.class "columns medium-8"
                    , HA.style
                        "max-width"
                        "700px"
                    ]
                    [ centralViewport ]
                ]
            ]
        ]


experience : String -> List (Html msg) -> Html msg
experience title body =
    H.div []
        [ H.h4 [] [ H.text title ]
        , H.div [] body
        ]


bodyEntry : String -> List (Html msg) -> Html msg
bodyEntry title body =
    H.div []
        [ H.h5 [] [ H.text title ]
        , H.div [] body
        ]


workEntry : { date : String, place : String, title : String } -> List (Html msg) -> Html msg
workEntry info body =
    H.div []
        [ H.strong [] [ H.text info.place ]
        , H.text " | "
        , H.text info.title
        , H.text " | "
        , H.i [] [ H.text info.date ]
        , H.div [] body
        ]


ul : List (Html msg) -> Html msg
ul elems =
    H.ul [] (List.map (\elem -> H.li [] [ elem ]) elems)


centralViewport =
    let
        eSpacer =
            H.div [ HA.class "experience-spacer" ] []

        spacer =
            H.div [ HA.class "object-spacer" ] []
    in
        H.div []
            [
             experience "school" <|
                List.intersperse spacer
                    [ ucsd
                    , tufts
                    ]
            , eSpacer
            , experience "work" <|
                List.intersperse spacer
                    [ jana
                    , uber
                    , prezi
                    -- , nomic
                    ]
            , eSpacer
            ]


summary =
    H.div [] []


ucsd =
    workEntry { place = "UC San Diego", date = "September 2018 - Current", title = "PhD Student" }
        [ H.p [] [ H.text """As a programming languages researcher, """
                 , H.strong [] [H.text """I want to make it harder to write "bad" code"""]
                 , H.text """, for whatever context we define bad. To that extent, I'm excited to work with the """
                 , H.a [HA.href Links.ucsdProgSys] [H.text "UCSD ProgSys group"]
                 , H.text " to use type-theoretic approaches to make make developers' lives better."
                 ]
        , H.p [] [ H.text "I work with "
                 , H.a [HA.href Links.nadiaP] [H.text "Nadia Polikarpova"]
                 , H.text " on program synthesis techniques. "
                 , H.text """
My current project, Hoogle+, is a type-directed component-based synthesis for Haskell.
Relying on a library of everyday functions and an input type query, the system
finds an inhabitant of the, potentially polymorphic, type using those provided component set."""
                 ]
        , H.p [] [ H.text """
I also care about nature--I want to enable those with a zest for adventure
to be able to safely and respectfully enjoy the ourdoors. I am the founder and president of UCSD's """
                 , H.a [HA.href Links.toc] [H.text "Outdoors Club"]
                 , H.text """. The club provides gear, experience, and opportunities to enjoy the
                     outdoors around San Diego."""]
        ]

tufts =
    workEntry { place = "Tufts University", date = "2011 - 2015", title = "Computer Science BS" } []


jana =
    workEntry { place = "Jana", date = "February 2017 - June 2018", title = "Software Engineer II" }
        [ H.p [] [ H.text """
I worked closely with our data scientists to ensure
they have the data and, equally importantly, the tools to do their job well.
     """ ]
        , ul
            [ H.text "Managed financial monitoring pipeline, tracking where the money comes from"
            , H.text "Created server to android app spanning features"
            , H.text "Develop more developer-friendly internal data pipeline libaries"
            ]
        ]


uber =
    workEntry { place = "Uber", date = "July 2015 - December 2016", title = "Software Engineer" }
        [ H.p [] [ H.text """
 Hired as a front-end engineer, I refactored and maintain business.uber.com. After a few months,
 I wanted to see more of the stack, so I transitioned to a full-stack role where I've been since.
 In my time at Uber I have:
     """ ]
        , ul
            [ H.span []
                [ H.text "Migrated "
                , H.a [ HA.href Links.bizUberCom ] [ H.text "business.uber.com" ]
                , H.text " from backbone to redux"
                ]
            , H.text "Designed and wrote frist golang service for Uber for Business"
            , H.text "Given several tech talks about: functional reactive programming, stacking diffs, and golang at Uber"
            , H.text "Added expense code management to admin tool"
            , H.text "Improved policy error messaging"
            ]

        -- , H.img [HA.src "assets/biz-uber-com.png"] []
        ]


prezi =
    workEntry { place = "Prezi", date = "June 2014 - August 2014", title = "Elm intern" }
        [ H.p [] [ H.text """
 I collaborated with Evan Czaplicki, Elm-lang's author, for a summer working at Prezi's
 headquarters in beautiful Budapest.
    """ ]
        , ul
            [ H.text "Wrote the second (and current) iteration of the time-traveling debugger"
            , H.a [ HA.href Links.timeTravel ] [ H.text "Authored the blog post about it" ]
            , H.text "Polled and worked closely with the Elm open-source community"
            , H.text "Devised a performance testing framework for Elm"
            ]

        -- , H.a [HA.href Links.timeTravel] [H.img [HA.src "assets/time-travel.png"] []]
        ]


nomic =
    workEntry { place = "Nomic", date = "June 2013 - August 2013", title = "Full-stack intern" }
        [ H.p [] [ H.text """
My first technical internship showed me how a CRUD app works from the very front to the back.
Nomic was a way to discover and show off the incredible people in your neighborhood--
learn that the barista at your local coffee shop also does pottery on the side.
The whole company was 6 people so I got to help with everything.
    """ ]
        , ul
            [ H.text "Created photo messaging feature on the Node.js backend"
            , H.text "implemented web frontend for photo feature on chat app"
            , H.text "learned and wrote the iOS feature for photo messaging"
            ]
        ]
