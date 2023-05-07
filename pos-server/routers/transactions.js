const express = require('express');
const router = express.Router();
const { checkout } = require("../controllers/transactions");
const { randomString } = require("../helpers/utils");

router.route('/').post(async (req, res) => {
  const { total_price, paid } = req.body;
  const data = { no_order: randomString("TRX", 4), total_price, paid };
  const query = await checkout(data);
  if (query.success) {
    res.status(200).json(query);
  }
  res.status(400).json(query);
});


module.exports = router;