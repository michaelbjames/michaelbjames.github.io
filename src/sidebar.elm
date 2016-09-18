module Sidebar exposing (sidebar)

import Html exposing (Html)
import Html as H
import Html.Attributes as HA

sidebar = 
  let 
    spacer = H.div [] [H.br [] []]
  in
    H.div []
      <| List.intersperse spacer
        [ selfie
        , name
        , shortSummary
        , contactInformation
        ]

selfie = H.img 
  [ HA.src "assets/me.jpg"
  , HA.width 300
  , HA.style [("border-radius", "100%")]
  ] []

name = H.h4 [HA.class "text-center"] [H.text "Michael B. James"]

contactInformation = 
  let
      githubLink = "https://github.com/michaelbjames"
      resumeLink = "resume"
      facebookLink = "https://facebook.com/michaeljames"
      flickrLink = "https://flickr.com/photos/91802135@N08/"
      linkedinLink = "https://linkedin.com/in/michael-b-james"
  in
     H.div [HA.class "text-center"]
        [ H.div [] [H.a [HA.href resumeLink] [H.text "resume"]]
        , H.div [] [H.a [HA.href githubLink] [H.text "github"]]
        , H.div [] [H.a [HA.href facebookLink] [H.text "facebook"]]
        , H.div [] [H.a [HA.href flickrLink] [H.text "flickr"]]
        , H.div [] [H.a [HA.href linkedinLink] [H.text "linkedin"]]
        ]

shortSummary = H.div [HA.class "text-center"]
  [H.text "computer science is too cool to pick just one field"]

