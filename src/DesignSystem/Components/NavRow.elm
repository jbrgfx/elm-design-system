module DesignSystem.Components.NavRow exposing (..)

import DesignSystem.Tokens exposing (..)
import DesignSystem.Theme exposing (..)
import Element exposing (..)
import Element.Background as Background
import Element.Font as Font

navRowView : Theme -> String -> Element msg
navRowView theme navRowText =
  row [ Background.color (colorFor theme "cardBg")
      , Font.color (colorFor theme "header4")
      ] [ text "nav row" ]
