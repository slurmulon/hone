var path = require('path')
var webpack = require('webpack')
// var HtmlWebpackPlugin = require('html-webpack-plugin')

module.exports = {
  cache: false,
  entry: {
    app: [
      // 'babel-polyfill',
      './web/static/js/app.js'
    ]
  },
  output: {
    filename: '[name].bundle.js',
    publicPath: '/web/static/',
    path: path.resolve(__dirname, './priv/static/js')
  },
  resolve: {
    resolveLoader: {
      // root: path.join(__dirname, 'node_modules'),
      // moduleDirectories: [path.join(__dirname, 'node_modules')],
      packageMains: ['json-loader']
    },
    modulesDirectories: [ 'node_modules', __dirname + '/web/static/js' ]
  },
  devtool: 'source-map',
  // devServer:{
  //   contentBase: 'src'
  // },
  module: {
    loaders: [
      { test: /\.js$/,
        // include: './public/index.js',
        exclude: /(node_modules)/,
        loader: 'babel-loader',
        query: {
          presets: ['es2015']
        }
      },

      { test: /\.json$/,  loader: 'json-loader' },
      { test: /\.html$/,  loader: 'raw' },
      { test: /\.styl$/,  loader: 'style-loader!css-loader!stylus-loader' },
      { test: /\.css$/,   loader: 'style-loader!css' },

      { test: /\.png$/,   loader: 'url-loader?prefix=img/&limit=5000' },
      { test: /\.jpg$/,   loader: 'url-loader?prefix=img/&limit=5000' },
      { test: /\.gif$/,   loader: 'url-loader?prefix=img/&limit=5000' },
      { test: /\.woff$/,  loader: 'url-loader?prefix=font/&limit=5000' },
      { test: /\.woff2$/, loader: 'url-loader?prefix=font/&limit=5000' },
      { test: /\.eot$/,   loader: 'file-loader?prefix=font/' },
      { test: /\.ttf$/,   loader: 'file-loader?prefix=font/' },
      { test: /\.svg$/,   loader: 'file-loader?prefix=font/' }
    ],
    plugins: [
      // Dynamically inject chunked bundles
      // new HtmlWebpackPlugin({
      //   template: 'src/index.html',
      //   filename: 'dist/index.html',
      //   inject: 'body',
      //   hash: true
      // }),

      // Patch for modules that rely on global jQuery
      // new webpack.ProvidePlugin({
      //   $: 'jquery',
      //   jQuery: 'jquery'
      // }),

      // Establishes vendor bundle
      new webpack.optimize.CommonsChunkPlugin({
        name: 'vendor',
        minChunks: function (module, count) {
          return module.resource && module.resource.indexOf(path.resolve(__dirname, 'public')) === -1
        }
      })
    ]
  },
  debug: true
}
