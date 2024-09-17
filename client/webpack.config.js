const path = require('node:path');

module.exports = {
	entry: './src/index.jsx',
	mode: "development",
	resolve: {
		modules: [__dirname, "src", "node_modules"],
		extensions: ["*", ".js", ".jsx", ".tsx", ".ts"]
	},

	output: {
		filename: 'main.js',
		path: path.resolve(__dirname, 'bundle', 'static'),
	},

	module: {
		rules: [
			{
				test: /\.(js|ts)x?$/,
				exclude: /node_modules/,
				use: ["babel-loader"]
			},

			{
				test: /\.css$/,
				exclude: /node_modules/,
				use: ["style-loader", "css-loader"]
			},

			{
				test: /\.(png|svg|jpg|gif)$/,
				exclude: /node_modules/,
				use: ["file-loader"]
			}, 
		],
	},

	devServer: {
    	static: {
      		directory: path.resolve(__dirname, 'bundle'),
    	},
    	compress: true,
    	port: 9000,
		host: "127.0.0.1"
  },
}
