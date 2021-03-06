module DesignSystem.Tokens.Typography.Tracking exposing (..)

import DesignSystem.Tokens exposing (..)
import Dict


defaultTypeTrackingTokens : Mappings Float -> Tokens Float
defaultTypeTrackingTokens mappings =
    let
        mappingsLookup =
            Dict.fromList mappings

        valuesLookup =
            Dict.fromList
                [ ( "tight", -0.5 )
                , ( "normal", 0.0 )
                , ( "loose", 0.5 )
                ]
    in
        Tokens mappingsLookup valuesLookup
