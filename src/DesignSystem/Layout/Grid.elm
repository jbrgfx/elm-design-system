module DesignSystem.Layout.Grid exposing (..)

import Html.Attributes
import Element exposing (..)


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
