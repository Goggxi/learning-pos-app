const express = require('express')
const bodyParser = require('body-parser')
const db = require('./config/connection')

const app = express()
const port = 3001

app.use(bodyParser.json())

app.get('/', (req, res) => {
  res.send('Hello World! GOGGXI')
})

app.post('/product', (req, res) => {
  console.log(req.body);
  res.send('Got a POST request')
})

app.listen(port, () => {
  console.log(`Example app listening on port ${port}`)
})