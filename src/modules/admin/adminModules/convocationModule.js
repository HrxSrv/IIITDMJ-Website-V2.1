import React, { useState, useEffect, useCallback, useMemo } from 'react';
import { Search, Plus, X, Edit, Trash2, ExternalLink } from 'lucide-react';
import axiosInstance from '../../../axios';

// Separate form component with memoization
const ConvocationForm = React.memo(({ onSubmit, initialData, isEditing, onCancel }) => {
  const [formData, setFormData] = useState({
    name: '',
    data: '',
    location: '',
    graduating_students: [],
    medal_awardees: [],
    guidelines: [],
    description: '',
    read_more: '',
    media: [],
    background_image: ''
  });

  // Media input handling
  const [newMediaLink, setNewMediaLink] = useState('');

  // Dynamic fields handling (graduating_students, medal_awardees, guidelines)
  const [newStudent, setNewStudent] = useState({ title: '', link: '' });
  const [newAwardee, setNewAwardee] = useState({ title: '', link: '' });
  const [newGuideline, setNewGuideline] = useState({ title: '', link: '' });

  // Update form data when initialData changes
  useEffect(() => {
    if (initialData) {
      // Handle arrays - ensure they are arrays even if they come as strings
      const parsedData = {
        ...initialData,
        graduating_students: Array.isArray(initialData.graduating_students) 
          ? initialData.graduating_students 
          : (typeof initialData.graduating_students === 'string' ? JSON.parse(initialData.graduating_students || '[]') : []),
        medal_awardees: Array.isArray(initialData.medal_awardees) 
          ? initialData.medal_awardees 
          : (typeof initialData.medal_awardees === 'string' ? JSON.parse(initialData.medal_awardees || '[]') : []),
        guidelines: Array.isArray(initialData.guidelines) 
          ? initialData.guidelines 
          : (typeof initialData.guidelines === 'string' ? JSON.parse(initialData.guidelines || '[]') : []),
        media: Array.isArray(initialData.media) 
          ? initialData.media 
          : (typeof initialData.media === 'string' ? JSON.parse(initialData.media || '[]') : [])
      };
      
      setFormData(parsedData);
    } else {
      setFormData({
        name: '',
        data: '',
        location: '',
        graduating_students: [],
        medal_awardees: [],
        guidelines: [],
        description: '',
        read_more: '',
        media: [],
        background_image: ''
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

  // Handle array items
  const handleAddMedia = useCallback(() => {
    if (newMediaLink.trim()) {
      setFormData(prev => ({
        ...prev,
        media: [...prev.media, newMediaLink.trim()]
      }));
      setNewMediaLink('');
    }
  }, [newMediaLink]);

  const handleRemoveMedia = useCallback((index) => {
    setFormData(prev => ({
      ...prev,
      media: prev.media.filter((_, i) => i !== index)
    }));
  }, []);

  // Student handlers
  const handleStudentInputChange = useCallback((e) => {
    const { name, value } = e.target;
    setNewStudent(prev => ({
      ...prev,
      [name]: value
    }));
  }, []);

  const handleAddStudent = useCallback(() => {
    if (newStudent.title.trim() && newStudent.link.trim()) {
      setFormData(prev => ({
        ...prev,
        graduating_students: [...prev.graduating_students, { ...newStudent }]
      }));
      setNewStudent({ title: '', link: '' });
    }
  }, [newStudent]);

  const handleRemoveStudent = useCallback((index) => {
    setFormData(prev => ({
      ...prev,
      graduating_students: prev.graduating_students.filter((_, i) => i !== index)
    }));
  }, []);

  // Awardee handlers
  const handleAwardeeInputChange = useCallback((e) => {
    const { name, value } = e.target;
    setNewAwardee(prev => ({
      ...prev,
      [name]: value
    }));
  }, []);

  const handleAddAwardee = useCallback(() => {
    if (newAwardee.title.trim() && newAwardee.link.trim()) {
      setFormData(prev => ({
        ...prev,
        medal_awardees: [...prev.medal_awardees, { ...newAwardee }]
      }));
      setNewAwardee({ title: '', link: '' });
    }
  }, [newAwardee]);

  const handleRemoveAwardee = useCallback((index) => {
    setFormData(prev => ({
      ...prev,
      medal_awardees: prev.medal_awardees.filter((_, i) => i !== index)
    }));
  }, []);

  // Guideline handlers
  const handleGuidelineInputChange = useCallback((e) => {
    const { name, value } = e.target;
    setNewGuideline(prev => ({
      ...prev,
      [name]: value
    }));
  }, []);

  const handleAddGuideline = useCallback(() => {
    if (newGuideline.title.trim() && newGuideline.link.trim()) {
      setFormData(prev => ({
        ...prev,
        guidelines: [...prev.guidelines, { ...newGuideline }]
      }));
      setNewGuideline({ title: '', link: '' });
    }
  }, [newGuideline]);

  const handleRemoveGuideline = useCallback((index) => {
    setFormData(prev => ({
      ...prev,
      guidelines: prev.guidelines.filter((_, i) => i !== index)
    }));
  }, []);

  const handleSubmit = async (e) => {
    e.preventDefault();
    const formDataToSend = new FormData();
    
    // Append basic fields
    formDataToSend.append('name', formData.name);
    formDataToSend.append('data', formData.data);
    formDataToSend.append('location', formData.location);
    formDataToSend.append('description', formData.description);
    formDataToSend.append('read_more', formData.read_more);
    formDataToSend.append('background_image', formData.background_image);
    
    // Append array fields as JSON strings
    formDataToSend.append('graduating_students', JSON.stringify(formData.graduating_students));
    formDataToSend.append('medal_awardees', JSON.stringify(formData.medal_awardees));
    formDataToSend.append('guidelines', JSON.stringify(formData.guidelines));
    formDataToSend.append('media', JSON.stringify(formData.media));
    
    if (isEditing) {
      formDataToSend.append('id', initialData.id);
    }

    onSubmit(formDataToSend);
  };

  return (
    <div className="max-w-5xl bg-white p-6 rounded-lg shadow-md">
      <h3 className="text-xl font-semibold text-gray-800 mb-6 pb-2 border-b">
        {isEditing ? 'Edit Convocation' : 'Add New Convocation'}
      </h3>
      <form className="space-y-6" onSubmit={handleSubmit}>
        {/* Basic Information */}
        <div className="bg-gray-50 p-4 rounded-lg">
          <h4 className="text-lg font-medium text-gray-700 mb-4">Basic Information</h4>
          <div className="grid grid-cols-1 md:grid-cols-2 gap-4">
            <div>
              <label className="block text-sm font-medium text-gray-700 mb-1">
                Name
              </label>
              <input
                type="text"
                name="name"
                value={formData.name}
                onChange={handleInputChange}
                className="w-full px-3 py-2 border border-gray-300 rounded-lg focus:outline-none focus:ring-2 focus:ring-blue-500"
                required
              />
            </div>
            <div>
              <label className="block text-sm font-medium text-gray-700 mb-1">
                Location
              </label>
              <input
                type="text"
                name="location"
                value={formData.location}
                onChange={handleInputChange}
                className="w-full px-3 py-2 border border-gray-300 rounded-lg focus:outline-none focus:ring-2 focus:ring-blue-500"
                required
              />
            </div>
            <div className="md:col-span-2">
              <label className="block text-sm font-medium text-gray-700 mb-1">
                Date
              </label>
              <input
                type="text"
                name="data"
                value={formData.data}
                onChange={handleInputChange}
                className="w-full px-3 py-2 border border-gray-300 rounded-lg focus:outline-none focus:ring-2 focus:ring-blue-500"
              />
            </div>
            <div className="md:col-span-2">
              <label className="block text-sm font-medium text-gray-700 mb-1">
                Background Image URL
              </label>
              <input
                type="text"
                name="background_image"
                value={formData.background_image}
                onChange={handleInputChange}
                className="w-full px-3 py-2 border border-gray-300 rounded-lg focus:outline-none focus:ring-2 focus:ring-blue-500"
              />
              {formData.background_image && (
                <div className="mt-2">
                  <a 
                    href={formData.background_image} 
                    target="_blank" 
                    rel="noopener noreferrer"
                    className="text-blue-600 hover:text-blue-800 flex items-center gap-1"
                  >
                    <ExternalLink size={16} /> View Image
                  </a>
                </div>
              )}
            </div>
          </div>
        </div>

        {/* Content Section */}
        <div className="bg-gray-50 p-4 rounded-lg">
          <h4 className="text-lg font-medium text-gray-700 mb-4">Content</h4>
          <div className="space-y-4">
            <div>
              <label className="block text-sm font-medium text-gray-700 mb-1">
                Description
              </label>
              <textarea
                name="description"
                value={formData.description}
                onChange={handleInputChange}
                className="w-full px-3 py-2 border border-gray-300 rounded-lg focus:outline-none focus:ring-2 focus:ring-blue-500"
                rows={4}
              />
            </div>
            {/* <div>
              <label className="block text-sm font-medium text-gray-700 mb-1">
                Read More
              </label>
              <textarea
                name="read_more"
                value={formData.read_more}
                onChange={handleInputChange}
                className="w-full px-3 py-2 border border-gray-300 rounded-lg focus:outline-none focus:ring-2 focus:ring-blue-500"
                rows={3}
              />
            </div> */}
          </div>
        </div>

        {/* Media Section */}
        <div className="bg-gray-50 p-4 rounded-lg">
          <h4 className="text-lg font-medium text-gray-700 mb-4">Media</h4>
          <div className="space-y-4">
            <div className="flex gap-2">
              <input
                type="text"
                value={newMediaLink}
                onChange={(e) => setNewMediaLink(e.target.value)}
                placeholder="Enter media URL"
                className="flex-1 px-3 py-2 border border-gray-300 rounded-lg focus:outline-none focus:ring-2 focus:ring-blue-500"
              />
              <button
                type="button"
                onClick={handleAddMedia}
                className="px-4 py-2 bg-blue-600 text-white rounded-lg hover:bg-blue-700 flex items-center gap-1"
              >
                <Plus size={16} /> Add
              </button>
            </div>
            <div className="space-y-2">
              {formData.media.map((mediaItem, index) => (
                <div key={index} className="flex items-center justify-between p-2 bg-white border border-gray-200 rounded-lg">
                  <div className="flex items-center gap-2 overflow-hidden">
                    <div className="text-sm text-gray-600 overflow-hidden text-ellipsis">
                      {mediaItem}
                    </div>
                  </div>
                  <div className="flex gap-2">
                    <a 
                      href={mediaItem} 
                      target="_blank" 
                      rel="noopener noreferrer"
                      className="text-blue-600 hover:text-blue-800"
                    >
                      <ExternalLink size={16} />
                    </a>
                    <button
                      type="button"
                      onClick={() => handleRemoveMedia(index)}
                      className="text-red-600 hover:text-red-800"
                    >
                      <X size={16} />
                    </button>
                  </div>
                </div>
              ))}
              {formData.media.length === 0 && (
                <p className="text-sm text-gray-500 italic">No media added yet.</p>
              )}
            </div>
          </div>
        </div>

        {/* Graduating Students Section */}
        <div className="bg-gray-50 p-4 rounded-lg">
          <h4 className="text-lg font-medium text-gray-700 mb-4">Graduating Students</h4>
          <div className="space-y-4">
            <div className="flex gap-2">
              <input
                type="text"
                name="title"
                value={newStudent.title}
                onChange={handleStudentInputChange}
                placeholder="Student Title"
                className="flex-1 px-3 py-2 border border-gray-300 rounded-lg focus:outline-none focus:ring-2 focus:ring-blue-500"
              />
              <input
                type="text"
                name="link"
                value={newStudent.link}
                onChange={handleStudentInputChange}
                placeholder="Student Link"
                className="flex-1 px-3 py-2 border border-gray-300 rounded-lg focus:outline-none focus:ring-2 focus:ring-blue-500"
              />
              <button
                type="button"
                onClick={handleAddStudent}
                className="px-4 py-2 bg-blue-600 text-white rounded-lg hover:bg-blue-700 flex items-center gap-1"
              >
                <Plus size={16} /> Add
              </button>
            </div>
            <div className="space-y-2">
              {formData.graduating_students.map((student, index) => (
                <div key={index} className="flex items-center justify-between p-2 bg-white border border-gray-200 rounded-lg">
                  <div className="flex items-center gap-2 overflow-hidden">
                    <div className="text-sm font-medium">{student.title}</div>
                    <div className="text-xs text-gray-500 overflow-hidden text-ellipsis">
                      {student.link}
                    </div>
                  </div>
                  <div className="flex gap-2">
                    <a 
                      href={student.link} 
                      target="_blank" 
                      rel="noopener noreferrer"
                      className="text-blue-600 hover:text-blue-800"
                    >
                      <ExternalLink size={16} />
                    </a>
                    <button
                      type="button"
                      onClick={() => handleRemoveStudent(index)}
                      className="text-red-600 hover:text-red-800"
                    >
                      <X size={16} />
                    </button>
                  </div>
                </div>
              ))}
              {formData.graduating_students.length === 0 && (
                <p className="text-sm text-gray-500 italic">No students added yet.</p>
              )}
            </div>
          </div>
        </div>

        {/* Medal Awardees Section */}
        <div className="bg-gray-50 p-4 rounded-lg">
          <h4 className="text-lg font-medium text-gray-700 mb-4">Medal Awardees</h4>
          <div className="space-y-4">
            <div className="flex gap-2">
              <input
                type="text"
                name="title"
                value={newAwardee.title}
                onChange={handleAwardeeInputChange}
                placeholder="Awardee Title"
                className="flex-1 px-3 py-2 border border-gray-300 rounded-lg focus:outline-none focus:ring-2 focus:ring-blue-500"
              />
              <input
                type="text"
                name="link"
                value={newAwardee.link}
                onChange={handleAwardeeInputChange}
                placeholder="Awardee Link"
                className="flex-1 px-3 py-2 border border-gray-300 rounded-lg focus:outline-none focus:ring-2 focus:ring-blue-500"
              />
              <button
                type="button"
                onClick={handleAddAwardee}
                className="px-4 py-2 bg-blue-600 text-white rounded-lg hover:bg-blue-700 flex items-center gap-1"
              >
                <Plus size={16} /> Add
              </button>
            </div>
            <div className="space-y-2">
              {formData.medal_awardees.map((awardee, index) => (
                <div key={index} className="flex items-center justify-between p-2 bg-white border border-gray-200 rounded-lg">
                  <div className="flex items-center gap-2 overflow-hidden">
                    <div className="text-sm font-medium">{awardee.title}</div>
                    <div className="text-xs text-gray-500 overflow-hidden text-ellipsis">
                      {awardee.link}
                    </div>
                  </div>
                  <div className="flex gap-2">
                    <a 
                      href={awardee.link} 
                      target="_blank" 
                      rel="noopener noreferrer"
                      className="text-blue-600 hover:text-blue-800"
                    >
                      <ExternalLink size={16} />
                    </a>
                    <button
                      type="button"
                      onClick={() => handleRemoveAwardee(index)}
                      className="text-red-600 hover:text-red-800"
                    >
                      <X size={16} />
                    </button>
                  </div>
                </div>
              ))}
              {formData.medal_awardees.length === 0 && (
                <p className="text-sm text-gray-500 italic">No awardees added yet.</p>
              )}
            </div>
          </div>
        </div>

        {/* Guidelines Section */}
        <div className="bg-gray-50 p-4 rounded-lg">
          <h4 className="text-lg font-medium text-gray-700 mb-4">Guidelines</h4>
          <div className="space-y-4">
            <div className="flex gap-2">
              <input
                type="text"
                name="title"
                value={newGuideline.title}
                onChange={handleGuidelineInputChange}
                placeholder="Guideline Title"
                className="flex-1 px-3 py-2 border border-gray-300 rounded-lg focus:outline-none focus:ring-2 focus:ring-blue-500"
              />
              <input
                type="text"
                name="link"
                value={newGuideline.link}
                onChange={handleGuidelineInputChange}
                placeholder="Guideline Link"
                className="flex-1 px-3 py-2 border border-gray-300 rounded-lg focus:outline-none focus:ring-2 focus:ring-blue-500"
              />
              <button
                type="button"
                onClick={handleAddGuideline}
                className="px-4 py-2 bg-blue-600 text-white rounded-lg hover:bg-blue-700 flex items-center gap-1"
              >
                <Plus size={16} /> Add
              </button>
            </div>
            <div className="space-y-2">
              {formData.guidelines.map((guideline, index) => (
                <div key={index} className="flex items-center justify-between p-2 bg-white border border-gray-200 rounded-lg">
                  <div className="flex items-center gap-2 overflow-hidden">
                    <div className="text-sm font-medium">{guideline.title}</div>
                    <div className="text-xs text-gray-500 overflow-hidden text-ellipsis">
                      {guideline.link}
                    </div>
                  </div>
                  <div className="flex gap-2">
                    <a 
                      href={guideline.link} 
                      target="_blank" 
                      rel="noopener noreferrer"
                      className="text-blue-600 hover:text-blue-800"
                    >
                      <ExternalLink size={16} />
                    </a>
                    <button
                      type="button"
                      onClick={() => handleRemoveGuideline(index)}
                      className="text-red-600 hover:text-red-800"
                    >
                      <X size={16} />
                    </button>
                  </div>
                </div>
              ))}
              {formData.guidelines.length === 0 && (
                <p className="text-sm text-gray-500 italic">No guidelines added yet.</p>
              )}
            </div>
          </div>
        </div>

        {/* Form Actions */}
        <div className="flex justify-end space-x-3 pt-4">
          {isEditing && (
            <button
              type="button"
              onClick={onCancel}
              className="px-6 py-2 border border-gray-300 rounded-lg hover:bg-gray-50 transition-colors"
            >
              Cancel
            </button>
          )}
          <button
            type="submit"
            className="px-6 py-2 bg-blue-600 text-white rounded-lg hover:bg-blue-700 transition-colors flex items-center gap-2"
          >
            {isEditing ? 'Update Convocation' : 'Add Convocation'}
          </button>
        </div>
      </form>
    </div>
  );
});

const ConvocationList = React.memo(({ 
  convocationList, 
  searchTerm, 
  onEdit, 
  onDelete 
}) => (
  <div className="overflow-x-auto bg-white rounded-lg shadow">
    <table className="min-w-full">
      <thead className="bg-gray-50">
        <tr>
          <th className="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase">ID</th>
          <th className="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase">Name</th>
          <th className="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase">Location</th>
          <th className="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase">Background</th>
          <th className="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase">Media</th>
          <th className="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase">Created</th>
          <th className="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase">Actions</th>
        </tr>
      </thead>
      <tbody className="divide-y divide-gray-200">
        {convocationList.map((convocation) => (
          <tr key={convocation.id} className="hover:bg-gray-50">
            <td className="px-6 py-4 whitespace-nowrap text-sm">{convocation.id}</td>
            <td className="px-6 py-4 whitespace-nowrap text-sm font-medium">{convocation.name}</td>
            <td className="px-6 py-4 whitespace-nowrap text-sm">{convocation.location}</td>
            <td className="px-6 py-4 whitespace-nowrap text-sm">
              {convocation.background_image ? (
                <a href={convocation.background_image} target="_blank" rel="noopener noreferrer" className="text-blue-600 hover:text-blue-800 flex items-center gap-1">
                  <ExternalLink size={14} /> View
                </a>
              ) : (
                <span className="text-gray-500">-</span>
              )}
            </td>
            <td className="px-6 py-4 whitespace-nowrap text-sm">
              {Array.isArray(convocation.media) && convocation.media.length > 0 ? (
                <span className="text-gray-600">{convocation.media.length} items</span>
              ) : typeof convocation.media === 'string' && convocation.media.length > 2 ? (
                <span className="text-gray-600">JSON data</span>
              ) : (
                <span className="text-gray-500">No media</span>
              )}
            </td>
            <td className="px-6 py-4 whitespace-nowrap text-sm text-gray-500">
              {new Date(convocation.createdAt).toLocaleDateString()}
            </td>
            <td className="px-6 py-4 whitespace-nowrap text-sm">
              <div className="flex space-x-3">
                <button
                  onClick={() => onEdit(convocation)}
                  className="text-blue-600 hover:text-blue-800 flex items-center gap-1"
                >
                  <Edit size={14} /> Edit
                </button>
                <button
                  onClick={() => onDelete(convocation.id)}
                  className="text-red-600 hover:text-red-800 flex items-center gap-1"
                >
                  <Trash2 size={14} /> Delete
                </button>
              </div>
            </td>
          </tr>
        ))}
        {convocationList.length === 0 && (
          <tr>
            <td colSpan="7" className="px-6 py-10 text-center text-gray-500">
              No convocations found.
            </td>
          </tr>
        )}
      </tbody>
    </table>
  </div>
));

const ConvocationManager = () => {
  const [activeTab, setActiveTab] = useState('manage');
  const [convocationList, setConvocationList] = useState([]);
  const [searchTerm, setSearchTerm] = useState('');
  const [editingConvocation, setEditingConvocation] = useState(null);

  const fetchConvocations = useCallback(async () => {
    try {
      const response = await axiosInstance.get('/convocations/convocations');
      
      // Ensure media fields are properly parsed
      const processedData = response.data.map(item => {
        try {
          // Handle cases where fields might be stored as JSON strings
          if (typeof item.media === 'string') {
            item.media = JSON.parse(item.media);
          }
          if (typeof item.graduating_students === 'string') {
            item.graduating_students = JSON.parse(item.graduating_students);
          }
          if (typeof item.medal_awardees === 'string') {
            item.medal_awardees = JSON.parse(item.medal_awardees);
          }
          if (typeof item.guidelines === 'string') {
            item.guidelines = JSON.parse(item.guidelines);
          }
        } catch (e) {
          console.warn('Error parsing JSON fields:', e);
        }
        return item;
      });
      
      setConvocationList(processedData);
    } catch (error) {
      console.error('Error fetching convocations:', error);
    }
  }, []);

  useEffect(() => {
    fetchConvocations();
  }, [fetchConvocations]);

  const handleAddConvocation = async (formData) => {
    try {
      const response = await axiosInstance.post('/convocations/convocations', formData, {
        headers: {
          'Content-Type': 'multipart/form-data',
        },
      });
      if (response.status === 201) {
        await fetchConvocations();
        setActiveTab('manage');
        alert("Convocation added successfully!");
      }
    } catch (error) {
      console.error('Error adding convocation:', error);
      alert("Failed to add convocation.");
    }
  };

  const handleUpdateConvocation = async (formData) => {
    try {
      const response = await axiosInstance.put(`/convocations/convocations/${editingConvocation.id}`, formData, {
        headers: {
          'Content-Type': 'multipart/form-data',
        },
      });
      if (response.status === 200) {
        await fetchConvocations();
        setEditingConvocation(null);
        setActiveTab('manage');
        alert("Convocation updated successfully!");
      }
    } catch (error) {
      console.error('Error updating convocation:', error);
      alert("Failed to update convocation.");
    }
  };

  const handleDelete = async (id) => {
    if (window.confirm('Are you sure you want to delete this convocation?')) {
      try {
        const response = await axiosInstance.delete(`/convocations/convocations/${id}`);
        if (response.status === 200) {
          await fetchConvocations();
          alert("Convocation deleted successfully!");
        }
      } catch (error) {
        console.error('Error deleting convocation:', error);
        alert("Failed to delete convocation.");
      }
    }
  };

  const handleEdit = useCallback((convocation) => {
    setEditingConvocation(convocation);
    setActiveTab('add');
  }, []);

  const filteredConvocations = useMemo(() => 
    convocationList.filter(convocation => {
        const searchTermLower = searchTerm.toLowerCase();
        return (
          convocation.id.toString().includes(searchTermLower) ||
          convocation.name.toLowerCase().includes(searchTermLower) ||
          convocation.location.toLowerCase().includes(searchTermLower)
        );
      }), [convocationList, searchTerm]
    );
  
    return (
      <div className="space-y-6">
        <div className="flex space-x-4">
          <button
            onClick={() => {
              setActiveTab('add');
              if (!editingConvocation) {
                setEditingConvocation(null);
              }
            }}
            className={`px-4 py-2 rounded-lg transition-colors ${
              activeTab === 'add'
                ? 'bg-blue-600 text-white'
                : 'bg-gray-100 hover:bg-gray-200'
            }`}
          >
            <div className="flex items-center gap-2">
              <Plus size={16} />
              {editingConvocation ? 'Edit Convocation' : 'Add Convocation'}
            </div>
          </button>
          <button
            onClick={() => setActiveTab('manage')}
            className={`px-4 py-2 rounded-lg transition-colors ${
              activeTab === 'manage'
                ? 'bg-blue-600 text-white'
                : 'bg-gray-100 hover:bg-gray-200'
            }`}
          >
            Manage Convocations
          </button>
        </div>
  
        {activeTab === 'add' ? (
          <ConvocationForm
            onSubmit={editingConvocation ? handleUpdateConvocation : handleAddConvocation}
            initialData={editingConvocation}
            isEditing={!!editingConvocation}
            onCancel={() => {
              setEditingConvocation(null);
              setActiveTab('manage');
            }}
          />
        ) : (
          <div className="space-y-6">
            <div className="flex justify-between items-center">
              <h3 className="text-lg font-semibold text-gray-800">Manage Convocations</h3>
              <div className="relative">
                <input
                  type="text"
                  placeholder="Search convocations..."
                  value={searchTerm}
                  onChange={(e) => setSearchTerm(e.target.value)}
                  className="pl-10 pr-4 py-2 border border-gray-300 rounded-lg w-64 focus:outline-none focus:ring-2 focus:ring-blue-500"
                />
                <Search className="h-5 w-5 text-gray-400 absolute left-3 top-2.5" />
              </div>
            </div>
            <ConvocationList 
              convocationList={filteredConvocations}
              searchTerm={searchTerm}
              onEdit={handleEdit}
              onDelete={handleDelete}
            />
          </div>
        )}
      </div>
    );
  };
  
  export default ConvocationManager;