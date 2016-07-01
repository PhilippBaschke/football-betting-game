module State exposing (..)

import Types exposing (..)
import Hop.Types


initialModel: Route -> Hop.Types.Location -> Model
initialModel route location =
  { location = location
  , route = route
  }


init: (Route, Hop.Types.Location) -> (Model, Cmd Msg)
init (route, location) =
  ( initialModel route location
  , Cmd.none
  )


update : Msg -> Model -> (Model, Cmd Msg)
update message model =
  case message of
    None ->
      ( model
      , Cmd.none
      )


urlUpdate : (Route, Hop.Types.Location) -> Model -> (Model, Cmd Msg)
urlUpdate (route, location) model =
  ( { model
      | route = route
      , location = location
    }
  , Cmd.none
  )
