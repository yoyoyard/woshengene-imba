const ExtractTextPlugin = require('extract-text-webpack-plugin');

module.exports = {
  module: {
    rules: [
      {
        test: /\.imba$/,
        loader: 'imba/loader',
      },
      {
        test: /\.scss$/,
        use: ExtractTextPlugin.extract({
          fallback: 'style-loader',
          use: ['css-loader', 'sass-loader']
        })
      },
      {
        test: /\.(gif|png|jpe?g|svg)$/i,
        use: [
          {
            loader: 'file-loader',
            options: {
              publicPath: '/',
            },
          },
          {
            loader: 'image-webpack-loader',
            options: {
              mozjpeg: {
                progressive: true,
                quality: 65
              },
              // optipng.enabled: false will disable optipng
              optipng: {
                enabled: false,
              },
              pngquant: {
                quality: '65-90',
                speed: 4
              },
              gifsicle: {
                interlaced: false,
              },
            }
          },
        ],
      }
    ],
  },
  resolve: {
    extensions: [".imba", ".js", ".json", ".scss", ]
  },
  entry: ["./src/index.imba", "./src/app.scss"],
  output: {  path: __dirname + '/dist', filename: "app.js" },
  plugins: [
    new ExtractTextPlugin('app.css')
  ],
  devServer: {
    historyApiFallback: true,
    publicPath: '/',
  }
}
