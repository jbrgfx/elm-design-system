module Main exposing (..)

import DesignSystem.Components.Card exposing (..)
import Html exposing (Html)
import DesignSystem.Tokens.Color as Color exposing (color, Token(..))
import DesignSystem.Tokens.Space as Space exposing (space, Token(..))
import DesignSystem.Tokens.Typography as Typography exposing (withTypography, Token(..))
import DesignSystem.Layout.Grid exposing (grid)
import Element exposing (..)
import Element.Background as Background
import Element.Font as Font
import Element.Border as Border


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
        (el
            [ width fill
            , alignTop
            ]
            (cardsView cards)
        )


cardsView : List Card -> Element msg
cardsView cards =
    List.map cardView cards
        |> grid 3 (space SpaceL) (space SpaceL)


cards : List Card
cards =
    List.repeat 4 dummyCard
