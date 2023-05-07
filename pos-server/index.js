const express = require('express');
const bodyParser = require('body-parser');
const cors = require('cors');
const products = require('./routers/products');
const transactions = require('./routers/transactions');

const app = express();
const port = 3000;

app.use(cors());
app.use(bodyParser.json());

app.get('/', (req, res) => {
  res.send('Hello World! GOGGXI');
})

app.use('/products', products);
app.use('/transactions', transactions);

app.listen(port, () => {
  console.log(`Example app listening on port ${port}`);
})