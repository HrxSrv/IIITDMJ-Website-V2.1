import React, { useState, useEffect } from "react";
import { 
  AlertCircle, 
  ExternalLink, 
  RefreshCw, 
  Bell,
  X,
  ChevronRight,
  Sparkles,
  Calendar
} from "lucide-react";
import axiosInstance from "../axios";
import { Link } from "react-router-dom";

const AnnouncementSkeleton = () => (
  <div className="animate-pulse bg-gradient-to-br from-red-50 to-rose-100 rounded-xl shadow-sm p-4 h-40">
    <div className="flex items-center space-x-2">
      <div className="h-5 w-5 bg-red-200 rounded-full"></div>
      <div className="h-4 bg-red-200 rounded w-3/4"></div>
    </div>
    <div className="mt-4 h-16 bg-red-100/50 rounded"></div>
    <div className="flex items-center justify-between mt-6">
      <div className="h-3 bg-red-200 rounded w-20"></div>
      <div className="h-4 w-4 bg-red-200 rounded"></div>
    </div>
  </div>
);

function Modal({ isOpen, onClose, children }) {
  return (
    // backdrop
    <div
      onClick={onClose}
      className={`
        fixed inset-0 flex justify-center items-center transition-all duration-300 backdrop-blur-sm z-50
        ${isOpen ? "visible bg-black/30 opacity-100" : "invisible opacity-0"}
      `}
    >
      {/* modal */}
      <div
        onClick={(e) => e.stopPropagation()}
        className={`
          fixed bg-white rounded-2xl shadow-lg p-6 transition-all duration-300 max-w-2xl w-full max-h-[90vh] overflow-y-auto
          ${isOpen ? "scale-100 opacity-100" : "scale-95 opacity-0"}
        `}
        style={{
          top: "50%",
          left: "50%",
          transform: "translate(-50%, -50%)",
        }}
      >
        <button
          onClick={onClose}
          className="absolute top-4 right-4 p-2 rounded-full text-gray-400 hover:bg-gray-100 hover:text-gray-600 transition-colors"
        >
          <X className="w-5 h-5" />
        </button>
        {children}
      </div>
    </div>
  );
}

const Announcement = ({ text, link, createdAt, isInModal = false }) => {
  const formatTimeAgo = (dateString) => {
    const date = new Date(dateString);
    const now = new Date();
    const diffInSeconds = Math.floor((now - date) / 1000);
    
    if (diffInSeconds < 60) return 'Just now';
    if (diffInSeconds < 3600) return `${Math.floor(diffInSeconds / 60)} mins ago`;
    if (diffInSeconds < 86400) return `${Math.floor(diffInSeconds / 3600)} hours ago`;
    return `${Math.floor(diffInSeconds / 86400)} days ago`;
  };

  return (
    <a
      href={link}
      className={`group relative overflow-hidden transition-all duration-300 rounded-xl ${
        isInModal 
          ? 'bg-white hover:bg-gray-50 shadow hover:shadow-md p-5 mb-4 border border-gray-100'
          : 'bg-gradient-to-br from-red-50 via-red-100 to-rose-100 hover:from-red-100 hover:to-rose-200 shadow-sm hover:shadow-md p-5 h-full'
      }`}
      target="_blank"
      rel="noopener noreferrer"
    >
      <span className="absolute -top-20 -right-20 w-32 h-32 bg-gradient-to-br from-red-100 to-red-200 rounded-full opacity-50 group-hover:opacity-70 transition-opacity duration-500"></span>
      
      <div className="flex flex-col justify-between h-full relative z-10">
        <div className="flex items-start space-x-3">
          <div className="bg-white/80 p-2 rounded-full shadow-sm">
            <Bell className="w-4 h-4 text-red-600 flex-shrink-0" />
          </div>
          <div className="flex-1">
            <span className={`text-red-800 font-medium ${isInModal ? 'text-base' : 'text-md line-clamp-3'}`}>
              {text}
            </span>
          </div>
        </div>
        
        <div className="flex items-center justify-between mt-4 pt-3 border-t border-red-200/30">
          <div className="flex items-center space-x-2">
            <Calendar className="w-3 h-3 text-red-500" />
            <span className="text-red-500 text-xs font-medium">
              {formatTimeAgo(createdAt)}
            </span>
          </div>
          <div className="bg-white/80 p-1.5 rounded-full shadow-sm group-hover:bg-white transition-colors">
            <ExternalLink 
              className="w-3.5 h-3.5 text-red-600 group-hover:translate-x-0.5 transition-all" 
            />
          </div>
        </div>
      </div>
    </a>
  );
};

