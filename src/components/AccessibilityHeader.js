import React, { useState } from 'react';
import { 
  Menu, 
  X, 
  Twitter, 
  Linkedin, 
  Facebook, 
  Briefcase, 
  Calendar, 
  FileText, 
  CreditCard, 
  Users, 
  LifeBuoy, 
  Send,
  Mail,
  LanguagesIcon,
  School,
  SpeakerIcon
} from 'lucide-react';
import { Link } from 'react-router-dom'; // Import Link for internal navigation
import { useDispatch, useSelector } from 'react-redux';
import { increaseFontSize, decreaseFontSize } from '../app/slice/sessionSlice'; // Update path if needed
const AccessibilityHeader = () => {
  const [isMenuOpen, setIsMenuOpen] = useState(false);

  const dispatch = useDispatch();
  const fontSize = useSelector((state) => state.fontSize); // Get font size from Redux store

  const menuItems = [
    { label: 'Jobs', icon: Briefcase, link: '/jobs' },                // Internal link
    { label: 'Calendar', icon: Calendar, link: '/calendars' },             // Internal link
    { label: 'Tenders', icon: FileText, link: '/tenders' },              // Internal link
    { label: 'IIIT Council', icon: CreditCard, link: 'https://iiitcouncil.com/' },    // External link
    // { label: 'Recruiters/Careers', icon: Users, link: 'https://recruiters.example.com' },      // External link
    { label: 'Rajbhasha', icon: LanguagesIcon, link: 'https://www.iiitdmj.ac.in/rajbhasha.iiitdmj.ac.in/' },               // External link
    { label: 'Ordinance', icon: LifeBuoy, link: 'https://www.iiitdmj.ac.in/administration/downloads/Ordinances%20of%20PDPM-IIITDM%20Jabalpur.pdf' },                  // External link
    { label: 'QIP Program', icon: School, link: '/Qip' },                     // External link
  ];

  return (
    <header className="bg-black text-white" style={{ fontSize: `${fontSize}px` }}>
      <div className="container mx-auto px-4">
        <div className="flex justify-between items-center py-1">
          {/* Mobile menu button */}
          <button
            className="lg:hidden text-white"
            onClick={() => setIsMenuOpen(!isMenuOpen)}
          >
            {isMenuOpen ? <X size={24} /> : <Menu size={24} />}
          </button>

          {/* Desktop menu */}
          <nav className="hidden lg:flex space-x-4">
            {menuItems.map((item, index) => (
              <div key={index}>
                {item.link.startsWith('http') ? (
                  // External link
                  <a
                    href={item.link}
                    target="_blank"
                    rel="noopener noreferrer"
                    className="flex items-center text-white text-xs font-bold uppercase no-underline hover:text-gray-300 transition duration-200"
                  >
                    <item.icon size={16} className="mr-1 text-white" />
                    {item.label}
                  </a>
                ) : (
                  // Internal link
                  <Link
                    to={item.link}
                    className="flex items-center text-white text-xs font-bold uppercase no-underline hover:text-gray-300 transition duration-200"
                  >
                    <item.icon size={16} className="mr-1 text-white" />
                    {item.label}
                  </Link>
                )}
              </div>
            ))}
          </nav>

          {/* Social media icons and language selector */}
          <div className="flex items-center space-x-2">
            <Twitter size={16} className="text-white hover:text-gray-300 transition duration-200" />
            <Linkedin size={16} className="text-white hover:text-gray-300 transition duration-200" />
            <Facebook size={16} className="text-white hover:text-gray-300 transition duration-200" />
            <Link to='/screenreaderaccess'><SpeakerIcon size={16} className="text-white hover:text-gray-300 transition duration-200"/></Link>
            {/* <select className="bg-black text-white border-none text-sm hover:text-gray-300 transition duration-200">
              <option>हिन्दी</option>
              <option>English</option>
            </select> */}
            {/* Font size adjustment buttons */}
            <button 
              onClick={() => dispatch(decreaseFontSize())} 
              className="text-xs hover:text-gray-300 transition duration-200"
            >
              A-
            </button>
            <button 
              onClick={() => dispatch(increaseFontSize())} 
              className="text-xs hover:text-gray-300 transition duration-200"
            >
              A+
            </button>
            <a href="#" className="flex items-center text-sm no-underline text-white hover:text-gray-300 transition duration-200">
              <Mail size={16} className="mr-1" />
              IIITDMJ Email
            </a>
          </div>
        </div>
      </div>

      {/* Mobile menu */}
      {isMenuOpen && (
        <nav className="lg:hidden">
          {menuItems.map((item, index) => (
            <div key={index}>
              {item.link.startsWith('http') ? (
                // External link
                <a
                  href={item.link}
                  target="_blank"
                  rel="noopener noreferrer"
                  className="block py-2 px-4 hover:bg-blue-700 flex items-center text-sm no-underline text-white"
                >
                  <item.icon size={16} className="mr-2 text-white" />
                  {item.label}
                </a>
              ) : (
                // Internal link
                <Link
                  to={item.link}
                  className="block py-2 px-4 hover:bg-blue-700 flex items-center text-sm no-underline text-white"
                >
                  <item.icon size={16} className="mr-2 text-white" />
                  {item.label}
                </Link>
              )}
            </div>
          ))}
        </nav>
      )}
    </header>
  );
};

export default AccessibilityHeader;
