const { Sequelize } = require('sequelize');

const sequelize = new Sequelize('IIITDMJ', 'superAdmin', '9455957884', {
  host: process.env.DB_HOST || 'db',  // Changed from 'localhost'
  dialect: 'postgres',
  pool: {
    max: 5,
    min: 0,
    acquire: 30000,
    idle: 10000
  }
});

module.exports = sequelize;