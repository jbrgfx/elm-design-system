module DesignSystem.Layout.InlineContainer exposing (..)

import Html exposing (Html, div)
import Html.Attributes exposing (style)
import DesignSystem.Tokens.Space as Space exposing (space, Token(..))


inlineContainer : List (Html msg) -> Int -> Int -> Html msg
inlineContainer items spacingX spacingY =
    let
        parentAttributes =
            style
                [ ( "margin-bottom", (toString <| spacingY * -1) ++ "px" )
                ]

        childAttributes =
            style
                [ ( "display", "inline-block" )
                , ( "margin-right", (toString spacingX) ++ "px" )
                , ( "margin-bottom", (toString spacingY) ++ "px" )
                ]
    in
        div [ parentAttributes ]
            (List.map (\i -> div [ childAttributes ] [ i ]) items)
