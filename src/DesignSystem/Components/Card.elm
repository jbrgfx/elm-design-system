module DesignSystem.Components.Card exposing (..)

import DesignSystem.Components.Tag exposing (..)
import DesignSystem.Components.Button exposing (..)
import DesignSystem.Tokens.Color as Color exposing (color, Token(..))
import DesignSystem.Tokens.Space as Space exposing (space, Token(..))
import DesignSystem.Tokens.Typography as Typography exposing (withTypography, Token(..))
import DesignSystem.Layout.Grid exposing (grid)
import DesignSystem.Layout.InlineContainer exposing (inlineContainer)
import Element exposing (..)
import Element.Background as Background
import Element.Border as Border


type alias Card =
    { category : String
    , thumbnailUrl : String
    , title : String
    , description : String
    , tags : List Tag
    }


dummyCard : Card
dummyCard =
    { category = "Video"
    , thumbnailUrl = "https://upload.wikimedia.org/wikipedia/commons/0/00/Crab_Nebula.jpg"
    , title = "Supernova"
    , description = "An astronomical event that occurs during the last stages of a massive star's life."
    , tags =
        [ { name = "Galaxies", id = 1 }
        , { name = "Milky Way", id = 2 }
        , { name = "Speed of Light", id = 3 }
        ]
    }


cardsView : List Card -> Element msg
cardsView cards =
    List.map cardView cards
        |> grid 3 (space SpaceL) (space SpaceL)


cardView : Card -> Element msg
cardView card =
    let
        thumbnailView =
            el
                [ width fill
                , height (px 200)
                , Background.image card.thumbnailUrl
                ]
                none

        bodyView =
            el
                [ width fill
                , Background.color (color LightBGColor)
                , padding (space SpaceM)
                ]
                (column [ spacing (space SpaceM) ]
                    [ (column [ spacing (space SpaceS) ]
                        [ categoryView
                        , titleView
                        ]
                      )
                    , descriptionView
                    , tagsView
                    , buttonView "View"
                    ]
                )

        categoryView =
            el
                ([]
                    |> withTypography HeaderL
                )
                (text (String.toUpper card.category))

        titleView =
            el
                ([]
                    |> withTypography HeaderM
                )
                (text card.title)

        descriptionView =
            el
                ([]
                    |> withTypography ParagraphS
                )
                (paragraph []
                    [ (text card.description) ]
                )

        tagsView =
            el []
                (inlineContainer (List.map tagView card.tags) (space SpaceS) (space SpaceS))
    in
        column [ width fill ]
            [ thumbnailView
            , bodyView
            ]
