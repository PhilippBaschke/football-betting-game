module View exposing (root)

import Types exposing (..)
import Html exposing (..)


root: Model -> Html Msg
root model =
  if model.route == HomeRoute then
    div []
      [ p [] [ text "/" ]
      ]

  else
    div [] (List.map path model.location.path)


path: String -> Html Msg
path path =
  p [] [ text path ]
