'use strict'

require('./index.html')
var Elm = require('./App.elm')

Elm.App.embed(document.getElementById('main'))
