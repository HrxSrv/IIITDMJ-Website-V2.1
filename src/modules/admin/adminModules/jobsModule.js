import React, { useState, useEffect, useCallback, useMemo } from 'react';
import { Search, Paperclip, Plus, Trash2, Edit } from 'lucide-react';
import axiosInstance from '../../../axios';

// Job Form Component
const JobForm = React.memo(({ onSubmit, initialData, isEditing, onCancel }) => {
  const [formData, setFormData] = useState({
    advertTitle: '',
    jobType: 'Faculty Positions',
    applicationOpeningDate: '',
    status: 'ACTIVE',
    additionalInformation: [],
    positions: [],
    shortlistedCandidates: [],
    importantLinks: [],
    misc: '',
    readMore: ''
  });

  const [newAdditionalInfo, setNewAdditionalInfo] = useState({ title: '', link: '' });
  const [newPosition, setNewPosition] = useState({ 
    Title: '', 
    Department: '', 
    Level: '', 
    Type: '', 
    AdvertNo: '', 
    AdvertDate: '' 
  });
  const [newShortlisted, setNewShortlisted] = useState({ 
    Title: '', 
    links: [] 
  });
  const [newShortlistedLink, setNewShortlistedLink] = useState({ title: '', link: '' });
  const [newImportantLink, setNewImportantLink] = useState({ title: '', link: '' });

  // Update form data when initialData changes
  useEffect(() => {
    if (initialData) {
      setFormData({
        ...initialData,
        applicationOpeningDate: initialData.applicationOpeningDate ? 
          new Date(initialData.applicationOpeningDate).toISOString().split('T')[0] : '',
        // Parse JSON fields if they're strings
        additionalInformation: typeof initialData.additionalInformation === 'string' 
          ? JSON.parse(initialData.additionalInformation) 
          : (initialData.additionalInformation || []),
        positions: typeof initialData.positions === 'string' 
          ? JSON.parse(initialData.positions) 
          : (initialData.positions || []),
        shortlistedCandidates: typeof initialData.shortlistedCandidates === 'string' 
          ? JSON.parse(initialData.shortlistedCandidates) 
          : (initialData.shortlistedCandidates || []),
        importantLinks: typeof initialData.importantLinks === 'string' 
          ? JSON.parse(initialData.importantLinks) 
          : (initialData.importantLinks || [])
      });
    }
  }, [initialData]);

  const handleInputChange = useCallback((e) => {
    const { name, value } = e.target;
    setFormData(prev => ({
      ...prev,
      [name]: value
    }));
  }, []);

  // Additional Information handlers
  const handleAdditionalInfoChange = useCallback((e) => {
    const { name, value } = e.target;
    setNewAdditionalInfo(prev => ({
      ...prev,
      [name]: value
    }));
  }, []);

  const addAdditionalInfo = useCallback(() => {
    if (newAdditionalInfo.title && newAdditionalInfo.link) {
      setFormData(prev => ({
        ...prev,
        additionalInformation: [...(prev.additionalInformation || []), newAdditionalInfo]
      }));
      setNewAdditionalInfo({ title: '', link: '' });
    }
  }, [newAdditionalInfo]);

  const removeAdditionalInfo = useCallback((indexToRemove) => {
    setFormData(prev => ({
      ...prev,
      additionalInformation: prev.additionalInformation.filter((_, index) => index !== indexToRemove)
    }));
  }, []);

  // Position handlers
  const handlePositionChange = useCallback((e) => {
    const { name, value } = e.target;
    setNewPosition(prev => ({
      ...prev,
      [name]: value
    }));
  }, []);

  const addPosition = useCallback(() => {
    if (newPosition.Title && newPosition.Department) {
      setFormData(prev => ({
        ...prev,
        positions: [...(prev.positions || []), newPosition]
      }));
      setNewPosition({ 
        Title: '', 
        Department: '', 
        Level: '', 
        Type: '', 
        AdvertNo: '', 
        AdvertDate: '' 
      });
    }
  }, [newPosition]);

  const removePosition = useCallback((indexToRemove) => {
    setFormData(prev => ({
      ...prev,
      positions: prev.positions.filter((_, index) => index !== indexToRemove)
    }));
  }, []);

  // Shortlisted Candidates handlers
  const handleShortlistedChange = useCallback((e) => {
    const { name, value } = e.target;
    setNewShortlisted(prev => ({
      ...prev,
      [name]: value
    }));
  }, []);

  const handleShortlistedLinkChange = useCallback((e) => {
    const { name, value } = e.target;
    setNewShortlistedLink(prev => ({
      ...prev,
      [name]: value
    }));
  }, []);

  const addShortlistedLink = useCallback(() => {
    if (newShortlistedLink.title && newShortlistedLink.link) {
      setNewShortlisted(prev => ({
        ...prev,
        links: [...(prev.links || []), newShortlistedLink]
      }));
      setNewShortlistedLink({ title: '', link: '' });
    }
  }, [newShortlistedLink]);

  const addShortlisted = useCallback(() => {
    if (newShortlisted.Title && newShortlisted.links.length > 0) {
      setFormData(prev => ({
        ...prev,
        shortlistedCandidates: [...(prev.shortlistedCandidates || []), newShortlisted]
      }));
      setNewShortlisted({ Title: '', links: [] });
    }
  }, [newShortlisted]);

  const removeShortlisted = useCallback((indexToRemove) => {
    setFormData(prev => ({
      ...prev,
      shortlistedCandidates: prev.shortlistedCandidates.filter((_, index) => index !== indexToRemove)
    }));
  }, []);

  // Important Links handlers
  const handleImportantLinkChange = useCallback((e) => {
    const { name, value } = e.target;
    setNewImportantLink(prev => ({
      ...prev,
      [name]: value
    }));
  }, []);

  const addImportantLink = useCallback(() => {
    if (newImportantLink.title && newImportantLink.link) {
      setFormData(prev => ({
        ...prev,
        importantLinks: [...(prev.importantLinks || []), newImportantLink]
      }));
      setNewImportantLink({ title: '', link: '' });
    }
  }, [newImportantLink]);

  const removeImportantLink = useCallback((indexToRemove) => {
    setFormData(prev => ({
      ...prev,
      importantLinks: prev.importantLinks.filter((_, index) => index !== indexToRemove)
    }));
  }, []);

  const handleSubmit = async (e) => {
    e.preventDefault();
    const formDataToSend = new FormData();
    
    // Append all form fields
    Object.keys(formData).forEach(key => {
      if (['additionalInformation', 'positions', 'shortlistedCandidates', 'importantLinks'].includes(key)) {
        // Convert complex objects to JSON string
        formDataToSend.append(key, JSON.stringify(formData[key]));
      } else {
        formDataToSend.append(key, formData[key]);
      }
    });
    
    // Add ID for editing
    if (isEditing) {
      formDataToSend.append('id', initialData.id);
    }
   
    onSubmit(formDataToSend);
  };

  return (
    <div className="max-w-4xl space-y-6">
      <h3 className="text-lg font-semibold">
        {isEditing ? 'Edit Job' : 'Add New Job'}
      </h3>
      <form className="space-y-4" onSubmit={handleSubmit}>
        <div className="grid grid-cols-2 gap-4">
          <div>
            <label className="block text-sm font-medium text-gray-700 mb-1">
              Advert Title
            </label>
            <input
              type="text"
              name="advertTitle"
              value={formData.advertTitle}
              onChange={handleInputChange}
              className="w-full px-3 py-2 border border-gray-300 rounded-lg focus:outline-none focus:ring-2 focus:ring-blue-500"
              required
            />
          </div>
          <div>
            <label className="block text-sm font-medium text-gray-700 mb-1">
              Job Type
            </label>
            <select
              name="jobType"
              value={formData.jobType}
              onChange={handleInputChange}
              className="w-full px-3 py-2 border border-gray-300 rounded-lg focus:outline-none focus:ring-2 focus:ring-blue-500"
              required
            >
              <option value="Faculty Positions">Faculty Positions</option>
              <option value="Non Teaching">Non Teaching</option>
              <option value="Project Vacancies">Project Vacancies</option>
            </select>
          </div>
          <div>
            <label className="block text-sm font-medium text-gray-700 mb-1">
              Application Opening Date
            </label>
            <input
              type="date"
              name="applicationOpeningDate"
              value={formData.applicationOpeningDate}
              onChange={handleInputChange}
              className="w-full px-3 py-2 border border-gray-300 rounded-lg focus:outline-none focus:ring-2 focus:ring-blue-500"
            />
          </div>
          <div>
            <label className="block text-sm font-medium text-gray-700 mb-1">
              Status
            </label>
            <select
              name="status"
              value={formData.status}
              onChange={handleInputChange}
              className="w-full px-3 py-2 border border-gray-300 rounded-lg focus:outline-none focus:ring-2 focus:ring-blue-500"
              required
            >
              <option value="ACTIVE">Active</option>
              <option value="ARCHIVED">Archived</option>
              <option value="CANCELLED">Cancelled</option>
            </select>
          </div>
        </div>

        <div>
          <label className="block text-sm font-medium text-gray-700 mb-1">
            Miscellaneous Information
          </label>
          <textarea
            name="misc"
            value={formData.misc}
            onChange={handleInputChange}
            className="w-full px-3 py-2 border border-gray-300 rounded-lg focus:outline-none focus:ring-2 focus:ring-blue-500"
            rows={3}
          />
        </div>
        <div>
          <label className="block text-sm font-medium text-gray-700 mb-1">
            Read More
          </label>
          <textarea
            name="readMore"
            value={formData.readMore}
            onChange={handleInputChange}
            className="w-full px-3 py-2 border border-gray-300 rounded-lg focus:outline-none focus:ring-2 focus:ring-blue-500"
            rows={3}
          />
        </div>

        {/* Positions Section */}
        <div className="space-y-2">
          <label className="block text-sm font-medium text-gray-700">
            Positions
          </label>
          <div className="grid grid-cols-3 gap-2 mb-2">
            <input
              type="text"
              name="Title"
              placeholder="Position Title"
              value={newPosition.Title}
              onChange={handlePositionChange}
              className="px-3 py-2 border border-gray-300 rounded-lg focus:outline-none focus:ring-2 focus:ring-blue-500"
            />
            <input
              type="text"
              name="Department"
              placeholder="Department"
              value={newPosition.Department}
              onChange={handlePositionChange}
              className="px-3 py-2 border border-gray-300 rounded-lg focus:outline-none focus:ring-2 focus:ring-blue-500"
            />
            <input
              type="text"
              name="Level"
              placeholder="Level"
              value={newPosition.Level}
              onChange={handlePositionChange}
              className="px-3 py-2 border border-gray-300 rounded-lg focus:outline-none focus:ring-2 focus:ring-blue-500"
            />
            <input
              type="text"
              name="Type"
              placeholder="Type"
              value={newPosition.Type}
              onChange={handlePositionChange}
              className="px-3 py-2 border border-gray-300 rounded-lg focus:outline-none focus:ring-2 focus:ring-blue-500"
            />
            <input
              type="text"
              name="AdvertNo"
              placeholder="Advert No"
              value={newPosition.AdvertNo}
              onChange={handlePositionChange}
              className="px-3 py-2 border border-gray-300 rounded-lg focus:outline-none focus:ring-2 focus:ring-blue-500"
            />
            <div className="flex space-x-2">
              <input
                type="date"
                name="AdvertDate"
                placeholder="Advert Date"
                value={newPosition.AdvertDate}
                onChange={handlePositionChange}
                className="flex-grow px-3 py-2 border border-gray-300 rounded-lg focus:outline-none focus:ring-2 focus:ring-blue-500"
              />
              <button
                type="button"
                onClick={addPosition}
                className="px-4 py-2 bg-blue-600 text-white rounded-lg hover:bg-blue-700"
              >
                <Plus className="h-5 w-5" />
              </button>
            </div>
          </div>
          {formData.positions && formData.positions.length > 0 && (
            <div className="border rounded-lg p-2">
              {formData.positions.map((position, index) => (
                <div 
                  key={index} 
                  className="flex justify-between items-center p-2 bg-gray-50 rounded mb-1"
                >
                  <div className="flex-grow">
                    <p className="text-sm font-medium">{position.Title} - {position.Department}</p>
                    <p className="text-xs text-gray-600">
                      {position.Level} | {position.Type} | Advert No: {position.AdvertNo}
                      {position.AdvertDate && ` | Date: ${position.AdvertDate}`}
                    </p>
                  </div>
                  <button
                    type="button"
                    onClick={() => removePosition(index)}
                    className="text-red-600 hover:text-red-800"
                  >
                    <Trash2 className="h-4 w-4" />
                  </button>
                </div>
              ))}
            </div>
          )}
        </div>

        {/* Additional Information Section */}
        <div className="space-y-2">
          <label className="block text-sm font-medium text-gray-700">
            Additional Information
          </label>
          <div className="flex space-x-2 mb-2">
            <input
              type="text"
              name="title"
              placeholder="Title"
              value={newAdditionalInfo.title}
              onChange={handleAdditionalInfoChange}
              className="flex-grow px-3 py-2 border border-gray-300 rounded-lg focus:outline-none focus:ring-2 focus:ring-blue-500"
            />
            <input
              type="text"
              name="link"
              placeholder="Link URL"
              value={newAdditionalInfo.link}
              onChange={handleAdditionalInfoChange}
              className="flex-grow px-3 py-2 border border-gray-300 rounded-lg focus:outline-none focus:ring-2 focus:ring-blue-500"
            />
            <button
              type="button"
              onClick={addAdditionalInfo}
              className="px-4 py-2 bg-blue-600 text-white rounded-lg hover:bg-blue-700"
            >
              <Plus className="h-5 w-5" />
            </button>
          </div>
          {formData.additionalInformation && formData.additionalInformation.length > 0 && (
            <div className="border rounded-lg p-2">
              {formData.additionalInformation.map((info, index) => (
                <div 
                  key={index} 
                  className="flex justify-between items-center p-2 bg-gray-50 rounded mb-1"
                >
                  <div className="flex items-center space-x-2">
                    <Paperclip className="h-4 w-4 text-gray-500" />
                    <div>
                      <p className="text-sm font-medium">{info.title}</p>
                      <a 
                        href={info.link} 
                        target="_blank" 
                        rel="noopener noreferrer" 
                        className="text-xs text-blue-600 hover:underline"
                      >
                        {info.link}
                      </a>
                    </div>
                  </div>
                  <button
                    type="button"
                    onClick={() => removeAdditionalInfo(index)}
                    className="text-red-600 hover:text-red-800"
                  >
                    <Trash2 className="h-4 w-4" />
                  </button>
                </div>
              ))}
            </div>
          )}
        </div>

        {/* Important Links Section */}
        <div className="space-y-2">
          <label className="block text-sm font-medium text-gray-700">
            Important Links
          </label>
          <div className="flex space-x-2 mb-2">
            <input
              type="text"
              name="title"
              placeholder="Title"
              value={newImportantLink.title}
              onChange={handleImportantLinkChange}
              className="flex-grow px-3 py-2 border border-gray-300 rounded-lg focus:outline-none focus:ring-2 focus:ring-blue-500"
            />
            <input
              type="text"
              name="link"
              placeholder="Link URL"
              value={newImportantLink.link}
              onChange={handleImportantLinkChange}
              className="flex-grow px-3 py-2 border border-gray-300 rounded-lg focus:outline-none focus:ring-2 focus:ring-blue-500"
            />
            <button
              type="button"
              onClick={addImportantLink}
              className="px-4 py-2 bg-blue-600 text-white rounded-lg hover:bg-blue-700"
            >
              <Plus className="h-5 w-5" />
            </button>
          </div>
          {formData.importantLinks && formData.importantLinks.length > 0 && (
            <div className="border rounded-lg p-2">
              {formData.importantLinks.map((link, index) => (
                <div 
                  key={index} 
                  className="flex justify-between items-center p-2 bg-gray-50 rounded mb-1"
                >
                  <div className="flex items-center space-x-2">
                    <Paperclip className="h-4 w-4 text-gray-500" />
                    <div>
                      <p className="text-sm font-medium">{link.title}</p>
                      <a 
                        href={link.link} 
                        target="_blank" 
                        rel="noopener noreferrer" 
                        className="text-xs text-blue-600 hover:underline"
                      >
                        {link.link}
                      </a>
                    </div>
                  </div>
                  <button
                    type="button"
                    onClick={() => removeImportantLink(index)}
                    className="text-red-600 hover:text-red-800"
                  >
                    <Trash2 className="h-4 w-4" />
                  </button>
                </div>
              ))}
            </div>
          )}
        </div>

        {/* Shortlisted Candidates Section */}
        <div className="space-y-2">
          <label className="block text-sm font-medium text-gray-700">
            Shortlisted Candidates
          </label>
          <div className="border rounded-lg p-3 bg-gray-50">
            <div className="mb-2">
              <input
                type="text"
                name="Title"
                placeholder="Category Title"
                value={newShortlisted.Title}
                onChange={handleShortlistedChange}
                className="w-full px-3 py-2 border border-gray-300 rounded-lg focus:outline-none focus:ring-2 focus:ring-blue-500 mb-2"
              />
              
              <div className="flex space-x-2 mb-2">
                <input
                  type="text"
                  name="title"
                  placeholder="Link Title"
                  value={newShortlistedLink.title}
                  onChange={handleShortlistedLinkChange}
                  className="flex-grow px-3 py-2 border border-gray-300 rounded-lg focus:outline-none focus:ring-2 focus:ring-blue-500"
                />
                <input
                  type="text"
                  name="link"
                  placeholder="Link URL"
                  value={newShortlistedLink.link}
                  onChange={handleShortlistedLinkChange}
                  className="flex-grow px-3 py-2 border border-gray-300 rounded-lg focus:outline-none focus:ring-2 focus:ring-blue-500"
                />
                <button
                  type="button"
                  onClick={addShortlistedLink}
                  className="px-4 py-2 bg-green-600 text-white rounded-lg hover:bg-green-700"
                >
                  <Plus className="h-5 w-5" />
                </button>
              </div>
              
              {newShortlisted.links && newShortlisted.links.length > 0 && (
                <div className="mb-2 p-2 bg-white rounded border">
                  <p className="text-sm font-medium mb-1">Added Links:</p>
                  {newShortlisted.links.map((link, i) => (
                    <div key={i} className="text-xs flex justify-between">
                      <span>{link.title}: {link.link}</span>
                    </div>
                  ))}
                </div>
              )}
              
              <button
                type="button"
                onClick={addShortlisted}
                className="w-full px-4 py-2 bg-blue-600 text-white rounded-lg hover:bg-blue-700 mt-2"
                disabled={!newShortlisted.Title || newShortlisted.links.length === 0}
              >
                Add Category
              </button>
            </div>
          </div>

          {formData.shortlistedCandidates && formData.shortlistedCandidates.length > 0 && (
            <div className="border rounded-lg p-2">
              {formData.shortlistedCandidates.map((category, index) => (
                <div 
                  key={index} 
                  className="p-2 bg-gray-50 rounded mb-1"
                >
                  <div className="flex justify-between items-center mb-1">
                    <h4 className="font-medium">{category.Title}</h4>
                    <button
                      type="button"
                      onClick={() => removeShortlisted(index)}
                      className="text-red-600 hover:text-red-800"
                    >
                      <Trash2 className="h-4 w-4" />
                    </button>
                  </div>
                  {category.links && category.links.map((link, lIndex) => (
                    <div key={lIndex} className="text-sm ml-4 flex items-center">
                      <Paperclip className="h-3 w-3 text-gray-500 mr-1" />
                      <a 
                        href={link.link}
                        target="_blank"
                        rel="noopener noreferrer"
                        className="text-blue-600 hover:underline"
                      >
                        {link.title}
                      </a>
                    </div>
                  ))}
                </div>
              ))}
            </div>
          )}
        </div>

        <div className="flex justify-end space-x-3">
          {isEditing && (
            <button
              type="button"
              onClick={onCancel}
              className="px-4 py-2 border border-gray-300 rounded-lg hover:bg-gray-50"
            >
              Cancel
            </button>
          )}
          <button
            type="submit"
            className="px-4 py-2 bg-blue-600 text-white rounded-lg hover:bg-blue-700"
          >
            {isEditing ? 'Update Job' : 'Add Job'}
          </button>
        </div>
      </form>
    </div>
  );
});

