module DesignSystem.Tokens.Typography.Weight exposing (..)

import DesignSystem.Tokens exposing (Tokens(..), mapToKey, hasValue, valueForKey)
import Element exposing (Attribute)
import Element.Font as Font
import Dict


type Weight
    = Heavy
    | ExtraBold
    | Bold
    | SemiBold
    | Medium
    | Regular
    | Light
    | ExtraLight
    | Hairline


defaultTypeWeightTokens : Tokens Weight
defaultTypeWeightTokens =
    let
        mappingsLookup =
            Dict.fromList
                [ ( "header3", mapToKey "bold" )
                , ( "header4", mapToKey "bold" )
                , ( "paragraph", mapToKey "regular" )
                , ( "tag", mapToKey "regular" )
                , ( "primaryButton", mapToKey "regular" )
                ]

        valuesLookup =
            Dict.fromList
                [ ( "regular", Regular )
                , ( "bold", Bold )
                ]
    in
        Tokens mappingsLookup valuesLookup


toAttribute : Weight -> Attribute msg
toAttribute weight =
    case weight of
        Heavy ->
            Font.heavy

        ExtraBold ->
            Font.extraBold

        Bold ->
            Font.bold

        SemiBold ->
            Font.semiBold

        Medium ->
            Font.medium

        Regular ->
            Font.regular

        Light ->
            Font.light

        ExtraLight ->
            Font.extraLight

        Hairline ->
            Font.hairline