const ImportantAnnouncement = () => {
  const [data, setData] = useState([]); 
  const [error, setError] = useState(null);   
  const [isLoading, setIsLoading] = useState(true);
  const [isModalOpen, setIsModalOpen] = useState(false);

  const fetchData = async (showLoading = true) => {
    if (showLoading) setIsLoading(true);
    setError(null);

    try {
      const response = await axiosInstance.get("RedAnnouncements/RedAnnouncements");
      setData(response.data); 
      setIsLoading(false);
    } catch (err) {
      console.error("Error fetching Announcements:", err);
      setError({
        message: "Failed to fetch Announcements",
        details: err.response?.data?.message || "Network error or server unavailable"
      });
      setIsLoading(false);
    }
  };   

  useEffect(() => {
    fetchData();
  }, []); 

  const renderContent = () => {
    if (isLoading) {
      return (
        <div className="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-4 gap-6">
          {[1, 2, 3, 4].map((_, index) => (
            <AnnouncementSkeleton key={index} />
          ))}
        </div>
      );
    }

    if (error) {
      return (
        <div className="bg-gradient-to-r from-red-50 to-red-100 border border-red-200 rounded-xl p-8 text-center shadow-sm">
          <div className="bg-white/80 p-4 rounded-full shadow-sm w-20 h-20 flex items-center justify-center mx-auto mb-6">
            <AlertCircle className="w-10 h-10 text-red-500" />
          </div>
          <h2 className="text-2xl font-bold text-red-800 mb-3">
            Announcement Fetch Failed
          </h2>
          <p className="text-red-600 mb-4 max-w-md mx-auto">{error.message}</p>
          <p className="text-red-500 text-sm mb-6 max-w-md mx-auto">{error.details}</p>
          <button 
            onClick={() => fetchData()}
            className="bg-gradient-to-r from-red-500 to-red-600 text-white px-6 py-3 rounded-full hover:from-red-800 hover:to-red-700 transition-colors shadow-sm hover:shadow-md flex items-center mx-auto"
          >
            <RefreshCw className="mr-2 w-4 h-4 animate-spin-slow" /> Retry
          </button>
        </div>
      );
    }

    if (data.length === 0) {
      return (
        <div className="bg-gradient-to-r from-gray-50 to-gray-100 rounded-xl p-8 text-center shadow-sm border border-gray-200">
          <div className="bg-white p-4 rounded-full shadow-sm w-20 h-20 flex items-center justify-center mx-auto mb-6">
            <Bell className="w-10 h-10 text-gray-400" />
          </div>
          <h2 className="text-2xl font-bold text-gray-800 mb-2">
            No Important Announcements
          </h2>
          <p className="text-gray-600 mt-2 max-w-md mx-auto">
            Everything is running smoothly. Check back later for updates.
          </p>
        </div>
      );
    }

    const displayedAnnouncements = data.slice(0, 4);
    const hasMoreAnnouncements = data.length > 4;

    return (
      <>
        <div className="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-4 gap-6">
          {displayedAnnouncements.map(({ title, link, createdAt }, index) => (
            <Announcement 
              key={index} 
              text={title} 
              link={link} 
              createdAt={createdAt}
            />
          ))}
        </div>
        
        {hasMoreAnnouncements && (
          <Link
            to="/allImportantAnnouncements"
            className="group flex items-center justify-center gap-2 w-full max-w-md mx-auto mt-8 px-6 py-3 text-sm font-medium text-black-700 hover:text-red-800 bg-gradient-to-r from-grey-50 to-red-grey hover:from-red-100 hover:to-red-200 rounded-xl transition-all duration-300 shadow-sm hover:shadow border border-red-200"
          >
            <span>See All Announcements</span>
            <div className="bg-white p-1 rounded-full">
              <ChevronRight
                size={14} 
                className="transition-transform duration-300 group-hover:translate-x-1 text-red-600" 
              />
            </div>
          </Link>
        )}

        <Modal
          isOpen={isModalOpen}
          onClose={() => setIsModalOpen(false)}
        >
          <div className="p-4">
            <div className="flex items-center space-x-3 mb-6">
              <Sparkles className="w-6 h-6 text-red-500" />
              <h2 className="text-2xl font-bold text-gray-900">
                All Announcements
              </h2>
            </div>
            <div className="space-y-4 max-h-[60vh] overflow-y-auto pr-2">
              {data.map(({ title, link, createdAt }, index) => (
                <Announcement 
                  key={index} 
                  text={title} 
                  link={link} 
                  createdAt={createdAt}
                  isInModal={true}
                />
              ))}
            </div>
          </div>
        </Modal>
      </>
    );
  };

  return (
    <div className="w-full max-w-[80vw] mx-auto  py-6">
      <div className="flex items-center justify-between mb-6">
        <div className="flex items-center space-x-3">
          <div className="bg-gradient-to-br from-red-100 to-red-200 p-2 rounded-lg shadow-sm">
            <Bell className="w-5 h-5 text-red-600" />
          </div>
          <h2 className="text-xl font-bold text-gray-800">Important Announcements</h2>
        </div>
        <button 
          onClick={() => fetchData(false)}
          className="text-gray-500 hover:text-gray-700 p-2 rounded-full hover:bg-gray-100 transition-colors"
        >
          <RefreshCw className="w-4 h-4" />
        </button>
      </div>
      {renderContent()}
    </div>
  );
};

export default ImportantAnnouncement;