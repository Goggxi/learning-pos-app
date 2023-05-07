const mysql = require('mysql');
const util = require('util');
const env = require('dotenv');

env.config();

const connection = mysql.createConnection({
  host: process.env.DB_HOST,
  database: process.env.DB_NAME,
  user: process.env.DB_USERNAME,
  password: process.env.DB_PASSWORD,
});

connection.query = util.promisify(connection.query).bind(connection);

connection.connect((err) => {
  if (err) {
    console.error('error connecting: ' + err.stack);
    return;
  }
  console.log('Connected!');
});

module.exports = connection;