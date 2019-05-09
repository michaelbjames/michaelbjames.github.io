module Sidebar exposing (sidebar)

import Html exposing (Html)
import Html as H
import Html.Attributes as HA
import Links


sidebar =
    let
        spacer =
            H.div [] [ H.br [] [] ]
    in
        H.div [ HA.class "align-center" ] <|
            List.intersperse spacer
                [ selfie
                , name
                , shortSummary
                , contactInformation
                , H.span [] []
                ]


selfie =
    H.img
        [ HA.src "assets/me.jpg"
        , HA.width 300
        , HA.style "border-radius" "100%"
        ]
        []


name =
    H.h4 [ HA.class "text-center" ] [ H.text "Michael B. James" ]


contactInformation =
    H.div [ HA.class "text-center" ]
        [ H.div [] [ H.a [ HA.href Links.resume ] [ H.text "resume" ] ]
        , H.div [] [ H.a [ HA.href Links.github ] [ H.text "github" ] ]
        , H.div [] [ H.a [ HA.href Links.facebook ] [ H.text "facebook" ] ]
        , H.div [] [ H.a [ HA.href Links.linkedin ] [ H.text "linkedin" ] ]
        , H.div [] [H.text "hello@<this domain name>.com"]
        ]


shortSummary =
    H.div [ HA.class "text-center" ]
        [ H.text "making it harder for engineers to mess up" ]
