process.env.NODE_ENV = process.env.NODE_ENV || 'production'
process.env.URL = '/apis'

const environment = require('./environment')

module.exports = environment.toWebpackConfig()
