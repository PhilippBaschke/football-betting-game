module Types exposing (..)

import Hop.Types exposing (Location)


type Msg
  = None


type alias Model =
  { location : Location
  , route : Route
  }


type Route
  = HomeRoute
  | NotFoundRoute
