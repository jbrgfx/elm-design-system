module DesignSystem.Tokens.Typography.Face exposing (..)

import DesignSystem.Tokens exposing (Tokens(..), mapToKey, hasValue, valueForKey)
import Dict


defaultTypeFaceTokens : Tokens (List String)
defaultTypeFaceTokens =
    let
        mappingsLookup =
            Dict.fromList
                [ ( "header3", mapToKey "sans1" )
                , ( "header4", mapToKey "sans1" )
                , ( "paragraph", mapToKey "sans1" )
                , ( "tag", mapToKey "sans1" )
                , ( "primaryButton", mapToKey "sans1" )
                ]

        valuesLookup =
            Dict.fromList
                [ ( "sans1", [ "Lato", "sans-serif" ] )
                ]
    in
        Tokens mappingsLookup valuesLookup
