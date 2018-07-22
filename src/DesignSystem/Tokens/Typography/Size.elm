module DesignSystem.Tokens.Typography.Size exposing (..)

import DesignSystem.Tokens exposing (..)
import Dict


defaultTypeSizeTokens : Mappings Int -> Tokens Int
defaultTypeSizeTokens mappings =
    let
        mappingsLookup =
            Dict.fromList mappings

        valuesLookup =
            Dict.fromList
                [ ( "xl", 36 )
                , ( "l", 28 )
                , ( "m", 20 )
                , ( "s", 14 )
                , ( "xs", 10 )
                ]
    in
        Tokens mappingsLookup valuesLookup
