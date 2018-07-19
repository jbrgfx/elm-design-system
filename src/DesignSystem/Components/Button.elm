module DesignSystem.Components.Button exposing (..)

import DesignSystem.Tokens.Color as Color exposing (color, Token(..))
import DesignSystem.Tokens.Space as Space exposing (space, Token(..))
import DesignSystem.Tokens.Typography as Typography exposing (withTypography, Token(..))
import Element exposing (..)
import Element.Background as Background
import Element.Border as Border


buttonView : String -> Element msg
buttonView buttonText =
    el
        ([ Background.color (color ActionColor)
         , paddingXY (space SpaceL) (space SpaceM)
         , Border.rounded 4
         ]
            |> withTypography InterfaceSLight
        )
        (text buttonText)
