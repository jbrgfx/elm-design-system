module DesignSystem.Tokens.Typography.Size exposing (..)

import DesignSystem.Tokens exposing (Tokens(..), mapToKey, hasValue, valueForKey)
import Dict


defaultTypeSizeTokens : Tokens Int
defaultTypeSizeTokens =
    let
        mappingsLookup =
            Dict.fromList
                [ ( "header3", mapToKey "s" )
                , ( "header4", mapToKey "m" )
                , ( "paragraph", mapToKey "s" )
                , ( "tag", mapToKey "s" )
                , ( "primaryButton", mapToKey "s" )
                ]

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
