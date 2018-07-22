module DesignSystem.Tokens.Space exposing (..)

import DesignSystem.Tokens exposing (..)
import Dict


defaultSpaceTokens : Mappings Int -> Tokens Int
defaultSpaceTokens mappings =
    let
        mappingsLookup =
            Dict.fromList mappings

        valuesLookup =
            Dict.fromList
                [ ( "xs", 4 )
                , ( "s", 8 )
                , ( "m", 16 )
                , ( "l", 32 )
                , ( "xl", 64 )
                ]
    in
        Tokens mappingsLookup valuesLookup
