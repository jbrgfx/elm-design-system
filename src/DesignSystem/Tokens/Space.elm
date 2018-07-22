module DesignSystem.Tokens.Space exposing (..)

import DesignSystem.Tokens exposing (Tokens(..), mapToKey, hasValue, valueForKey)
import Dict


defaultSpaceTokens : Tokens Int
defaultSpaceTokens =
    let
        mappingsLookup =
            Dict.fromList
                [ ( "pagePadding", mapToKey "xl" )
                , ( "cardPaddingX", mapToKey "m" )
                , ( "cardPaddingY", mapToKey "m" )
                , ( "cardsSpacingX", mapToKey "l" )
                , ( "cardsSpacingY", mapToKey "l" )
                , ( "cardContentSpacing", mapToKey "m" )
                , ( "cardHeaderSpacing", mapToKey "s" )
                , ( "tagPaddingX", mapToKey "s" )
                , ( "tagPaddingY", mapToKey "s" )
                , ( "tagsSpacingX", mapToKey "s" )
                , ( "tagsSpacingY", mapToKey "s" )
                , ( "primaryButtonPaddingX", mapToKey "l" )
                , ( "primaryButtonPaddingY", mapToKey "m" )
                ]

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