// Jobs List Component
const JobsList = React.memo(({ 
  jobsList, 
  searchTerm, 
  onEdit, 
  onDelete 
}) => (
  <table className="min-w-full">
    <thead className="bg-gray-50">
      <tr>
        <th className="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase">Advert Title</th>
        <th className="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase">Job Type</th>
        <th className="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase">Opening Date</th>
        <th className="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase">Positions</th>
        <th className="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase">Status</th>
        <th className="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase">Actions</th>
      </tr>
    </thead>
    <tbody className="divide-y divide-gray-200">
      {jobsList.map((job) => (
        <tr key={job.id}>
          <td className="px-6 py-4">{job.advertTitle}</td>
          <td className="px-6 py-4">{job.jobType}</td>
          <td className="px-6 py-4">
            {job.applicationOpeningDate ? new Date(job.applicationOpeningDate).toLocaleDateString() : 'N/A'}
          </td>
          <td className="px-6 py-4">
            {job.positions && job.positions.length > 0 ? job.positions.length : 0}
          </td>
          <td className="px-6 py-4">
            <span className={`px-2 py-1 text-xs rounded ${
              job.status === 'ACTIVE' ? 'bg-green-100 text-green-800' :
              job.status === 'ARCHIVED' ? 'bg-gray-100 text-gray-800' :
              'bg-red-100 text-red-800'
            }`}>
              {job.status}
            </span>
          </td>
          <td className="px-6 py-4">
            <div className="flex space-x-2">
              <button
                onClick={() => onEdit(job)}
                className="text-blue-600 hover:text-blue-800"
              >
                <Edit className="h-4 w-4" />
              </button>
              <button
                onClick={() => onDelete(job.id)}
                className="text-red-600 hover:text-red-800"
              >
                <Trash2 className="h-4 w-4" />
              </button>
            </div>
          </td>
        </tr>
      ))}
      {jobsList.length === 0 && (
        <tr>
          <td colSpan="6" className="px-6 py-4 text-center text-gray-500">
            No jobs found.
          </td>
        </tr>
      )}
    </tbody>
  </table>
));

