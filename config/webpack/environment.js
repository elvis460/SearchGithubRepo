const { environment } = require('@rails/webpacker')
const webpack = require('webpack')


environment.plugins.append('Provide',
	new webpack.ProvidePlugin({
		$: 'jquery',
		jQuery: 'jquery'
	})
)

environment.plugins.prepend('env',
	new webpack.DefinePlugin({
		'URL': JSON.stringify(process.env.URL)
	})
)
module.exports = environment
