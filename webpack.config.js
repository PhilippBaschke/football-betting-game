module.exports = {
  'entry': './src/index.js',

  'output': {
    'path': './dist',
    'filename': 'index.js'
  },

  'module': {
    'loaders': [
      {
        'test': /\.html$/,
        'exclude': /node_modules/,
        'loader': 'file?name=[name].[ext]'
      },
      {
        'test': /\.elm$/,
        'exclude': [/elm-stuff/, /node_modules/],
        'loader': 'elm-webpack'
      }
    ],

    'noParse': /\.elm$/
  },

  'devServer': {
    'inline': true,
    'compress': true,
    'stats': 'errors-only'
  }
}
