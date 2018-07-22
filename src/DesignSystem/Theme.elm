module DesignSystem.Theme
    exposing
        ( Theme
        , default
        , colorFor
        , spaceFor
        , typeFaceFor
        , typeSizeFor
        , typeWeightFor
        , typeTrackingFor
        , borderRadiusFor
        )

import DesignSystem.Tokens exposing (valueForKey, Tokens(..))
import DesignSystem.Tokens.Color exposing (defaultColorTokens)
import DesignSystem.Tokens.Space exposing (defaultSpaceTokens)
import DesignSystem.Tokens.Typography.Size exposing (defaultTypeSizeTokens)
import DesignSystem.Tokens.Typography.Face exposing (defaultTypeFaceTokens)
import DesignSystem.Tokens.Typography.Weight as Weight exposing (Weight(..), defaultTypeWeightTokens)
import DesignSystem.Tokens.Typography.Tracking exposing (defaultTypeTrackingTokens)
import DesignSystem.Tokens.Border.Radius exposing (defaultBorderRadiusTokens)
import Color
import Element
import Element.Font


type alias Theme =
    { colors : Tokens Color.Color
    , spaces : Tokens Int
    , typeSizes : Tokens Int
    , typeFaces : Tokens (List String)
    , typeWeights : Tokens Weight
    , typeTrackings : Tokens Float
    , borderRadii : Tokens Int
    }



-- TODO
-- , borderWidths : Tokens Int
-- , shadows : Tokens Shadow


default : Theme
default =
    { colors = defaultColorTokens
    , spaces = defaultSpaceTokens
    , typeSizes = defaultTypeSizeTokens
    , typeFaces = defaultTypeFaceTokens
    , typeWeights = defaultTypeWeightTokens
    , typeTrackings = defaultTypeTrackingTokens
    , borderRadii = defaultBorderRadiusTokens
    }


errorColor : Color.Color
errorColor =
    Color.rgb 255 132 0


colorFor : Theme -> String -> Color.Color
colorFor theme key =
    valueForKey theme.colors errorColor key


errorSpace : Int
errorSpace =
    420


spaceFor : Theme -> String -> Int
spaceFor theme key =
    valueForKey theme.spaces errorSpace key


errorTypeSize : Int
errorTypeSize =
    666


typeSizeFor : Theme -> String -> Int
typeSizeFor theme key =
    valueForKey theme.typeSizes errorTypeSize key


errorTypeFace : List String
errorTypeFace =
    [ "Wingdings", "Zapf Dingbats" ]


typeFaceFor : Theme -> String -> List Element.Font.Font
typeFaceFor theme key =
    valueForKey theme.typeFaces errorTypeFace key
        |> List.map Element.Font.typeface


errorTypeWeight : Weight
errorTypeWeight =
    Heavy


typeWeightFor : Theme -> String -> Element.Attribute msg
typeWeightFor theme key =
    valueForKey theme.typeWeights errorTypeWeight key
        |> Weight.toAttribute


errorTypeTracking : Float
errorTypeTracking =
    10.0


typeTrackingFor : Theme -> String -> Float
typeTrackingFor theme key =
    valueForKey theme.typeTrackings errorTypeTracking key


errorBorderRadius : Int
errorBorderRadius =
    666


borderRadiusFor : Theme -> String -> Int
borderRadiusFor theme key =
    valueForKey theme.borderRadii errorBorderRadius key
