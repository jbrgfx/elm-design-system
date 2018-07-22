module DesignSystem.Tokens.Typography.Face exposing (..)

import DesignSystem.Tokens exposing (..)
import Dict


defaultTypeFaceTokens : Mappings (List String) -> Tokens (List String)
defaultTypeFaceTokens mappings =
    let
        mappingsLookup =
            Dict.fromList mappings

        valuesLookup =
            Dict.fromList
                [ ( "sans1", [ "Lato", "sans-serif" ] )
                ]
    in
        Tokens mappingsLookup valuesLookup
