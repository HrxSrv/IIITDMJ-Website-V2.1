/* eslint-disable no-unused-vars */
const express = require("express"); // for the server
const bodyParser = require("body-parser"); // for parsing and reading json data
const cors = require("cors");
const pool = require("./connection"); // Import the PostgreSQL pool from db.js
const sequelize = require('./sequelize'); // Sequelize instance
const downloadsModal = require('./modals/downloadsModal')
const newsModal = require('./modals/newsModal');
const marqueeModal = require('./modals/marqueeModal');
const achievementsModal = require('./modals/achievementsModal');
const noticesModal = require('./modals/noticesModal');
const homeCarouselModal = require('./modals/homeCarouselModal');
const eventsModal = require('./modals/eventsModal');
const eventImagesModal = require('./modals/eventImagesModal');
const redAnnouncementsModal = require('./modals/redAnnouncementsModal')
const gymkhanaNotificationsModal = require('./modals/gymkhanaNotificationsModal')
const facultyPicModal = require('./modals/facultyPicModal')
const jobsModal = require('./modals/jobsModal')
// const textModal = require('./modals/textModal')
// const tendersModal = require('./modals/tendersModal');
const path = require('path');
// Create the server
const server = express(); // starting the server

// Middleware to handle CORS and headers
// server.use((_req, res, next) => {
//   res.header("Access-Control-Allow-Origin", "*");
//   res.header("Access-Control-Allow-Headers", "*");
//   next();
// });
server.use('/public', express.static(path.join(__dirname, '../../public')));
server.use('/', express.static(path.join(__dirname, '../../build')));
server.use(bodyParser.json()); // using the body-parser
const corsOptions = {
  origin: "*", // Replace with your server's IP
  optionsSuccessStatus: 200,
};
server.use('/dist', express.static(path.join(__dirname, '../../dist'), {
  setHeaders: (res, path) => {
      if (path.endsWith('.css')) {
          res.setHeader('Content-Type', 'text/css');
      }
  }
}));
server.use(cors(corsOptions));

const port = 5000;

// Test connection to PostgreSQL
server.get("/test", async (req, res) => {
  try {
    const result = await pool.query("SELECT NOW()"); // Simple query to test connection
    res.json({ connection: true, server_time: result.rows[0] });
  } catch (error) {
    console.error(error);
    res.status(500).json({ connection: false, error: error.message });
  }
});

// Synchronize Sequelize models and start the server
// sequelize.sync()
//   .then(() => {
//     console.log('Database synchronized');
//     // Start the server after successful sync
//     server.listen(port, () => {
//       console.log(`Server is running on port ${port}`);
//     });
//   })
//   .catch((err) => {
//     console.error('Unable to synchronize the database:', err);
//   });
server.listen(port, () => {
  console.log(`Server is running on port ${port}`);
});
// Use the routes for each section
server.use("/people", require("./routes/people"));
server.use("/links", require("./routes/links"));

// Add these routes for the different sections
server.use("/news", require("./routes/news")); // Assuming you have routes defined for news
server.use("/achievements", require("./routes/achievements")); // Assuming you have routes defined for achievements
server.use("/notices", require("./routes/notices")); // Routes for notices
server.use("/carousel", require("./routes/homeCarousel")); // Routes for homepage carousel
server.use("/notices", require("./routes/notices")); // Routes for homepage carousel
server.use("/events", require("./routes/events"));
server.use("/eventImages", require("./routes/eventImages"));
server.use("/tenders", require("./routes/tenders"));
server.use("/calendars",require("./routes/calendars"))
server.use("/Marquee", require("./routes/marquee"));
server.use("/RedAnnouncements", require("./routes/redAnnouncements"));
server.use("/GymkhanaNotifications",require("./routes/gymkhanaNotifications"));
server.use("/FacultyPics",require("./routes/facultyPic"));

server.use("/facultyInfo",require("./routes/facultyInfo"))
server.use("/nonFacultyInfo", require("./routes/nonFacultyInfo"))
server.use("/doctorsInfo", require("./routes/doctorsInfo"))
server.use("/counsellingInfo", require("./routes/counsellingInfo"))
server.use("/hostelsInfo", require("./routes/hostelsInfo"))
server.use("/shopsInfo", require("./routes/shopsInfo"))
server.use("/positionsInfo", require("./routes/positionsInfo"))
server.use("/linksInfo", require("./routes/linksInfo"))
server.use("/downloads", require("./routes/downloads"))
server.use("/jobs", require("./routes/jobs"))