module Main exposing (main)

import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Events exposing (onInput, onClick)
import Debug exposing (log)

{-
    Type annotation. It says "main has type Program and should Never expect a flags argument"
    There are a few program candidates, including beginnerProgram, program and programWithFlags

    type definition of Program: type Program flags model msg
    Elm has the concept of “flags” which the JavaScript Interop section of the guide describes
    as: “static configuration for your Elm program”.
    You can use it to create a headless program or give an initial state or configuration to your application.

    Every Elm app needs to define a main value. Because it usually calls fullscreen() method, which excepts a
    main value.
-}
main : Program Never Vehicle Msg
main =
    Html.beginnerProgram
        { model = vehicle
        , update = update
        , view = view
        }



{-
    MODEL
    * Model type
    * Initialize model with empty value
    The model is the state of the program

    A type alias is a definition for use in type annotations.
    It's actually comparable with a definition for Java Objects or JSON objects.
    A record look similar to objects in JavaScript. However, records in Elm are immutable.
    So updating the model returns a new model with only the changed data copied.
-}


type alias Vehicle =
    { licensePlate : String
    , mileage : String
    , firstName : String
    , lastName : String
    }


vehicle : Vehicle
vehicle =
    Vehicle "" "" "" ""


-- UPDATE


type Msg
    = LicensePlate String
    | Mileage String
    | FirstName String
    | LastName String
    | Submit


{-
    A series of items separated by -> represent argument types until the last one, which is the return type.
    The reason we don't use a different notation to indicate the return has to do with currying.
    In a nutshell, currying means if you don't pass all the arguments to a function, another function will be
    returned that accepts whatever arguments are still needed. You can learn more about currying elsewhere.
-}
update : Msg -> Vehicle -> Vehicle
update msg vehicle =
    case msg of
        LicensePlate licensePlate ->
            { vehicle | licensePlate = licensePlate }

        Mileage mileage ->
            { vehicle | mileage = mileage }

        FirstName firstName ->
            { vehicle | firstName = firstName }

        LastName lastName ->
            { vehicle | lastName = lastName }

        Submit ->
            let
                _ = Debug.log "Submitted!!" vehicle
            in
                vehicle



-- VIEW


view : Vehicle -> Html Msg
view vehicle =
    div []
        [ input [ type_ "text", placeholder "License plate", onInput LicensePlate ] []
        , input [ type_ "text", placeholder "Mileage", onInput Mileage ] []
        , input [ type_ "text", placeholder "First name", onInput FirstName ] []
        , input [ type_ "text", placeholder "Last name", onInput LastName ] []
        , button [ type_ "submit", onClick Submit ]
            [ text "Submit" ]
        ]
