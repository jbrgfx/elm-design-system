module DesignSystem.Tokens exposing (valueForKey, mapToKey, hasValue, Tokens(..))

import Dict exposing (Dict)


type Tokens a
    = Tokens (MappingsLookup a) (ValuesLookup a)


type alias MappingsLookup a =
    Dict String (MappingOrValue a)


type MappingOrValue a
    = MappedToKey String
    | Value a


type alias ValuesLookup a =
    Dict String a


mapToKey : String -> MappingOrValue a
mapToKey =
    MappedToKey


hasValue : a -> MappingOrValue a
hasValue =
    Value


valueForKey : Tokens a -> a -> String -> a
valueForKey tokens default key =
    let
        ( mappingsLookup, valuesLookup ) =
            case tokens of
                Tokens m v ->
                    ( m, v )
    in
        case (Dict.get key mappingsLookup) of
            Just (MappedToKey mappedKey) ->
                valueForMappedKey valuesLookup key mappedKey
                    |> Maybe.withDefault default

            Just (Value value) ->
                value

            Nothing ->
                let
                    _ =
                        Debug.log "No value could be found for key: " key
                in
                    default


valueForMappedKey : ValuesLookup a -> String -> String -> Maybe a
valueForMappedKey valuesLookup key mappedKey =
    let
        value =
            Dict.get mappedKey valuesLookup

        _ =
            case value of
                Nothing ->
                    Debug.log "No value could be found for key & mapping: " ( key, mappedKey )

                _ ->
                    ( "", "" )
    in
        value
