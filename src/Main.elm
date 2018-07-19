module Main exposing (..)

import DesignSystem.Components.Card exposing (..)
import Html exposing (Html)
import DesignSystem.Tokens.Color as Color exposing (color, Token(..))
import DesignSystem.Tokens.Space as Space exposing (space, Token(..))
import DesignSystem.Tokens.Typography as Typography exposing (withTypography, Token(..))
import Element exposing (..)
import Element.Background as Background
import Element.Font as Font
import Element.Border as Border
import List.Extra


main : Program Never Model Msg
main =
    Html.program
        { init = init
        , view = view
        , update = update
        , subscriptions = \_ -> Sub.none
        }


type alias Model =
    {}


type Msg
    = NoOp


init : ( Model, Cmd Msg )
init =
    ( {}, Cmd.none )


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    ( model, Cmd.none )


view : Model -> Html Msg
view model =
    Element.layout
        [ padding (space SpaceXL)
        , Background.color (color DarkBGColor)
        ]
        (cardsView cards)


cards : List Card
cards =
    List.repeat 4 dummyCard
