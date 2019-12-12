-- 🐼 🐢 🐺 🐶 🐱 🐨 🐌
-- We need to add "Reset" functionallity to our little app. 
-- When you click on the button, state of the counter needs be 0
-- follow our friend 🦊 which will give you tips along the way
-- Also, 🐢 will be giving you additional information about what is what.
-- listen the 🐢 she's know what's up!

module Main exposing (main)

import Browser
import Html exposing (Html, button, div, text)
import Html.Events exposing (onClick)


type alias Model =
    { count : Int }

-- 🐢 Model is what gives us 'state' 
--    that reflects the state of the app
initialModel : Model
initialModel =
    { count = 0 }

-- 🐢 We anounce the change to Model by 🔥 Msg's
type Msg
    = Increment
    | Decrement
--  | "Brrrr"
-- 🦊 Uncomment 'Brr' and see what happends? 
--    You need to add here name of the message, you'll be dispatching
--    Can we use "Brrr"? Why or Why not?


-- 🐢 but update fn is what will change the state ultimatelly
update : Msg -> Model -> Model
update msg model =
    case msg of
        Increment ->
            { model | count = model.count + 1 }

        Decrement ->
            { model | count = model.count - 1 }
-- 🦊 Here you need to define how to your message will change the model by returning new model

view : Model -> Html Msg
view model =
    div []
        [ button [ onClick Increment ] [ text "+1" ]
        , div [] [ text <| String.fromInt model.count ]
        , button [ onClick Decrement ] [ text "-1" ]
        -- 🦊  Here we need to actually 🔥 the message via onClick
        -- also this needs to be button with text
        ]


main : Program () Model Msg
main =
    Browser.sandbox
        { init = initialModel
        , view = view
        , update = update
        }


-- Stuck? see the result - https://ellie-app.com/7sPrxSMK7PNa1
