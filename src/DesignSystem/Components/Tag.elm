module DesignSystem.Components.Tag exposing (..)

import DesignSystem.Tokens.Color as Color exposing (color, Token(..))
import DesignSystem.Tokens.Space as Space exposing (space, Token(..))
import DesignSystem.Tokens.Typography as Typography exposing (withTypography, Token(..))
import Element exposing (..)
import Element.Background as Background
import Element.Border as Border


type alias Tag =
    { name : String
    , id : Int
    }


tagView : Tag -> Element msg
tagView tag =
    el
        ([ Background.color (color MediumBGColor)
         , padding (space SpaceS)
         , Border.rounded 4
         ]
            |> withTypography InterfaceSDark
        )
        (text tag.name)
