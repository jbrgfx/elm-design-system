module DesignSystem.Components.SectionTitle exposing (..)

import DesignSystem.Tokens exposing (..)
import DesignSystem.Theme exposing (..)
import Element exposing (..)
import Element.Background as Background
import Element.Font as Font

sectionTitleView : Theme -> String -> Element msg
sectionTitleView theme navRowText =
  row [ Background.color (colorFor theme "cardBg")
      , Font.color (colorFor theme "header4")
      ] [ text "section title" ]
