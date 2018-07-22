module DesignSystem.Components.Headers exposing (..)

import DesignSystem.Tokens exposing (..)
import DesignSystem.Theme exposing (..)
import DesignSystem.Layout.TextBlock exposing (textBlock)
import Element exposing (..)
import Element.Font as Font


header3 : Theme -> String -> Element msg
header3 theme content =
    textBlock
        [ Font.family (typeFaceFor theme "header3")
        , Font.size (typeSizeFor theme "header3")
        , typeWeightFor theme "header3"
        , Font.letterSpacing (typeTrackingFor theme "header3")
        , Font.color (colorFor theme "header3")
        ]
        [ text <| String.toUpper content ]


header3DefaultThemeMappings : ThemeMappings
header3DefaultThemeMappings =
    { colors =
        [ ( "header3", mapToKey "gray-d2" )
        ]
    , spaces = []
    , typeSizes =
        [ ( "header3", mapToKey "s" )
        ]
    , typeFaces =
        [ ( "header3", mapToKey "sans1" )
        ]
    , typeWeights =
        [ ( "header3", mapToKey "bold" )
        ]
    , typeTrackings =
        [ ( "header3", mapToKey "loose" )
        ]
    , borderRadii = []
    }


header4 : Theme -> String -> Element msg
header4 theme content =
    textBlock
        [ Font.family (typeFaceFor theme "header4")
        , Font.size (typeSizeFor theme "header4")
        , typeWeightFor theme "header4"
        , Font.color (colorFor theme "header4")
        ]
        [ text content ]


header4DefaultThemeMappings : ThemeMappings
header4DefaultThemeMappings =
    { colors =
        [ ( "header4", mapToKey "black" )
        ]
    , spaces = []
    , typeSizes =
        [ ( "header4", mapToKey "m" )
        ]
    , typeFaces =
        [ ( "header4", mapToKey "sans1" )
        ]
    , typeWeights =
        [ ( "header4", mapToKey "bold" )
        ]
    , typeTrackings = []
    , borderRadii = []
    }


bodyText : Theme -> String -> Element msg
bodyText theme content =
    textBlock
        [ Font.family (typeFaceFor theme "paragraph")
        , Font.size (typeSizeFor theme "paragraph")
        , Font.color (colorFor theme "paragraph")
        ]
        [ text content ]


bodyTextDefaultThemeMappings : ThemeMappings
bodyTextDefaultThemeMappings =
    { colors =
        [ ( "paragraph", mapToKey "gray-d2" )
        ]
    , spaces = []
    , typeSizes =
        [ ( "paragraph", mapToKey "s" )
        ]
    , typeFaces =
        [ ( "paragraph", mapToKey "sans1" )
        ]
    , typeWeights =
        [ ( "paragraph", mapToKey "regular" )
        ]
    , typeTrackings = []
    , borderRadii = []
    }
