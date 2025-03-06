import React, { useEffect, useRef } from 'react';
import { Link } from "react-router-dom";
import { ChevronRight, Home } from 'lucide-react';

function PageHeader({ image, title, breadCrumbs }) {
  const headerRef = useRef(null);
  const titleRef = useRef(null);
  
  // Default image if none provided
  const defaultImage = process.env.REACT_APP_Backend + "/public/WebsiteImages/3.jpg";
  
  // Parallax effect on scroll
  useEffect(() => {
    const handleScroll = () => {
      if (headerRef.current && titleRef.current) {
        const scrollPosition = window.scrollY;
        // Parallax for background
        headerRef.current.style.transform = `translateY(${scrollPosition * 0.15}px)`;
        // Title scale effect
        titleRef.current.style.transform = `scale(${1 - scrollPosition * 0.001})`;
        titleRef.current.style.opacity = 1 - scrollPosition * 0.003;
      }
    };
    
    window.addEventListener('scroll', handleScroll);
    return () => window.removeEventListener('scroll', handleScroll);
  }, []);

  return (
    <div className="relative overflow-hidden h-screen max-h-[70vh]">
      {/* Background Image with Parallax */}
      <div 
        ref={headerRef}
        className="absolute inset-0 bg-cover bg-center transform scale-110"
        style={{ backgroundImage: `url(${image || defaultImage})` }}
        role="img"
        aria-label="Background image for the page header"
      />
      
      {/* Gradient Overlay */}
      <div className="absolute inset-0 bg-gradient-to-t from-black/50  to-transparent" />
      
      {/* Content Container */}
      <div className="absolute inset-0 flex flex-col justify-end">
        <div className="container mx-auto px-6 pb-16">
          {/* Breadcrumb Navigation with Glass Effect */}
          <nav 
            className="backdrop-blur-sm bg-white/10 rounded-full py-2 px-4 inline-flex items-center mb-8 text-white text-sm font-medium"
            role="navigation"
            aria-label="Breadcrumb navigation"
          >
            <Link to="/" className="hover:text-blue-300 transition-colors duration-300 flex items-center">
              <Home size={14} className="mr-1" />
              <span>Home</span>
            </Link>
            
            {breadCrumbs.map(({ crumb, link }, index) => (
              <div className="flex items-center" key={index}>
                <ChevronRight size={14} className="mx-2 text-blue-300" />
                <Link 
                  to={link}
                  className="hover:text-blue-300 transition-colors duration-300"
                >
                  {crumb}
                </Link>
              </div>
            ))}
          </nav>
          
          {/* Title with Underline Animation */}
          <div className="relative" >
            <h1 className="text-5xl md:text-6xl lg:text-4xl font-bold text-white mb-2 tracking-tight">
              {title}
            </h1>
            <div className="h-1 w-24 bg-blue-500 rounded-full mt-4 animate-pulse" />
          </div>
        </div>
      </div>
    </div>
  );
}

export default PageHeader;