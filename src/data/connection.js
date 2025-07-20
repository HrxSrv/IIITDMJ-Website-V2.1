const { Pool } = require("pg");

const pool = new Pool({
  host: process.env.DB_HOST || "db",  // Changed from "localhost"
  user: "superAdmin",
  password: "9455957884",
  database: "IIITDMJ",
  port: 5432,
});

module.exports = pool;