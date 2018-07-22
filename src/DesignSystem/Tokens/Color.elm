module DesignSystem.Tokens.Color exposing (..)

import DesignSystem.Tokens exposing (Tokens(..), mapToKey, hasValue, valueForKey)
import Dict
import Color


defaultColorTokens : Tokens Color.Color
defaultColorTokens =
    let
        mappingsLookup =
            Dict.fromList
                [ ( "pageBg", mapToKey "gray-d3" )
                , ( "cardBg", mapToKey "gray-l2" )
                , ( "tagBg", mapToKey "gray" )
                , ( "tagText", mapToKey "gray-d3" )
                , ( "primaryButton", mapToKey "primary" )
                , ( "primaryButtonText", mapToKey "white" )
                , ( "header3", mapToKey "gray-d2" )
                , ( "header4", mapToKey "black" )
                , ( "paragraph", mapToKey "gray-d2" )
                ]

        valuesLookup =
            Dict.fromList
                [ ( "black", Color.rgb 41 41 41 )
                , ( "gray-d3", Color.rgb 71 71 71 )
                , ( "gray-d2", Color.rgb 102 102 102 )
                , ( "gray-d1", Color.rgb 184 184 184 )
                , ( "gray", Color.rgb 210 210 210 )
                , ( "gray-l1", Color.rgb 228 228 228 )
                , ( "gray-l2", Color.rgb 240 240 240 )
                , ( "gray-l3", Color.rgb 250 250 250 )
                , ( "white", Color.rgb 255 255 255 )
                , ( "primary", Color.rgb 69 107 161 )
                , ( "secondary", Color.rgb 84 94 106 )
                , ( "success", Color.rgb 92 25 172 )
                , ( "warning", Color.rgb 219 227 117 )
                , ( "error", Color.rgb 214 49 117 )
                , ( "highlight", Color.rgb 223 245 247 )
                ]
    in
        Tokens mappingsLookup valuesLookup
