module DesignSystem.Components.NavRow exposing (..)

import DesignSystem.Tokens exposing (..)
import DesignSystem.Theme exposing (..)
import Element exposing (..)
import Element.Background as Background
import Element.Font as Font

navRowView : Theme -> String -> Element msg
navRowView theme navRowText =
  row [ Font.color (colorFor theme "primaryButtonText")
      ] [ text "nav row" ]
