const express = require('express');
const router = express.Router();
const jobController = require('../controllers/JobsController');
const multer = require('multer');
const upload = multer();

// Get all jobs with optional filters
router.get('/jobs', jobController.getJobs);

// Get a specific job by ID
router.get('/jobs/:id', jobController.getJobById);

// Create a new job
router.post('/jobs', upload.none(), jobController.createJob);

// Update an existing job
router.put('/jobs/:id', upload.none(), jobController.updateJob);

// Delete a job
router.delete('/jobs/:id', jobController.deleteJob);

// Update job status
router.patch('/jobs/:id/status', upload.none(), jobController.updateJobStatus);

// Admin route to archive expired jobs
router.post('/jobs/archive-expired', jobController.archiveExpiredJobs);

module.exports = router;