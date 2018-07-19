module DesignSystem.Tokens.Color exposing (..)

import Color


type Token
    = ActionColor
    | DarkBGColor
    | MediumGrayColor
    | LightBGColor
    | MediumBGColor
    | DarkColor
    | LightColor


color : Token -> Color.Color
color uiColor =
    case uiColor of
        ActionColor ->
            Color.rgb 52 105 165

        DarkBGColor ->
            Color.rgb 58 67 94

        MediumGrayColor ->
            Color.rgb 124 133 156

        LightBGColor ->
            Color.rgb 226 228 233

        MediumBGColor ->
            Color.rgb 197 201 211

        DarkColor ->
            Color.rgb 33 36 43

        LightColor ->
            Color.rgb 255 255 255
