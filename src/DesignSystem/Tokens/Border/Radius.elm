module DesignSystem.Tokens.Border.Radius exposing (..)

import DesignSystem.Tokens exposing (..)
import Dict


defaultBorderRadiusTokens : Mappings Int -> Tokens Int
defaultBorderRadiusTokens mappings =
    let
        mappingsLookup =
            Dict.fromList mappings

        valuesLookup =
            Dict.fromList
                [ ( "sharp", 0 )
                , ( "medium", 4 )
                , ( "maxiumum", 9999 )
                ]
    in
        Tokens mappingsLookup valuesLookup