const JobsManager = () => {
  const [activeTab, setActiveTab] = useState('add');
  const [jobsList, setJobsList] = useState([]);
  const [searchTerm, setSearchTerm] = useState('');
  const [editingJob, setEditingJob] = useState(null);

  const fetchJobs = useCallback(async () => {
    try {
      const response = await axiosInstance.get('/jobs/jobs');
      setJobsList(response.data);
    } catch (error) {
      console.error('Error fetching jobs:', error);
      alert("Failed to fetch jobs.");
    }
  }, []);

  useEffect(() => {
    fetchJobs();
  }, [fetchJobs]);

  const handleAddJob = async (formData) => {
    try {
      const response = await axiosInstance.post('/jobs/jobs', formData, {
        headers: {
          'Content-Type': 'multipart/form-data',
        },
      });
      if (response.status === 201) {
        await fetchJobs();
        setActiveTab('manage');
        alert("Job added successfully!");
      }
    } catch (error) {
      console.error('Error adding job:', error);
      alert("Failed to add job.");
    }
  };

  const handleUpdateJob = async (formData) => {
    try {
      const response = await axiosInstance.put(`/jobs/jobs/${editingJob.id}`, formData, {
        headers: {
          'Content-Type': 'multipart/form-data',
        },
      });
      if (response.status === 200) {
        await fetchJobs();
        setEditingJob(null);
        setActiveTab('manage');
        alert("Job updated successfully!");
      }
    } catch (error) {
      console.error('Error updating job:', error);
      alert("Failed to update job.");
    }
  };

  const handleDelete = async (id) => {
    if (window.confirm('Are you sure you want to delete this job?')) {
      try {
        const response = await axiosInstance.delete(`/jobs/jobs/${id}`);
        if (response.status === 204) {
          await fetchJobs();
          alert("Job deleted successfully!");
        }
      } catch (error) {
        console.error('Error deleting job:', error);
        alert("Failed to delete job.");
      }
    }
  };

  const handleEdit = useCallback((job) => {
    setEditingJob(job);
    setActiveTab('add');
  }, []);

  const filteredJobs = useMemo(() => 
    jobsList.filter(job => {
      const searchTermLower = searchTerm.toLowerCase();
      return (
        job.advertTitle.toLowerCase().includes(searchTermLower) ||
        job.jobType.toLowerCase().includes(searchTermLower)
      );
    }), [jobsList, searchTerm]
  );

  return (
    <div className="space-y-6">
      <div className="flex space-x-4">
        <button
          onClick={() => {
            setActiveTab('add');
            if (!editingJob) {
              setEditingJob(null);
            }
          }}
          className={`px-4 py-2 rounded-lg ${
            activeTab === 'add'
              ? 'bg-blue-600 text-white'
              : 'bg-gray-100 hover:bg-gray-200'
          }`}
        >
          {editingJob ? 'Edit Job' : 'Add Job'}
        </button>
        <button
          onClick={() => setActiveTab('manage')}
          className={`px-4 py-2 rounded-lg ${
            activeTab === 'manage'
              ? 'bg-blue-600 text-white'
              : 'bg-gray-100 hover:bg-gray-200'
          }`}
        >
          Manage Jobs
        </button>
      </div>

      {activeTab === 'add' ? (
        <JobForm
          onSubmit={editingJob ? handleUpdateJob : handleAddJob}
          initialData={editingJob}
          isEditing={!!editingJob}
          onCancel={() => {
            setEditingJob(null);
            setActiveTab('manage');
          }}
        />
      ) : (
        <div className="space-y-6">
          <div className="flex justify-between items-center">
            <h3 className="text-lg font-semibold">Manage Jobs</h3>
            <div className="relative">
              <input
                type="text"
                placeholder="Search jobs..."
                value={searchTerm}
                onChange={(e) => setSearchTerm(e.target.value)}
                className="pl-10 pr-4 py-2 border border-gray-300 rounded-lg w-64"
              />
              <Search className="h-5 w-5 text-gray-400 absolute left-3 top-2.5" />
            </div>
          </div>
          <div className="bg-white rounded-lg shadow overflow-hidden">
            <JobsList 
              jobsList={filteredJobs}
              searchTerm={searchTerm}
              onEdit={handleEdit}
              onDelete={handleDelete}
            />
          </div>
        </div>
      )}
    </div>
  );
};

export default JobsManager;