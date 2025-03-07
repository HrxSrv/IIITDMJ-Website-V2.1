import { useState } from "react";
import { motion, AnimatePresence } from "framer-motion";
import { 
  Menu, 
  X, 
  ChevronDown,
  Twitter, 
  Linkedin, 
  Facebook, 
  Mail,
  SpeakerIcon,
  Briefcase, 
  Calendar, 
  FileText, 
  CreditCard, 
  Users, 
  LifeBuoy,
  School,
  LanguagesIcon,
  Globe,
  Settings,
  Type
} from "lucide-react";
import { Link } from "react-router-dom";
import { useDispatch, useSelector } from 'react-redux';
import { increaseFontSize, decreaseFontSize } from '../../../app/slice/sessionSlice';

export default function EnhancedMobileMenu({ Menus, logo, isOpen, setIsOpen }) {
  const [clicked, setClicked] = useState(null);
  const [subGroupClicked, setSubGroupClicked] = useState(null);
  const [accessibilityExpanded, setAccessibilityExpanded] = useState(false);
  const [selectedLanguage, setSelectedLanguage] = useState("English");

  const dispatch = useDispatch();
  const fontSize = useSelector((state) => state.fontSize);

  // Accessibility menu items from the AccessibilityHeader
  const accessibilityItems = [
    { name: 'Jobs', icon: Briefcase, href: '/jobs' },
    { name: 'Calendar', icon: Calendar, href: '/calendars' },
    { name: 'Tenders', icon: FileText, href: '/tenders' },
    { name: 'IIIT Council', icon: CreditCard, href: 'https://iiitcouncil.com/' },
    { name: 'Rajbhasha', icon: LanguagesIcon, href: 'https://www.iiitdmj.ac.in/rajbhasha.iiitdmj.ac.in/' },
    { name: 'Ordinance', icon: LifeBuoy, href: 'https://www.iiitdmj.ac.in/administration/downloads/Ordinances%20of%20PDPM-IIITDM%20Jabalpur.pdf' },
    { name: 'QIP Program', icon: School, href: '/Qip' },
  ];

  const toggleDrawer = () => {
    setIsOpen(!isOpen);
    setClicked(null);
    setSubGroupClicked(null);
    setAccessibilityExpanded(false);
  };

  const subMenuDrawer = {
    enter: {
      height: "auto",
      overflow: "hidden",
    },
    exit: {
      height: 0,
      overflow: "hidden",
    },
  };

  const handleItemClick = (to) => {
    if (to) {
      setIsOpen(false);
    }
  };

  const toggleLanguage = () => {
    setSelectedLanguage(selectedLanguage === "English" ? "हिन्दी" : "English");
  };

  return (
    <>
      <button 
        className="lg:hidden relative p-2" 
        onClick={() => setIsOpen(true)}
      >
        <Menu className="text-white" />
      </button>

      <AnimatePresence>
        {isOpen && (
          <motion.div
            className="fixed inset-0 z-50 bg-gray-900 overflow-y-auto"
            initial={{ opacity: 0, x: "-100%" }}
            animate={{ opacity: 1, x: 0 }}
            exit={{ opacity: 0, x: "-100%" }}
            transition={{ type: "tween", duration: 0.3 }}
            style={{ fontSize: `${fontSize}px` }}
          >
            {/* Mobile Menu Header */}
            <div className="relative top-0 z-50 flex items-center justify-between px-6 py-4 border-b border-white/10 bg-gray-900">
              <Link to="/">
                <img
                  src={logo}
                  alt="Institute Logo"
                  className="h-8 w-auto"
                />
              </Link>
              <button 
                onClick={toggleDrawer}
                className="p-2 hover:bg-white/10 rounded-full transition-colors"
              >
                <X className="w-6 h-6 text-white" />
              </button>
            </div>

            {/* Accessibility Section - Moved to top */}
            <div className="px-6 py-4 border-b border-gray-700">
              <h3 className="text-gray-400 text-xs uppercase font-bold mb-2">Accessibility Options</h3>
              <div
                className="flex items-center justify-between p-3 hover:bg-gray-800 rounded-md cursor-pointer text-white"
                onClick={() => setAccessibilityExpanded(!accessibilityExpanded)}
              >
                <span className="flex items-center">
                  <Settings size={16} className="mr-2" />
                  Accessibility Settings
                </span>
                <ChevronDown
                  className={`transform transition-transform ${
                    accessibilityExpanded ? "rotate-180" : ""
                  }`}
                />
              </div>
              
              {/* Font Size and Screen Reader Controls */}
              <motion.div
                initial="exit"
                animate={accessibilityExpanded ? "enter" : "exit"}
                variants={subMenuDrawer}
                className="ml-4"
              >
                <div className="mt-4 grid grid-cols-2 gap-4">
                  <div className="bg-gray-800 p-3 rounded-md">
                    <div className="text-gray-300 text-xs mb-2">Text Size</div>
                    <div className="flex items-center justify-between">
                      <button 
                        onClick={() => dispatch(decreaseFontSize())}
                        className="bg-gray-700 hover:bg-gray-600 text-white w-8 h-8 rounded-full flex items-center justify-center"
                      >
                        A-
                      </button>
                      <div className="text-white font-medium">{fontSize}px</div>
                      <button 
                        onClick={() => dispatch(increaseFontSize())}
                        className="bg-gray-700 hover:bg-gray-600 text-white w-8 h-8 rounded-full flex items-center justify-center"
                      >
                        A+
                      </button>
                    </div>
                  </div>
                  
                  <div className="bg-gray-800 p-3 rounded-md">
                    <div className="text-gray-300 text-xs mb-2">Language</div>
                    <button 
                      onClick={toggleLanguage}
                      className="flex items-center justify-between w-full bg-gray-700 hover:bg-gray-600 text-white p-2 rounded"
                    >
                      <Globe size={16} />
                      <span>{selectedLanguage}</span>
                      <ChevronDown size={16} />
                    </button>
                  </div>
                </div>
                
                <div className="mt-4 bg-gray-800 p-3 rounded-md">
                  <Link 
                    to="/screenreaderaccess" 
                    className="flex items-center w-full bg-gray-700 hover:bg-gray-600 text-white p-2 rounded"
                  >
                    <SpeakerIcon size={16} className="mr-2" />
                    Screen Reader Access
                  </Link>
                </div>
                
                {/* Email Link */}
                <div className="mt-4 bg-gray-800 p-3 rounded-md">
                  <Link 
                    to="mailto:info@iiitdmj.ac.in" 
                    className="flex items-center text-white"
                  >
                    <Mail size={16} className="mr-2" />
                    <span>IIITDMJ Email</span>
                  </Link>
                </div>
                
                {/* Social Media Links */}
                <div className="mt-4 flex justify-center space-x-6 py-3">
                  <a href="#" className="text-white hover:text-blue-400 transition-colors">
                    <Twitter size={20} />
                  </a>
                  <a href="#" className="text-white hover:text-blue-600 transition-colors">
                    <Linkedin size={20} />
                  </a>
                  <a href="#" className="text-white hover:text-blue-500 transition-colors">
                    <Facebook size={20} />
                  </a>
                </div>
              </motion.div>
            </div>

            {/* Regular Navigation Menu */}
            <div className="px-6 py-4 border-b border-gray-700">
              <h3 className="text-gray-400 text-xs uppercase font-bold mb-2">Main Navigation</h3>
              <ul>
                {Menus.map((menuItem, i) => {
                  const isClicked = clicked === i;
                  const hasSubMenuGroups = menuItem.subMenuGroups?.length > 0;

                  return (
                    <li key={`${menuItem.name}-${i}`} className="mb-1">
                      {menuItem.href ? (
                        <Link
                          to={menuItem.href}
                          className="flex items-center justify-between p-3 hover:bg-gray-800 rounded-md cursor-pointer text-white"
                          onClick={() => handleItemClick(menuItem.href)}
                        >
                          {menuItem.name}
                        </Link>
                      ) : (
                        <span
                          className="flex items-center justify-between p-3 hover:bg-gray-800 rounded-md cursor-pointer text-white"
                          onClick={() => {
                            setClicked(isClicked ? null : i);
                            setSubGroupClicked(null);
                          }}
                        >
                          {menuItem.name}
                          {hasSubMenuGroups && (
                            <ChevronDown
                              className={`transform transition-transform ${
                                isClicked ? "rotate-180" : ""
                              }`}
                            />
                          )}
                        </span>
                      )}
                      {hasSubMenuGroups && (
                        <motion.div
                          initial="exit"
                          animate={isClicked ? "enter" : "exit"}
                          variants={subMenuDrawer}
                          className="ml-4"
                        >
                          {menuItem.subMenuGroups.map((group, groupIndex) => (
                            <div key={`${menuItem.name}-group-${groupIndex}`} className="mb-2">
                              {group.heading && (
                                <span
                                  className="flex items-center justify-between p-2 text-sm font-semibold text-gray-400 cursor-pointer hover:bg-gray-800 rounded-md"
                                  onClick={() => setSubGroupClicked(subGroupClicked === groupIndex ? null : groupIndex)}
                                >
                                  {group.heading}
                                  <ChevronDown
                                    size={16}
                                    className={`transform transition-transform ${
                                      subGroupClicked === groupIndex ? "rotate-180" : ""
                                    }`}
                                  />
                                </span>
                              )}
                              <motion.ul
                                initial="exit"
                                animate={
                                  !group.heading || subGroupClicked === groupIndex
                                    ? "enter"
                                    : "exit"
                                }
                                variants={subMenuDrawer}
                                className="ml-3"
                              >
                                {group.items.map((item, itemIndex) => (
                                  <li key={`${item.name}-${itemIndex}`}>
                                    {item.href ? (
                                      <Link
                                        to={item.href}
                                        className="p-2 flex items-center hover:bg-gray-800 rounded-md gap-x-2 cursor-pointer text-sm text-white"
                                        onClick={() => handleItemClick(item.href)}
                                      >
                                        {item.icon && <item.icon size={16} className="text-gray-400" />}
                                        {item.name}
                                      </Link>
                                    ) : (
                                      <span className="p-2 flex items-center hover:bg-gray-800 rounded-md gap-x-2 cursor-pointer text-sm text-white">
                                        {item.icon && <item.icon size={16} className="text-gray-400" />}
                                        {item.name}
                                      </span>
                                    )}
                                  </li>
                                ))}
                              </motion.ul>
                            </div>
                          ))}
                        </motion.div>
                      )}
                    </li>
                  );
                })}
              </ul>
            </div>
            
            {/* Quick Links - Moved to bottom with consistent styling */}
            <div className="px-6 py-4">
              <h3 className="text-gray-400 text-xs uppercase font-bold mb-2">Quick Links</h3>
              <div className="grid grid-cols-2 gap-2">
                {accessibilityItems.map((item, index) => (
                  <Link
                    key={index}
                    to={item.href}
                    className="flex items-center p-3 text-white bg-gray-800 hover:bg-gray-700 rounded-md text-sm"
                    onClick={() => handleItemClick(item.href)}
                  >
                    <item.icon size={16} className="mr-2 text-blue-400" />
                    {item.name}
                  </Link>
                ))}
              </div>
            </div>
          </motion.div>
        )}
      </AnimatePresence>
    </>
  );
}