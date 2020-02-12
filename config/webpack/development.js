process.env.NODE_ENV = process.env.NODE_ENV || 'development'
process.env.URL = 'http://localhost:3000/apis'

const environment = require('./environment')

module.exports = environment.toWebpackConfig()
