const { environment } = require('@rails/webpacker')
const webpack = require('webpack')


environment.plugins.append('Provide',
	new webpack.ProvidePlugin({
		$: 'jquery',
		jQuery: 'jquery',
		Popper: ['popper.js', 'default']
	})
)

environment.plugins.prepend('env',
	new webpack.DefinePlugin({
		'URL': JSON.stringify(process.env.URL)
	})
)
module.exports = environment
