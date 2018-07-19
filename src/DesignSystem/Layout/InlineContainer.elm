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
                , ( "width", "100%" )
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
        paragraph [ parentAttributes, width fill ]
            (List.map (el [ childAttributes ]) items)
