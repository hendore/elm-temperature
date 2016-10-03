module Temperature.Convert
    exposing
        ( fahrenheitToCelsius
        , kelvinToCelsius
        , celsiusToFahrenheit
        , celsiusToKelvin
        , fahrenheitToKelvin
        , kelvinToFahrenheit
        )

{-| Library for converting between celsius, fahrenheit and kelvin temperature
scales.

# To celsius
@docs fahrenheitToCelsius, kelvinToCelsius

# To fahrenheit
@docs celsiusToFahrenheit, kelvinToFahrenheit

# To kelvin
@docs celsiusToKelvin, fahrenheitToKelvin
-}


{-| Converts temperature from fahrenheit to celsius.

    fahrenheitToCelsius 32 == 0
-}
fahrenheitToCelsius : Float -> Float
fahrenheitToCelsius fahrenheit =
    (fahrenheit - 32) / 1.8


{-| Converts temperature from kelvin to celsius scale.

    kelvinToCelsius 273.15 == 0
-}
kelvinToCelsius : Float -> Float
kelvinToCelsius kelvin =
    kelvin - 273.15


{-| Converts temperature from celsius to fahrenheit.

    fahrenheitToCelsius 20 == 68
-}
celsiusToFahrenheit : Float -> Float
celsiusToFahrenheit celsius =
    (celsius * 1.8) + 32


{-| Converts temperature from celsius to kelvin.

    celsiusToKelvin 0 == 273.15
-}
celsiusToKelvin : Float -> Float
celsiusToKelvin celsius =
    celsius + 273.15


{-| Converts temperature from fahrenheit to kelvin.

    fahrenheitToKelvin 23 == 268.15
-}
fahrenheitToKelvin : Float -> Float
fahrenheitToKelvin fahrenheit =
    fahrenheitToCelsius fahrenheit |> celsiusToKelvin


{-| Converts temperature from kelvin to fahrenheit.

    kelvinToFahrenheit 299.817 == 80
-}
kelvinToFahrenheit : Float -> Float
kelvinToFahrenheit kelvin =
    kelvinToCelsius kelvin |> celsiusToFahrenheit
