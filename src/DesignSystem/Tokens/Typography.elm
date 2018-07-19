module DesignSystem.Tokens.Typography exposing (..)

import DesignSystem.Tokens.Color as Color exposing (color, Token(..))
import Html exposing (Attribute)
import Html.Attributes exposing (style)


type Token
    = HeaderL
    | HeaderM
    | ParagraphS
    | InterfaceSDark
    | InterfaceSLight


type FontSize
    = FontSizeXS
    | FontSizeS
    | FontSizeM
    | FontSizeL


fontSize : FontSize -> Int
fontSize size =
    case size of
        FontSizeXS ->
            10

        FontSizeS ->
            14

        FontSizeM ->
            20

        FontSizeL ->
            28


withTypography : Token -> List (Attribute msg) -> List (Attribute msg)
withTypography typeStyle attributes =
    let
        sans1 =
            [ ( "font-family", "Lato" ) ]

        attributesToAdd =
            case typeStyle of
                HeaderL ->
                    [ ( "font-size", (fontSize FontSizeS) )
                    , ( "font-weight", "bold" )
                    , ("letter-spacing" "0.5")
                    , ( "color", (color MediumGrayColor) )
                    ]
                        ++ sans1

                HeaderM ->
                    [ ( "font-size", (fontSize FontSizeM) )
                    , ( "font-weight", "bold" )
                    , ( "color", (color DarkColor) )
                    ]
                        ++ sans1

                ParagraphS ->
                    [ Font.size (fontSize FontSizeS)
                    , Font.color (color MediumGrayColor)
                    ]
                        ++ sans1

                InterfaceSDark ->
                    [ Font.size (fontSize FontSizeS)
                    , Font.color (color DarkColor)
                    ]
                        ++ sans1

                InterfaceSLight ->
                    [ Font.size (fontSize FontSizeS)
                    , Font.color (color LightColor)
                    ]
                        ++ sans1
    in
        attributes ++ attributesToAdd
