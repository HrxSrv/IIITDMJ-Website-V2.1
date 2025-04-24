const { DataTypes } = require('sequelize');
const sequelize = require('../sequelize'); // Assuming you have sequelize instance in sequelize.js

const Convocation = sequelize.define('convocation', {
  name: {
    type: DataTypes.STRING,
    allowNull: false,
  },
  data: {
    type: DataTypes.TEXT,
    allowNull: true,
  },
  location: {
    type: DataTypes.STRING,
    allowNull: false,
  },
  graduating_students: {
    type: DataTypes.JSON, // Array of objects (title, link)
    allowNull: true,
    defaultValue: []
  },
  medal_awardees: {
    type: DataTypes.JSON, // Array of objects (title, link)
    allowNull: true,
    defaultValue: []
  },
  guidelines: {
    type: DataTypes.JSON, // Array of objects (title, link)
    allowNull: true,
    defaultValue: []
  },
  description: {
    type: DataTypes.TEXT,
    allowNull: true,
  },
  read_more: {
    type: DataTypes.TEXT,
    allowNull: true,
  },
  media: {
    type: DataTypes.JSON, // Array of image/video links
    allowNull: true,
    defaultValue: []
  },
  background_image: {
    type: DataTypes.STRING,
    allowNull: true,
  }
});

module.exports = Convocation;