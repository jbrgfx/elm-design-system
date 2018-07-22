module DesignSystem.Components.Headers exposing (..)

import DesignSystem.Theme exposing (..)
import DesignSystem.Layout.TextBlock exposing (textBlock)
import Element exposing (..)
import Element.Font as Font


header3 : Theme -> String -> Element msg
header3 theme content =
    textBlock
        [ Font.family (typeFaceFor theme "header3")
        , Font.size (typeSizeFor theme "header3")
        , typeWeightFor theme "header3"
        , Font.letterSpacing (typeTrackingFor theme "header3")
        , Font.color (colorFor theme "header3")
        ]
        [ text <| String.toUpper content ]


header4 : Theme -> String -> Element msg
header4 theme content =
    textBlock
        [ Font.family (typeFaceFor theme "header4")
        , Font.size (typeSizeFor theme "header4")
        , typeWeightFor theme "header4"
        , Font.color (colorFor theme "header4")
        ]
        [ text content ]


bodyText : Theme -> String -> Element msg
bodyText theme content =
    textBlock
        [ Font.family (typeFaceFor theme "paragraph")
        , Font.size (typeSizeFor theme "paragraph")
        , Font.color (colorFor theme "paragraph")
        ]
        [ text content ]
