import React, { useState, useEffect } from 'react';
import { 
  Search, Calendar, FileText, ExternalLink, User, Bell, 
  AlertCircle, Building2, Info, Briefcase, GraduationCap, 
  Archive, Clock, Filter, MapPin, ChevronDown, ChevronUp, List
} from 'lucide-react';
import PageHeader from '../components/PageHeader';
import axiosInstance from '../axios';

const JobsPortal = () => {
  const [activeJobType, setActiveJobType] = useState('Faculty Positions');
  const [activeTab, setActiveTab] = useState('ACTIVE');
  const [searchQuery, setSearchQuery] = useState('');
  const [allJobs, setAllJobs] = useState([]);
  const [loading, setLoading] = useState(true);
  const [error, setError] = useState(null);
  const [expandedCards, setExpandedCards] = useState({});

  // Toggle job card expansion
  const toggleExpand = (jobId) => {
    setExpandedCards(prev => ({
      ...prev,
      [jobId]: !prev[jobId]
    }));
  };

  // Fetch all jobs at once
  useEffect(() => {
    const fetchAllJobs = async () => {
      setLoading(true);
      try {
        // Fetch all jobs without filters
        const response = await axiosInstance.get(`/jobs/jobs`);
        
        if (response.data) {
          // Sort by latest posting first
          const sortedJobs = response.data.sort((a, b) => 
            new Date(b.createdAt) - new Date(a.createdAt)
          );
          
          setAllJobs(sortedJobs);
          setError(null);
        } else {
          throw new Error('No data returned from server');
        }
      } catch (err) {
        console.error('API Error:', err);
        setError(err.message || 'Failed to fetch jobs');
        setAllJobs([]);
      } finally {
        setLoading(false);
      }
    };

    fetchAllJobs();
  }, []);

  // Filter jobs based on job type, status, and search query
  const filteredJobs = allJobs.filter(job => {
    // Filter by job type and status
    if (job.jobType !== activeJobType || job.status !== activeTab) {
      return false;
    }
    
    // If no search query, return all jobs that match the type and status
    if (!searchQuery) {
      return true;
    }
    
    const query = searchQuery.toLowerCase();
    
    // Search in job title
    if (job.advertTitle.toLowerCase().includes(query)) return true;
    
    // Search in positions
    const positionMatch = job.positions.some(position => 
      position.title?.toLowerCase().includes(query) || 
      position.department?.toLowerCase().includes(query) ||
      position.level?.toLowerCase().includes(query) ||
      position.type?.toLowerCase().includes(query)
    );
    
    if (positionMatch) return true;
    
    // Search in additional information
    const infoMatch = job.additionalInformation.some(info => 
      info.text?.toLowerCase().includes(query)
    );
    
    if (infoMatch) return true;
    
    // Search in miscellaneous info
    return job.misc?.some(item => 
      item.title?.toLowerCase().includes(query) || 
      item.content?.toLowerCase().includes(query)
    );
  });

  // Function to format date
  const formatDate = (dateString) => {
    if (!dateString) return 'N/A';
    const date = new Date(dateString);
    return date.toLocaleDateString('en-US', {
      year: 'numeric',
      month: 'short',
      day: 'numeric'
    });
  };
  
  // Job Type Icon selector
  const JobTypeIcon = ({ type }) => {
    switch (type) {
      case 'Faculty Positions':
        return <GraduationCap className="w-5 h-5" />;
      case 'Non Teaching':
        return <Building2 className="w-5 h-5" />;
      case 'Project Vacancies':
        return <Briefcase className="w-5 h-5" />;
      default:
        return <Briefcase className="w-5 h-5" />;
    }
  };

  // Info Type Icon selector
  const InfoTypeIcon = ({ info }) => {
    // Infer from the title if possible or default to generic info icon
    if (info.title.toLowerCase().includes('admission')) {
      return <Calendar className="w-4 h-4" />;
    } else if (info.title.toLowerCase().includes('phd')) {
      return <GraduationCap className="w-4 h-4" />;
    } else if (info.title.toLowerCase().includes('test')) {
      return <FileText className="w-4 h-4" />;
    } else {
      return <Info className="w-4 h-4" />;
    }
  };

  // Job Card Component
  const JobCard = ({ job }) => {
    const isExpanded = expandedCards[job.id] || false;
    
    return (
      <div className="bg-white rounded-lg shadow-sm border border-gray-200 overflow-hidden mb-6 transition-all hover:shadow-md">
        {/* Header section (always visible) */}
        <div className="p-6">
          <div className="flex justify-between items-start">
            <div className="flex-1">
              <div className="flex items-center mb-2">
                <div className={`p-2 rounded-lg mr-3 ${
                  job.jobType === 'Faculty Positions' ? 'bg-blue-100 text-blue-700' :
                  job.jobType === 'Non Teaching' ? 'bg-green-100 text-green-700' :
                  'bg-purple-100 text-purple-700'
                }`}>
                  <JobTypeIcon type={job.jobType} />
                </div>
                <h2 className="text-xl font-bold text-gray-900">{job.advertTitle}</h2>
              </div>
              <div className="flex flex-wrap items-center gap-4 mt-2 text-gray-600">
                <div className="flex items-center">
                  <Calendar className="w-4 h-4 mr-2" />
                  <span>Posted: {formatDate(job.createdAt)}</span>
                </div>
                {job.applicationOpeningDate && (
                  <div className="flex items-center">
                    <Bell className="w-4 h-4 mr-2" />
                    <span>Applications Open: {formatDate(job.applicationOpeningDate)}</span>
                  </div>
                )}
              </div>
            </div>
            <div className="flex items-center">
              <div className={`px-3 py-1 rounded-full text-sm font-medium mr-3 ${
                job.status === 'ACTIVE' 
                  ? 'bg-green-100 text-green-800' 
                  : job.status === 'ARCHIVED'
                    ? 'bg-gray-100 text-gray-800'
                    : 'bg-red-100 text-red-800'
              }`}>
                {job.status === 'ACTIVE' ? 'Active' : 
                 job.status === 'ARCHIVED' ? 'Archived' : 'Cancelled'}
              </div>
              <button 
                className="p-2 hover:bg-gray-100 rounded-full transition-colors"
                onClick={() => toggleExpand(job.id)}
                aria-label={isExpanded ? "Collapse details" : "Expand details"}
              >
                {isExpanded ? (
                  <ChevronUp className="w-5 h-5 text-gray-500" />
                ) : (
                  <ChevronDown className="w-5 h-5 text-gray-500" />
                )}
              </button>
            </div>
          </div>
        </div>

        {/* Expandable content */}
        {isExpanded && (
          <div className="px-6 pb-6 animate-fadeIn">
            {/* Additional Information Section */}
            {job.additionalInformation && job.additionalInformation.length > 0 && (
              <div className="mt-4 p-4 bg-gray-50 rounded-lg">
                <h3 className="text-lg font-semibold text-gray-800 mb-3 flex items-center">
                  <Info className="w-5 h-5 mr-2 text-blue-600" />
                  Additional Information
                </h3>
                <div className="grid grid-cols-1 md:grid-cols-2 gap-4">
                  {job.additionalInformation.map((info, index) => (
                    <div 
                      key={index}
                      className="flex items-start p-3 rounded-md border border-gray-100 bg-white hover:shadow-md transition-shadow cursor-pointer"
                      onClick={() => info.link && window.open(info.link, '_blank')}
                    >
                      <div className="mr-3 text-blue-600">
                        <InfoTypeIcon info={info} />
                      </div>
                      <div className="flex-1">
                        <p className="text-gray-800">{info.title}</p>
                      </div>
                      {info.link && (
                        <ExternalLink className="w-4 h-4 text-gray-400 ml-2 flex-shrink-0" />
                      )}
                    </div>
                  ))}
                </div>
              </div>
            )}

            {/* Miscellaneous Information Section - New Addition */}
            {job.misc && job.misc.length > 0 && (
              <div className="mt-6 p-4 bg-blue-50 rounded-lg">
                <h3 className="text-lg font-semibold text-gray-800 mb-3 flex items-center">
                  <List className="w-5 h-5 mr-2 text-blue-600" />
                  Miscellaneous Information
                </h3>
                <div className="space-y-4">
                  {job.misc}
                </div>
              </div>
            )}

            {/* Positions */}
            {job.positions && job.positions.length > 0 && (
              <div className="mt-6 space-y-4">
                <h3 className="text-lg font-semibold text-gray-800 flex items-center">
                  <User className="w-5 h-5 mr-2" />
                  Available Positions
                </h3>
                <div className="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-4">
                  {job.positions.map((position, index) => (
                    <div 
                      key={index} 
                      className="bg-gray-50 p-4 rounded-lg hover:bg-gray-100 transition-colors"
                    >
                      <h4 className="font-medium text-gray-900">{position.Title}</h4>
                      <div className="mt-2 space-y-1 text-sm text-gray-600">
                        {position.Department && (
                          <div className="flex items-center">
                            <Building2 className="w-4 h-4 mr-2" />
                            {position.Department}
                          </div>
                        )}
                        {position.Level && <div>Level: {position.Level}</div>}
                        {position.Type && <div>Type: {position.Type}</div>}
                        {position.AdvertNo && <div>Advert No: {position.AdvertNo}</div>}
                        {position.AdvertDate && <div>Advert Date: {position.AdvertDate}</div>}
                      </div>
                    </div>
                  ))}
                </div>
              </div>
            )}

            {/* Shortlisted Candidates */}
            {job.shortlistedCandidates && job.shortlistedCandidates.length > 0 && (
              <div className="mt-6">
                <h3 className="text-lg font-semibold text-gray-800 mb-3 flex items-center">
                  <User className="w-5 h-5 mr-2" />
                  Shortlisted Candidates
                </h3>
                <div className="grid grid-cols-1 md:grid-cols-2 gap-4">
                  {job.shortlistedCandidates.map((category, idx) => (
                    <div key={idx} className="bg-blue-50 p-4 rounded-lg">
                      <h4 className="font-medium text-blue-900">{category.Title}</h4>
                      <div className="mt-2">
                        {category.links && category.links.map((link, linkIdx) => (
                          <a 
                            key={linkIdx}
                            href={link.link}
                            className="block mt-1 text-blue-600 hover:underline flex items-center"
                            target="_blank"
                            rel="noopener noreferrer"
                          >
                            <FileText className="w-4 h-4 mr-2" />
                            {link.title}
                            <ExternalLink className="w-3 h-3 ml-1" />
                          </a>
                        ))}
                      </div>
                    </div>
                  ))}
                </div>
              </div>
            )}

            {/* Important Links */}
            {job.importantLinks && job.importantLinks.length > 0 && (
              <div className="mt-6">
                <h3 className="text-lg font-semibold text-gray-800 mb-3">Important Links</h3>
                <div className="flex flex-wrap gap-3">
                  {job.importantLinks.map((link, index) => (
                    <a
                      key={index}
                      href={link.link}
                      className="flex items-center space-x-2 px-4 py-2 rounded-lg transition-colors bg-gray-100 text-gray-700 hover:bg-gray-200"
                      target="_blank"
                      rel="noopener noreferrer"
                    >
                      <ExternalLink className="w-4 h-4" />
                      <span>{link.title}</span>
                    </a>
                  ))}
                </div>
              </div>
            )}
          </div>
        )}
      </div>
    );
  };

  // Empty state component
  const EmptyState = () => (
    <div className="text-center py-12 bg-white rounded-lg shadow-sm border border-gray-200">
      <div className="inline-flex items-center justify-center w-16 h-16 rounded-full bg-gray-100 mb-4">
        <Archive className="w-8 h-8 text-gray-500" />
      </div>
      <h3 className="text-lg font-medium text-gray-900 mb-2">No jobs found</h3>
      <p className="text-gray-500 max-w-md mx-auto">
        {searchQuery 
          ? "No jobs match your search criteria. Try adjusting your search terms."
          : `There are currently no ${activeTab.toLowerCase()} ${activeJobType.toLowerCase()} available.`
        }
      </p>
    </div>
  );

  // Loading state component
  const LoadingState = () => (
    <div className="text-center py-12">
      <div className="inline-flex items-center justify-center w-16 h-16 rounded-full bg-blue-100 mb-4">
        <Clock className="w-8 h-8 text-blue-600 animate-pulse" />
      </div>
      <h3 className="text-lg font-medium text-gray-900">Loading jobs...</h3>
    </div>
  );

  // Error state component
  const ErrorState = () => (
    <div className="text-center py-12 bg-white rounded-lg shadow-sm border border-red-200">
      <div className="inline-flex items-center justify-center w-16 h-16 rounded-full bg-red-100 mb-4">
        <AlertCircle className="w-8 h-8 text-red-600" />
      </div>
      <h3 className="text-lg font-medium text-gray-900 mb-2">Error loading jobs</h3>
      <p className="text-gray-500 max-w-md mx-auto">{error}</p>
      <button 
        className="mt-4 px-4 py-2 bg-blue-600 text-white rounded-lg hover:bg-blue-700 transition-colors"
        onClick={() => window.location.reload()}
      >
        Retry
      </button>
    </div>
  );

  const crumbs = [{crumb: "Home", link: "/"}, {crumb: "Jobs Portal", link: "#"}];
  
  // Generate job statistics for filter summary
  const jobStats = {
    faculty: {
      active: allJobs.filter(job => job.jobType === 'Faculty Positions' && job.status === 'ACTIVE').length,
      archived: allJobs.filter(job => job.jobType === 'Faculty Positions' && job.status === 'ARCHIVED').length
    },
    nonTeaching: {
      active: allJobs.filter(job => job.jobType === 'Non Teaching' && job.status === 'ACTIVE').length,
      archived: allJobs.filter(job => job.jobType === 'Non Teaching' && job.status === 'ARCHIVED').length
    },
    projects: {
      active: allJobs.filter(job => job.jobType === 'Project Vacancies' && job.status === 'ACTIVE').length,
      archived: allJobs.filter(job => job.jobType === 'Project Vacancies' && job.status === 'ARCHIVED').length
    }
  };
  
  return (
    <div className="min-h-screen bg-gray-50">
      <PageHeader breadCrumbs={crumbs} title={"Jobs Portal"} />
      
      <div className="container mx-auto px-4 py-8">
        <div className="flex flex-col md:flex-row md:items-center md:justify-between gap-4 mb-8">
          <h1 className="text-3xl font-bold text-gray-900">Job Opportunities</h1>
          
          {/* Job Type Selector */}
          <div className="relative inline-block">
            <div className="flex items-center space-x-4">
              <div className="bg-white border border-gray-200 rounded-lg p-1 shadow-sm inline-flex">
                <button
                  className={`px-4 py-2 rounded-md transition-colors font-medium flex items-center ${
                    activeJobType === 'Faculty Positions' 
                      ? 'bg-blue-100 text-blue-700' 
                      : 'text-gray-600 hover:bg-gray-100'
                  }`}
                  onClick={() => setActiveJobType('Faculty Positions')}
                >
                  <GraduationCap className="w-5 h-5 mr-2" />
                  Faculty
                  <span className="ml-1 text-xs bg-blue-50 text-blue-700 px-2 py-0.5 rounded-full">
                    {activeTab === 'ACTIVE' ? jobStats.faculty.active : jobStats.faculty.archived}
                  </span>
                </button>
                <button
                  className={`px-4 py-2 rounded-md transition-colors font-medium flex items-center ${
                    activeJobType === 'Non Teaching' 
                      ? 'bg-green-100 text-green-700' 
                      : 'text-gray-600 hover:bg-gray-100'
                  }`}
                  onClick={() => setActiveJobType('Non Teaching')}
                >
                  <Building2 className="w-5 h-5 mr-2" />
                  Non Teaching
                  <span className="ml-1 text-xs bg-green-50 text-green-700 px-2 py-0.5 rounded-full">
                    {activeTab === 'ACTIVE' ? jobStats.nonTeaching.active : jobStats.nonTeaching.archived}
                  </span>
                </button>
                <button
                  className={`px-4 py-2 rounded-md transition-colors font-medium flex items-center ${
                    activeJobType === 'Project Vacancies' 
                      ? 'bg-purple-100 text-purple-700' 
                      : 'text-gray-600 hover:bg-gray-100'
                  }`}
                  onClick={() => setActiveJobType('Project Vacancies')}
                >
                  <Briefcase className="w-5 h-5 mr-2" />
                  Projects
                  <span className="ml-1 text-xs bg-purple-50 text-purple-700 px-2 py-0.5 rounded-full">
                    {activeTab === 'ACTIVE' ? jobStats.projects.active : jobStats.projects.archived}
                  </span>
                </button>
              </div>
            </div>
          </div>
        </div>
        
        {/* Tabs for Active/Archived */}
        <div className="flex space-x-4 mb-6 border-b border-gray-200">
          <button
            className={`pb-2 px-4 font-medium transition-colors duration-200 ${
              activeTab === 'ACTIVE'
                ? 'border-b-2 border-blue-500 text-blue-600'
                : 'text-gray-500 hover:text-gray-700'
            }`}
            onClick={() => setActiveTab('ACTIVE')}
          >
            Current Openings
          </button>
          <button
            className={`pb-2 px-4 font-medium transition-colors duration-200 ${
              activeTab === 'ARCHIVED'
                ? 'border-b-2 border-blue-500 text-blue-600'
                : 'text-gray-500 hover:text-gray-700'
            }`}
            onClick={() => setActiveTab('ARCHIVED')}
          >
            Archived Positions
          </button>
        </div>

        {/* Search and Filter */}
        <div className="mb-8">
          <div className="relative">
            <Search className="absolute left-3 top-1/2 transform -translate-y-1/2 text-gray-400 w-5 h-5" />
            <input
              type="text"
              placeholder="Search positions, departments, or keywords..."
              className="w-full pl-10 pr-4 py-3 border border-gray-200 rounded-lg focus:outline-none focus:ring-2 focus:ring-blue-500"
              value={searchQuery}
              onChange={(e) => setSearchQuery(e.target.value)}
            />
          </div>
        </div>

        {/* Results summary */}
        <div className="flex items-center justify-between mb-6">
          <p className="text-gray-600">
            Showing {filteredJobs.length} {activeTab.toLowerCase()} {activeJobType.toLowerCase()}
          </p>
          
          {searchQuery && (
            <button 
              className="flex items-center text-blue-600 hover:text-blue-800"
              onClick={() => setSearchQuery('')}
            >
              <Filter className="w-4 h-4 mr-1" />
              Clear search
            </button>
          )}
        </div>

        {/* Job Cards or States */}
        <div className="space-y-6">
          {loading ? (
            <LoadingState />
          ) : error ? (
            <ErrorState />
          ) : filteredJobs.length > 0 ? (
            filteredJobs.map(job => (
              <JobCard key={job.id} job={job} />
            ))
          ) : (
            <EmptyState />
          )}
        </div>
        
        {/* Expand/Collapse All button */}
        {filteredJobs.length > 0 && (
          <div className="mt-6 text-center">
            <button 
              className="px-4 py-2 bg-gray-100 hover:bg-gray-200 text-gray-700 rounded-lg transition-colors inline-flex items-center"
              onClick={() => {
                const allExpanded = filteredJobs.every(job => expandedCards[job.id]);
                const newState = {};
                
                filteredJobs.forEach(job => {
                  newState[job.id] = !allExpanded;
                });
                
                setExpandedCards(newState);
              }}
            >
              {filteredJobs.every(job => expandedCards[job.id]) ? (
                <>
                  <ChevronUp className="w-4 h-4 mr-2" />
                  Collapse All
                </>
              ) : (
                <>
                  <ChevronDown className="w-4 h-4 mr-2" />
                  Expand All
                </>
              )}
            </button>
          </div>
        )}
      </div>
    </div>
  );
};

export default JobsPortal;