module DesignSystem.Layout.Grid exposing (..)

import Html
import Html.Attributes
import DesignSystem.Tokens.Space as Space exposing (space, Token(..))
import Element exposing (..)
import List.Extra


grid : Int -> Int -> Int -> List (Element msg) -> Element msg
grid numPerRow spacingX spacingY items =
    let
        gridTemplateColumns =
            "repeat(" ++ (toString numPerRow) ++ ", 1fr)"

        gridColumnGap =
            (toString spacingX) ++ "px"

        gridRowGap =
            (toString spacingY) ++ "px"

        griddedItems =
            List.map
                (el
                    []
                )
                items
    in
        row
            [ (Html.Attributes.style
                [ ( "display", "grid" )
                , ( "grid-template-columns", gridTemplateColumns )
                , ( "align-items", "center" )
                , ( "grid-row-gap", gridRowGap )
                , ( "grid-column-gap", gridColumnGap )
                ]
              )
                |> htmlAttribute
            ]
            griddedItems
