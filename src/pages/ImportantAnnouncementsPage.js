import React, { useState, useEffect } from "react";
import { Clock, Calendar, RefreshCw, ChevronDown } from "lucide-react";
import axiosInstance from "../axios";
import PageHeader from "../components/PageHeader";

const AnnouncementsTimeline = () => {
  const [announcements, setAnnouncements] = useState([]);
  const [error, setError] = useState(null);
  const [isLoading, setIsLoading] = useState(true);
  const [expandedId, setExpandedId] = useState(null);
  const [isRefreshing, setIsRefreshing] = useState(false);

  const fetchData = async (showLoading = true) => {
    if (showLoading) setIsLoading(true);
    setError(null);

    try {
      const response = await axiosInstance.get(
        "RedAnnouncements/RedAnnouncements"
      );
      setAnnouncements(response.data);
      setIsLoading(false);
    } catch (err) {
      console.error("Error fetching Announcements:", err);
      setError({
        message: "Failed to fetch Announcements",
        details:
          err.response?.data?.message || "Network error or server unavailable",
      });
      setIsLoading(false);
    }
  };

  const handleRefresh = async () => {
    setIsRefreshing(true);
    await fetchData(false);
    setTimeout(() => setIsRefreshing(false), 600);
  };

  useEffect(() => {
    fetchData();
  }, []);

  const toggleExpand = (id) => {
    setExpandedId(expandedId === id ? null : id);
  };

  const formatDate = (dateString) => {
    return new Date(dateString).toLocaleDateString(undefined, {
      year: "numeric",
      month: "long",
      day: "numeric"
    });
  };

  const crumbs = [{ crumb: "Important Announcements", link: "#" }];

  // Loading state
  if (isLoading) {
    return (
      <div className="min-h-screen bg-gradient-to-br from-blue-50 to-indigo-50">
        <PageHeader breadCrumbs={crumbs} title={"Important Announcements"} />
        <div className="flex flex-col items-center justify-center h-64">
          <div className="w-16 h-16 border-4 border-blue-500 border-t-transparent rounded-full animate-spin"></div>
          <p className="mt-4 text-gray-600 font-medium">Loading announcements...</p>
        </div>
      </div>
    );
  }

  // Error state
  if (error) {
    return (
      <div className="min-h-screen bg-gradient-to-br from-blue-50 to-indigo-50">
        <PageHeader breadCrumbs={crumbs} title={"Important Announcements"} />
        <div className="max-w-3xl mx-auto mt-8 p-8 bg-white rounded-lg shadow-lg border-l-4 border-red-500">
          <h3 className="text-xl font-bold text-red-600">Error Loading Announcements</h3>
          <p className="mt-2 text-gray-700">{error.message}</p>
          <details className="mt-4">
            <summary className="cursor-pointer text-gray-500 hover:text-gray-700">Technical Details</summary>
            <p className="mt-2 p-2 bg-gray-50 rounded text-sm font-mono">{error.details}</p>
          </details>
          <button 
            onClick={() => fetchData()} 
            className="mt-6 px-4 py-2 bg-blue-500 text-white rounded-lg hover:bg-blue-600 transition-colors flex items-center gap-2"
          >
            <RefreshCw size={16} /> Try Again
          </button>
        </div>
      </div>
    );
  }

  return (
    <div className="min-h-screen bg-gradient-to-br from-blue-50 to-indigo-50 pb-16">
      <PageHeader breadCrumbs={crumbs} title={"Important Announcements"} />
      
      {/* Header section */}
      <div className="max-w-5xl mx-auto px-4 sm:px-6 mt-8">
        <div className="flex justify-between items-center mb-8">
          <div>
            <h2 className="text-3xl font-bold text-gray-800">Stay Informed</h2>
            <p className="text-gray-600 mt-2">The latest updates and important information</p>
          </div>
          <button 
            onClick={handleRefresh}
            className="px-4 py-2 bg-blue-500 text-white rounded-lg hover:bg-blue-600 transition-colors flex items-center gap-2"
            disabled={isRefreshing}
          >
            <RefreshCw size={16} className={isRefreshing ? "animate-spin" : ""} />
            Refresh
          </button>
        </div>
        
        {announcements.length === 0 ? (
          <div className="bg-white rounded-xl shadow-md p-8 text-center">
            <p className="text-gray-600">No announcements available at this time.</p>
          </div>
        ) : (
          <div className="space-y-6">
            {announcements.map((announcement) => (
              <div 
                key={announcement.id}
                className="bg-white rounded-xl shadow-md overflow-hidden transform transition-all duration-300 hover:shadow-lg"
              >
                {/* Card header with date and title */}
                <div className="bg-gradient-to-r from-blue-500 to-indigo-600 p-4 text-white flex items-center justify-between">
                  <div className="flex items-center gap-3">
                    <div className="bg-white/20 p-2 rounded-full">
                      <Clock size={20} />
                    </div>
                    <div className="flex flex-col">
                      <span className="text-xs font-medium text-blue-100">Published on</span>
                      <span className="font-semibold">{formatDate(announcement.createdAt)}</span>
                    </div>
                  </div>
                  <div>
                    <span className="text-xs px-2 py-1 bg-white/20 rounded-full">Important</span>
                  </div>
                </div>
                
                {/* Announcement content */}
                <div className="p-6">
                  <h3 className="text-xl font-bold text-gray-800 mb-3">{announcement.title}</h3>
                  
                  <div className={`overflow-hidden transition-all duration-300 ${
                    expandedId === announcement.id ? 'max-h-screen' : 'max-h-20'
                  }`}>
                    <div className="prose prose-blue max-w-none">
                      {/* This would show the full announcement content */}
                      <p className="text-gray-600">
                        {announcement.content || 
                          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam pulvinar risus non risus hendrerit venenatis. Pellentesque sit amet hendrerit risus, sed porttitor quam. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam pulvinar risus non risus hendrerit venenatis. Pellentesque sit amet hendrerit risus, sed porttitor quam."}
                      </p>
                    </div>
                  </div>
                  
                  {/* Toggle expand button and additional actions */}
                  <div className="mt-4 pt-4 border-t border-gray-100 flex justify-between items-center">
                    <button 
                      onClick={() => toggleExpand(announcement.id)}
                      className="text-blue-500 hover:text-blue-700 flex items-center gap-1 transition-colors"
                    >
                      <span>{expandedId === announcement.id ? 'Show Less' : 'Read More'}</span>
                      <ChevronDown 
                        size={16} 
                        className={`transition-transform ${expandedId === announcement.id ? 'rotate-180' : ''}`} 
                      />
                    </button>
                    
                    <div className="flex gap-4">
                      {announcement.link && (
                        <a 
                          href={announcement.link} 
                          target="_blank" 
                          rel="noopener noreferrer"
                          className="px-3 py-1 text-sm bg-blue-50 text-blue-600 rounded-md hover:bg-blue-100 transition-colors"
                        >
                          View Details
                        </a>
                      )}
                      <button className="text-gray-400 hover:text-gray-600 transition-colors">
                        <Calendar size={18} />
                      </button>
                    </div>
                  </div>
                </div>
              </div>
            ))}
          </div>
        )}
      </div>
    </div>
  );
};

export default AnnouncementsTimeline;