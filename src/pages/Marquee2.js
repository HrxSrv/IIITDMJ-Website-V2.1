import React, { useState, useEffect, useRef } from "react";
import { ChevronRight, ExternalLink, Bell } from "lucide-react";

const ModernAnnouncementBar = ({ data = [] }) => {
  const [activeIndex, setActiveIndex] = useState(0);
  const [isPaused, setIsPaused] = useState(false);
  const timerRef = useRef(null);

  useEffect(() => {
    if (!data.length) return;
    
    if (!isPaused) {
      timerRef.current = setInterval(() => {
        setActiveIndex((prev) => (prev + 1) % data.length);
      }, 5000);
    }
    
    return () => clearInterval(timerRef.current);
  }, [isPaused, data.length]);

  const formatLink = (link) => {
    if (!link) return "#";
    if (!link.startsWith("http://") && !link.startsWith("https://")) {
      return `https://${link}`;
    }
    return link;
  };

  const handleNext = () => {
    setActiveIndex((prev) => (prev + 1) % data.length);
  };

  if (!data || data.length === 0) {
    return (
      <div className="h-12 bg-gray-50 flex items-center justify-center text-gray-400 rounded-lg border border-gray-100">
        No announcements available
      </div>
    );
  }

  return (
    <div 
      className="relative h-14 overflow-hidden rounded-xl bg-white shadow-md border border-gray-100"
      onMouseEnter={() => setIsPaused(true)}
      onMouseLeave={() => setIsPaused(false)}
    >
      <div className="absolute inset-0 bg-gradient-to-r from-indigo-50 via-white to-indigo-50 opacity-40"></div>
      
      {/* Bell icon on the left */}
      <div className="absolute left-4 top-0 bottom-0 flex items-center z-10">
        <div className="flex items-center justify-center rounded-full bg-gradient-to-r from-blue-600 to-indigo-600 h-8 w-8 shadow-md">
          <Bell size={16} className="text-white" />
        </div>
      </div>
      
      {/* Next button on the right - always visible and matching bell icon style */}
      <div className="absolute right-4 top-0 bottom-0 flex items-center z-10">
        <button 
          onClick={handleNext}
          className="flex items-center justify-center rounded-full bg-gradient-to-r from-blue-600 to-indigo-600 h-8 w-8 shadow-md"
        >
          <ChevronRight size={16} className="text-white" />
        </button>
      </div>
      
      <div className="flex h-full items-center justify-center px-16">
        <div className="overflow-hidden w-full">
          <div className="relative w-full flex transition-transform duration-500 ease-in-out"
               style={{ transform: `translateX(-${activeIndex * 100}%)` }}>
            {data.map((item, index) => (
              <a
                key={index}
                href={formatLink(item.link)}
                target="_blank"
                rel="noopener noreferrer"
                className="flex items-center justify-center min-w-full px-4 group"
              >
                {/* <div className="mr-3">
                  <span className="inline-flex items-center justify-center rounded-md bg-gradient-to-r from-blue-600 to-indigo-600 px-2.5 py-0.5 text-xs font-medium text-white shadow-sm">
                    NEW
                  </span>
                </div> */}
                <span className="text-gray-800 font-medium transition-colors duration-200 group-hover:text-blue-600 whitespace-nowrap overflow-hidden text-ellipsis">
                  {item.title}
                </span>
                <ExternalLink 
                  size={16} 
                  className="ml-2 text-gray-400 group-hover:text-blue-500 transition-transform duration-300 transform group-hover:translate-x-0.5" 
                />
              </a>
            ))}
          </div>
        </div>
      </div>
      
      {/* Indicators dots */}
      <div className="absolute bottom-1 left-0 right-0 flex justify-center gap-1.5">
        {data.map((_, index) => (
          <button
            key={index}
            onClick={() => setActiveIndex(index)}
            className={`h-1.5 rounded-full transition-all duration-300 ${
              index === activeIndex ? 'w-4 bg-blue-600' : 'w-1.5 bg-gray-300'
            }`}
          />
        ))}
      </div>
    </div>
  );
};

export default ModernAnnouncementBar;