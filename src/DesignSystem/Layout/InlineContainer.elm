module DesignSystem.Layout.InlineContainer exposing (..)

import Html
import Html.Attributes
import DesignSystem.Tokens.Space as Space exposing (space, Token(..))
import Element exposing (..)


inlineContainer : List (Element msg) -> Int -> Int -> Element msg
inlineContainer items spacingX spacingY =
    let
        parentAttributes =
            Html.Attributes.style
                [ ( "margin-bottom", (toString <| spacingY * -1) ++ "px" )
                ]
                |> htmlAttribute

        childAttributes =
            Html.Attributes.style
                [ ( "display", "inline-block" )
                , ( "margin-right", (toString spacingX) ++ "px" )
                , ( "margin-bottom", (toString spacingY) ++ "px" )
                ]
                |> htmlAttribute
    in
        row [ parentAttributes ]
            (List.map (el [ childAttributes ]) items)
