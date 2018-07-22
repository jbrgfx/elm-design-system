module DesignSystem.Tokens.Typography.Tracking exposing (..)

import DesignSystem.Tokens exposing (Tokens(..), mapToKey, hasValue, valueForKey)
import Dict


defaultTypeTrackingTokens : Tokens Float
defaultTypeTrackingTokens =
    let
        mappingsLookup =
            Dict.fromList
                [ ( "header3", mapToKey "loose" )
                ]

        valuesLookup =
            Dict.fromList
                [ ( "tight", -0.5 )
                , ( "normal", 0.0 )
                , ( "loose", 0.5 )
                ]
    in
        Tokens mappingsLookup valuesLookup
