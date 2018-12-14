const express = require('express')
const proxy = require('http-proxy-middleware')

const config = require('./config/proxy.json')

const app = express()

app.use(express.static('dist'))

config.proxys.forEach(item => {
    app.use(item.path, proxy(item.config))
})

app.get('/', (req, res) => res.sendfile(config.index || './dist/index.html'))

app.listen(config.port, () => console.log(`listening on port ${config.port}`))