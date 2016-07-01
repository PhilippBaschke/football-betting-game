module App exposing (main)

import State
import View
import Navigation
import Hop exposing (matchUrl)
import Routing.Config


main: Program Never
main =
  Navigation.program
    (Navigation.makeParser (.href >> matchUrl Routing.Config.config))
    { init = State.init
    , update = State.update
    , urlUpdate = State.urlUpdate
    , subscriptions = always Sub.none
    , view = View.root
    }
