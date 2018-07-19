module DesignSystem.Tokens.Space exposing (..)


type Token
    = SpaceXS
    | SpaceS
    | SpaceM
    | SpaceL
    | SpaceXL


space : Token -> Int
space spaceToken =
    case spaceToken of
        SpaceXS ->
            4

        SpaceS ->
            8

        SpaceM ->
            16

        SpaceL ->
            32

        SpaceXL ->
            64
