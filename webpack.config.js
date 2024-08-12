const path    = require("path")
const webpack = require("webpack")
const MiniCssExtractPlugin = require("mini-css-extract-plugin")

module.exports = {
  mode: "production",
  devtool: "source-map",
  entry: {
    application: "./app/javascript/packs/application.js"
  },
  output: {
    filename: "js/[name].js",
    sourceMapFilename: "[file].map",
    path: path.resolve(__dirname, "public/packs"),
  },
  module: {
    rules: [
      {
        test: /\.m?js$/,
        exclude: /node_modules\/(?!(?:@hotwired\/turbo)\/).*/,
        use: {
          loader: 'babel-loader'
        }
      }
    ]
  },
  plugins: [
    new webpack.optimize.LimitChunkCountPlugin({
      maxChunks: 1
    })
  ]
}
