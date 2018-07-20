module DesignSystem.Layout.TextBlock exposing (textBlock)

import Element exposing (..)


textBlock : List (Attribute msg) -> List (Element msg) -> Element msg
textBlock attributes content =
    paragraph
        (attributes ++ [ width fill ])
        content
