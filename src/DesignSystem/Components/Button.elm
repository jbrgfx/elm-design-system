module DesignSystem.Components.Button exposing (..)

import DesignSystem.Theme exposing (..)
import Element exposing (..)
import Element.Background as Background
import Element.Border as Border
import Element.Font as Font


buttonView : Theme -> String -> Element msg
buttonView theme buttonText =
    el
        ([ Background.color (colorFor theme "primaryButton")
         , paddingXY
            (spaceFor theme "primaryButtonPaddingX")
            (spaceFor theme "primaryButtonPaddingY")
         , Border.rounded (borderRadiusFor theme "primaryButton")
         , Font.family (typeFaceFor theme "primaryButton")
         , Font.size (typeSizeFor theme "primaryButton")
         , Font.color (colorFor theme "primaryButtonText")
         ]
        )
        (text buttonText)
