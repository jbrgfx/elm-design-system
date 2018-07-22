module DesignSystem.Tokens.Border.Radius exposing (..)

import DesignSystem.Tokens exposing (Tokens(..), mapToKey, hasValue, valueForKey)
import Dict


defaultBorderRadiusTokens : Tokens Int
defaultBorderRadiusTokens =
    let
        mappingsLookup =
            Dict.fromList
                [ ( "tag", mapToKey "medium" )
                , ( "primaryButton", mapToKey "medium" )
                ]

        valuesLookup =
            Dict.fromList
                [ ( "sharp", 0 )
                , ( "medium", 4 )
                , ( "maxiumum", 9999 )
                ]
    in
        Tokens mappingsLookup valuesLookup
