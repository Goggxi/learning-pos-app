const express = require('express');
const route = express.Router();
const { createProduct, getAllProducts } = require('../controllers/products');

route.route('/').post(async (req, res) => {
  const { name, price, stock } = req.body;
  const data = { name, price, stock };
  res.send(await createProduct(data));
})

route.route('/').get(async (req, res) => {
  res.send(await getAllProducts());
})


module.exports = route