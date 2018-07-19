module DesignSystem.Components.Button exposing (..)

import DesignSystem.Tokens.Color as Color exposing (color, Token(..))
import DesignSystem.Tokens.Space as Space exposing (space, Token(..))
import DesignSystem.Tokens.Typography as Typography exposing (withTypography, Token(..))
import Html exposing (Html, div, text)
import Html.Attributes exposing (style)


buttonView : String -> Html msg
buttonView buttonText =
    let
        padding =
            toString (space SpaceL) ++ " " ++ toString (space SpaceM)
    in
        div
            [ style
                [ ( "background-color", toString (color ActionColor) )
                , ( "padding", padding )
                , ( "border-radius", toString 4 )
                ]
                |> withTypography InterfaceSLight
            ]
            [ text buttonText ]
