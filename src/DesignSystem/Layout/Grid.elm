module DesignSystem.Layout.Grid exposing (..)

import Html exposing (Html, div)
import Html.Attributes
import DesignSystem.Tokens.Space as Space exposing (space, Token(..))
import List.Extra


grid : Int -> Int -> Int -> List (Html msg) -> Html msg
grid numPerRow spacingX spacingY items =
    let
        gridTemplateColumns =
            "repeat(" ++ (toString numPerRow) ++ ", 1fr)"

        gridColumnGap =
            (toString spacingX) ++ "px"

        gridRowGap =
            (toString spacingY) ++ "px"

        griddedItems =
            List.map (\i -> div [] [ i ]) items
    in
        div
            [ (Html.Attributes.style
                [ ( "display", "grid" )
                , ( "grid-template-columns", gridTemplateColumns )
                , ( "align-items", "center" )
                , ( "grid-row-gap", gridRowGap )
                , ( "grid-column-gap", gridColumnGap )
                ]
              )
            ]
            griddedItems
