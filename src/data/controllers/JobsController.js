const { Op } = require('sequelize');
const Job = require('../modals/jobsModal');
const multer = require('multer');
const upload = multer(); // Initialize multer for parsing multipart/form-data

exports.getJobs = async (req, res) => {
  try {
    const { type, status } = req.query;
    
    let whereClause = {};
    
    // Filter by job type if provided
    if (type && ['Faculty Positions', 'Non Teaching', 'Project Vacancies'].includes(type)) {
      whereClause.jobType = type;
    }
    
    // Filter by status if provided
    if (status) {
      if (status === 'active') {
        whereClause.status = 'ACTIVE';
      } else if (status === 'archived') {
        whereClause.status = 'ARCHIVED';
      } else if (status === 'cancelled') {
        whereClause.status = 'CANCELLED';
      }
    }

    const jobs = await Job.findAll({
      where: whereClause,
      order: [['applicationOpeningDate', 'DESC']],
    });

    res.json(jobs);
  } catch (error) {
    console.error('Error fetching jobs:', error);
    res.status(500).json({ error: 'Internal server error' });
  }
};

exports.getJobById = async (req, res) => {
  try {
    const { id } = req.params;
    const job = await Job.findByPk(id);
    
    if (!job) {
      return res.status(404).json({ error: 'Job not found' });
    }

    res.json(job);
  } catch (error) {
    console.error('Error fetching job by ID:', error);
    res.status(500).json({ error: 'Internal server error' });
  }
};

exports.createJob = async (req, res) => {
  try {
    // Process JSON fields
    const jobData = req.body;
    
    // Handle JSON fields that might come as strings
    ['additionalInformation', 'positions', 'shortlistedCandidates', 'importantLinks'].forEach(field => {
      if (typeof jobData[field] === 'string') {
        try {
          jobData[field] = JSON.parse(jobData[field]);
        } catch (e) {
          // If parsing fails, set to default empty array
          jobData[field] = [];
        }
      }
    });

    const job = await Job.create(jobData);
    res.status(201).json(job);
  } catch (error) {
    console.error('Error creating job:', error);
    res.status(400).json({ error: error.message });
  }
};

exports.updateJob = async (req, res) => {
  try {
    const { id } = req.params;
    const job = await Job.findByPk(id);
    
    if (!job) {
      return res.status(404).json({ error: 'Job not found' });
    }

    // Process JSON fields
    const jobData = req.body;
    
    // Handle JSON fields that might come as strings
    ['additionalInformation', 'positions', 'shortlistedCandidates', 'importantLinks'].forEach(field => {
      if (typeof jobData[field] === 'string') {
        try {
          jobData[field] = JSON.parse(jobData[field]);
        } catch (e) {
          // If parsing fails, don't update this field
          delete jobData[field];
        }
      }
    });

    await job.update(jobData);
    res.json(job);
  } catch (error) {
    console.error('Error updating job:', error);
    res.status(400).json({ error: error.message });
  }
};

exports.deleteJob = async (req, res) => {
  try {
    const { id } = req.params;
    const job = await Job.findByPk(id);
    
    if (!job) {
      return res.status(404).json({ error: 'Job not found' });
    }

    await job.destroy();
    res.status(204).send();
  } catch (error) {
    console.error('Error deleting job:', error);
    res.status(400).json({ error: error.message });
  }
};

// Update job status (useful for batch operations)
exports.updateJobStatus = async (req, res) => {
  try {
    const { id } = req.params;
    const { status } = req.body;
    
    if (!['ACTIVE', 'ARCHIVED', 'CANCELLED'].includes(status)) {
      return res.status(400).json({ error: 'Invalid status value' });
    }
    
    const job = await Job.findByPk(id);
    
    if (!job) {
      return res.status(404).json({ error: 'Job not found' });
    }

    await job.update({ status });
    res.json(job);
  } catch (error) {
    console.error('Error updating job status:', error);
    res.status(400).json({ error: error.message });
  }
};

// Batch update expired jobs (can be called via cron job)
exports.archiveExpiredJobs = async (req, res) => {
  try {
    // This would typically use some business logic to determine which jobs should be archived
    // For example, jobs with a closing date that has passed
    // This is a placeholder since we don't have a closing date field, just applicationOpeningDate
    
    const updatedCount = await Job.update(
      { 
        status: 'ARCHIVED',
        updatedAt: new Date()
      },
      {
        where: {
          // Add conditions based on your business rules
          status: 'ACTIVE',
          // Example: if we had a closing_date field
          // closing_date: { [Op.lt]: new Date() }
        }
      }
    );
    
    res.json({ message: `${updatedCount[0]} jobs archived successfully` });
  } catch (error) {
    console.error('Error archiving expired jobs:', error);
    res.status(500).json({ error: 'Internal server error' });
  }
};