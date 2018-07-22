module Main exposing (..)

import DesignSystem.Tokens exposing (..)
import DesignSystem.Theme as Theme exposing (..)
import DesignSystem.Components.Card as Card exposing (..)
import DesignSystem.Components.Button as Button
import DesignSystem.Components.Tag as Tag
import DesignSystem.Components.Headers as Headers exposing (..)
import Html exposing (Html)
import DesignSystem.Layout.Grid exposing (grid)
import Element exposing (..)
import Element.Background as Background


main : Program Never Model Msg
main =
    Html.program
        { init = init
        , view = view
        , update = update
        , subscriptions = \_ -> Sub.none
        }


type alias Model =
    { theme : Theme }


type Msg
    = NoOp


init : ( Model, Cmd Msg )
init =
    ( { theme =
            Theme.defaultWithMappings
                [ pageThemeMappings
                , Button.defaultThemeMappings
                , Card.defaultThemeMappings
                , Headers.header3DefaultThemeMappings
                , Headers.header4DefaultThemeMappings
                , Headers.bodyTextDefaultThemeMappings
                , Tag.defaultThemeMappings
                ]
      }
    , Cmd.none
    )


pageThemeMappings : ThemeMappings
pageThemeMappings =
    { colors =
        [ ( "pageBg", mapToKey "gray-d3" )
        ]
    , spaces =
        [ ( "pagePadding", mapToKey "xl" )
        ]
    , typeSizes = []
    , typeFaces = []
    , typeWeights = []
    , typeTrackings = []
    , borderRadii = []
    }


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    ( model, Cmd.none )


view : Model -> Html Msg
view model =
    let
        theme =
            model.theme
    in
        Element.layout
            [ padding (spaceFor theme "pagePadding")
            , Background.color (colorFor theme "pageBg")
            ]
            (el
                [ width fill
                , alignTop
                ]
                (cardsView theme cards)
            )


cardsView : Theme -> List Card -> Element msg
cardsView theme cards =
    List.map (cardView theme) cards
        |> grid 3
            (spaceFor theme "cardsSpacingX")
            (spaceFor theme "cardsSpacingY")


cards : List Card
cards =
    List.repeat 4 dummyCard
