module DesignSystem.Components.Tag exposing (..)

import DesignSystem.Theme exposing (..)
import Element exposing (..)
import Element.Background as Background
import Element.Border as Border
import Element.Font as Font


type alias Tag =
    { name : String
    , id : Int
    }


tagView : Theme -> Tag -> Element msg
tagView theme tag =
    el
        ([ Background.color (colorFor theme "tagBg")
         , paddingXY
            (spaceFor theme "tagPaddingX")
            (spaceFor theme "tagPaddingY")
         , Border.rounded (borderRadiusFor theme "tag")
         , Font.family (typeFaceFor theme "tag")
         , Font.size (typeSizeFor theme "tag")
         , Font.color (colorFor theme "tagText")
         ]
        )
        (text tag.name)
