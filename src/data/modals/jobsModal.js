const { Model, DataTypes, Op } = require('sequelize');
const sequelize = require('../sequelize');

class Job extends Model {}

Job.init({
  id: {
    type: DataTypes.UUID,
    defaultValue: DataTypes.UUIDV4,
    primaryKey: true
  },
  advertTitle: {
    type: DataTypes.TEXT,
    allowNull: false
  },
  readMore: {
    type: DataTypes.TEXT,
    allowNull: true
  },
  jobType: {
    type: DataTypes.STRING(50),
    allowNull: false,
    validate: {
      isIn: [['Faculty Positions', 'Non Teaching', 'Project Vacancies']]
    }
  },
  applicationOpeningDate: {
    type: DataTypes.DATE,
    allowNull: true
  },
  status: {
    type: DataTypes.STRING(20),
    allowNull: false,
    defaultValue: 'ACTIVE',
    validate: {
      isIn: [['ACTIVE', 'ARCHIVED', 'CANCELLED']]
    }
  },
  additionalInformation: {
    type: DataTypes.JSONB,
    defaultValue: [],
    comment: 'Array of objects with title and link properties'
  },
  positions: {
    type: DataTypes.JSONB,
    defaultValue: [],
    comment: 'Array of objects with Title, Department, Level, Type, AdvertNo, and Advert Date'
  },
  shortlistedCandidates: {
    type: DataTypes.JSONB,
    defaultValue: [],
    comment: 'Array of objects with Title and an array of title-link objects'
  },
  importantLinks: {
    type: DataTypes.JSONB,
    defaultValue: [],
    comment: 'Array of objects with title and link properties'
  },
  misc: {
    type: DataTypes.TEXT,
    allowNull: true
  },
  createdAt: {
    type: DataTypes.DATE,
    allowNull: true
  },
  updatedAt: {
    type: DataTypes.DATE,
    allowNull: true
  }
}, {
  sequelize,
  modelName: 'Job',
  tableName: 'jobs',
  timestamps: true,
  indexes: [
    {
      fields: ['jobType']
    },
    {
      fields: ['status']
    },
    {
      fields: ['applicationOpeningDate']
    }
  ],
  hooks: {
    beforeSave: async (job) => {
      // If application opening date has passed and there's no specific closing date logic,
      // we can leave status management to be handled manually or through the controller
    }
  }
});

// Function to initialize the model and table
const initializeJobModel = async () => {
  try {
    // Sync the model with the database
    await Job.sync({ alter: true }); // Use alter:true to update existing table structure
    console.log('Job model synchronized successfully');
  } catch (error) {
    console.error('Error initializing Job model:', error);
  }
};

// Initialize the model
initializeJobModel();

module.exports = Job;