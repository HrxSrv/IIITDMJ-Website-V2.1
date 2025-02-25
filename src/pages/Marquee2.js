import React, { useRef, useEffect, useState } from "react";

const Marquee2 = ({ data = [] }) => {
  const [isPaused, setIsPaused] = useState(false);
  const [containerWidth, setContainerWidth] = useState(0);
  const [contentWidth, setContentWidth] = useState(0);
  
  const containerRef = useRef(null);
  const contentRef = useRef(null);
  
  // Calculate widths for proper animation
  useEffect(() => {
    if (containerRef.current && contentRef.current) {
      const updateWidths = () => {
        setContainerWidth(containerRef.current.offsetWidth);
        setContentWidth(contentRef.current.offsetWidth);
      };
      
      updateWidths();
      window.addEventListener('resize', updateWidths);
      
      return () => window.removeEventListener('resize', updateWidths);
    }
  }, [data]);

  const formatLink = (link) => {
    // Add "https://" if the link does not already have "http://" or "https://"
    if (!link) return "#";
    if (!link.startsWith("http://") && !link.startsWith("https://")) {
      return `https://${link}`;
    }
    return link;
  };

  // Calculate animation duration based on content width
  const animationDuration = Math.max(contentWidth / 40, 10);
  
  if (!data || data.length === 0) {
    return (
      <div className="h-12 bg-gray-50 flex items-center justify-center text-gray-400 rounded-lg border border-gray-100">
        No announcements available
      </div>
    );
  }

  return (
    <div 
      ref={containerRef}
      className="relative h-12 overflow-hidden rounded-lg bg-gradient-to-r from-gray-50 to-white shadow-sm"
      onMouseEnter={() => setIsPaused(true)}
      onMouseLeave={() => setIsPaused(false)}
    >
      {/* Fade edges */}
      <div className="absolute left-0 top-0 h-full w-12 z-10 bg-gradient-to-r from-white to-transparent"></div>
      <div className="absolute right-0 top-0 h-full w-12 z-10 bg-gradient-to-l from-white to-transparent"></div>
      
      <div className="flex h-full items-center">
        <div
          ref={contentRef}
          className="inline-flex whitespace-nowrap"
          style={{
            animation: isPaused 
              ? "none" 
              : `marquee ${animationDuration}s linear infinite`,
            transform: `translateX(${isPaused ? 0 : ''})`,
            animationPlayState: isPaused ? "paused" : "running"
          }}
        >
          {data.map((item, index) => (
            <a
              key={index}
              href={formatLink(item.link)}
              target="_blank"
              rel="noopener noreferrer"
              className="mx-8 flex items-center group"
            >
              <div className="relative overflow-hidden rounded-md mr-3">
                <span className="inline-flex items-center justify-center rounded-md bg-gradient-to-r from-blue-600 to-indigo-600 px-2.5 py-0.5 text-sm font-medium text-white">
                  NEW
                </span>
                <span className="absolute inset-0 bg-gradient-to-r from-blue-400 to-indigo-400 opacity-0 group-hover:opacity-100 rounded-md blur-sm -z-10 transition-opacity duration-300"></span>
              </div>
              <span className="text-gray-800 font-medium transition-colors duration-200 group-hover:text-blue-600">
                {item.title}
              </span>
              <svg 
                xmlns="http://www.w3.org/2000/svg" 
                className="h-4 w-4 ml-1.5 text-gray-400 group-hover:text-blue-500 transition-transform duration-300 transform group-hover:translate-x-0.5" 
                fill="none" 
                viewBox="0 0 24 24" 
                stroke="currentColor"
              >
                <path strokeLinecap="round" strokeLinejoin="round" strokeWidth={2} d="M10 6H6a2 2 0 00-2 2v10a2 2 0 002 2h10a2 2 0 002-2v-4M14 4h6m0 0v6m0-6L10 14" />
              </svg>
            </a>
          ))}
          
          {/* Duplicate items for seamless looping */}
          {data.map((item, index) => (
            <a
              key={`duplicate-${index}`}
              href={formatLink(item.link)}
              target="_blank"
              rel="noopener noreferrer"
              className="mx-8 flex items-center group"
            >
              <div className="relative overflow-hidden rounded-md mr-3">
                <span className="inline-flex items-center justify-center rounded-md bg-gradient-to-r from-blue-600 to-indigo-600 px-2.5 py-0.5 text-sm font-medium text-white">
                  NEW
                </span>
                <span className="absolute inset-0 bg-gradient-to-r from-blue-400 to-indigo-400 opacity-0 group-hover:opacity-100 rounded-md blur-sm -z-10 transition-opacity duration-300"></span>
              </div>
              <span className="text-gray-800 font-medium transition-colors duration-200 group-hover:text-blue-600">
                {item.title}
              </span>
              <svg 
                xmlns="http://www.w3.org/2000/svg" 
                className="h-4 w-4 ml-1.5 text-gray-400 group-hover:text-blue-500 transition-transform duration-300 transform group-hover:translate-x-0.5" 
                fill="none" 
                viewBox="0 0 24 24" 
                stroke="currentColor"
              >
                <path strokeLinecap="round" strokeLinejoin="round" strokeWidth={2} d="M10 6H6a2 2 0 00-2 2v10a2 2 0 002 2h10a2 2 0 002-2v-4M14 4h6m0 0v6m0-6L10 14" />
              </svg>
            </a>
          ))}
        </div>
      </div>
      
      {/* CSS for the marquee animation */}
      <style jsx>{`
        @keyframes marquee {
          0% {
            transform: translateX(0);
          }
          100% {
            transform: translateX(-50%);
          }
        }
      `}</style>
    </div>
  );
};

export default Marquee2;