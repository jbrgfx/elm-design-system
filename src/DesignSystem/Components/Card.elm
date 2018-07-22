module DesignSystem.Components.Card exposing (..)

import DesignSystem.Theme exposing (..)
import DesignSystem.Components.Headers exposing (..)
import DesignSystem.Components.Tag exposing (..)
import DesignSystem.Components.Button exposing (..)
import DesignSystem.Layout.InlineContainer exposing (inlineContainer)
import Element exposing (..)
import Element.Background as Background


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


cardView : Theme -> Card -> Element msg
cardView theme card =
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
                , Background.color (colorFor theme "cardBg")
                , paddingXY
                    (spaceFor theme "cardPaddingX")
                    (spaceFor theme "cardPaddingY")
                ]
                (column [ spacing (spaceFor theme "cardContentSpacing") ]
                    [ (column [ spacing (spaceFor theme "cardHeaderSpacing") ]
                        [ categoryView
                        , titleView
                        ]
                      )
                    , descriptionView
                    , tagsView
                    , buttonView theme "View"
                    ]
                )

        categoryView =
            header3 theme card.category

        titleView =
            header4 theme card.title

        descriptionView =
            bodyText theme card.description

        tagsView =
            inlineContainer (List.map (tagView theme) card.tags)
                (spaceFor theme "tagsSpacingX")
                (spaceFor theme "tagsSpacingY")
    in
        column [ width fill ]
            [ thumbnailView
            , bodyView
            ]
