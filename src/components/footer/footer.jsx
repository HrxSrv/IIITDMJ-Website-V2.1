import React, { useState } from "react";
import { Link } from "react-router-dom";
import { FaPhoneAlt, FaGlobe, FaTwitter, FaLinkedin, FaFacebook, FaAngleRight, FaInstagram, FaYoutube, FaBug } from "react-icons/fa";
import WordOfDay from "../WordOfDay";

const Footer = () => {
  const [dialogOpen, setDialogOpen] = useState(false);
  
  const about_links = [
    { name: 'Home', href: '/' },
    { name: 'PBI', href: '/#' },
    { name: 'IIIT Act', href: 'https://www.iiitdmj.ac.in/downloads/IIIT%20Act%2030_of_2014.pdf' },
    { name: 'RTI', href: '/rti' },
    { name: 'Statuses', href: 'https://www.iiitdmj.ac.in/downloads/The%20Gazette%20publication%20of%20Statutes%20of%20IIITDM%20Jabalpur.pdf' },
    { name: 'Maps & Directions', href: '/mapsanddirections' },
    { name: 'Taxi Services', href: 'https://www.iiitdmj.ac.in/downloads/taxi%20services.pdf' },
    { name: 'Bus Time Table', href: 'https://www.iiitdmj.ac.in/downloads/time%20table%20Detailed.pdf' },
    { name: 'Organizational Chart', href: 'https://www.iiitdmj.ac.in/downloads/Organizational%20Chart.pdf' },
    { name: 'Recruitment and Promotion Norms-2016', href: 'https://www.iiitdmj.ac.in/downloads/RPN-2016(1).pdf' },
  ];
  
  const imporatnt_links = [
    { name: 'Electronics and ICT Academy', href: 'https://www.iiitdmj.ac.in/administration/ict.iiitdmj.ac.in' },
    { name: 'Online Fee Payment', href: 'https://www.iiitdmj.ac.in/administration/efee.iiitdmj.ac.in/efee' },
    { name: 'Annual Report', href: '/annualreport' },
    { name: 'Annual Account', href: '/annualaccount' },
    { name: 'World e-book Library', href: 'https://community.worldlibrary.in/?Affiliatikey=NDL-ZY1239' },
    { name: 'Consortium for Educational Communication (CEC)', href: 'https://cec.nic.in/Pages/Home.aspx' },
    { name: 'National Academic Depository (NAD)', href: 'https://nad.gov.in/index.html' },
    { name: 'Building Materials & Technology Promotion Council', href: 'https://bmtpc.org/topics.aspx?mid=56&Mid1=180' },
    { name: 'Intellectual Property Policy (IPR)', href: 'https://www.iiitdmj.ac.in/downloads/IPR%20Policy%20Final%20V1%2016_6_2020.pdf' },
    { name: 'Equal Opportunity Policy for Persons with Disabilities', href: 'https://www.iiitdmj.ac.in/downloads/Equal_Opportunity%20Policy_IIITDM%20Jabalpur.pdf' },
    { name: 'Accessibility', href: '/accessibility' },
    { name: 'Asi@Connect', href: 'https://www.iiitdmj.ac.in/asia-connect.iiitdmj.ac.in/' },
  ];
  
  const other_links = [
    { name: 'SC/ST and Minority Cell', href: 'https://www.iiitdmj.ac.in/STSCCell/' },
    { name: 'Women Cell', href: 'https://www.iiitdmj.ac.in/womencell/index.html' },
    { name: 'Internal Complaints Committee', href: 'https://www.iiitdmj.ac.in/downloads/Internal%20Complaints%20Committee%20of%20the%20Institute-2429-31-jan-2024.pdf' },
    { name: 'Grievance Redressal Cell', href: '/grievanceandredressalcell' },
    { name: 'Scholarship', href: '/scholarship' },
    { name: 'Anti-Ragging Committee and Squad', href: 'https://www.iiitdmj.ac.in/downloads/Anti-Ragging-Committee-and-Squad-2024.pdf' },
    { name: 'Revista', href: 'https://www.iiitdmj.ac.in/revista.iiitdmj.ac.in/' },
    { name: 'Fit India', href: 'https://www.iiitdmj.ac.in/fitindia.iiitdmj.ac.in/Home.html' },
    { name: 'Azadi Ka Amrit Mahotsava (AKAM) 2022', href: '#' },
    { name: 'Contact Us', href: '/contact' },
    { name: 'Press Releases', href: '/pressreleases' },
  ];

  const closed_holiday=[
    { name: '2023', href: 'https://www.iiitdmj.ac.in/downloads/Closed-Holiday-2023.pdf' },
    { name: '2024', href: 'https://www.iiitdmj.ac.in/downloads/Closed-Holiday-2024.pdf' },
  ];

  const restricted_holiday=[
    { name: '2023', href: 'https://www.iiitdmj.ac.in/downloads/RH-2023.pdf' },
    { name: '2024', href: 'https://www.iiitdmj.ac.in/downloads/Restricted-Holiday-2024.pdf' },
  ];
  
  const renderLink = (item) =>
    item.href.startsWith("/") ? (
      <Link
        to={item.href}
        className="text-gray-400 hover:text-white text-sm flex items-center space-x-2 transition-colors duration-200"
      >
        <FaAngleRight className="text-xs" />
        <span>{item.name}</span>
      </Link>
    ) : (
      <a
        href={item.href}
        target="_blank"
        rel="noopener noreferrer"
        className="text-gray-400 hover:text-white text-sm flex items-center space-x-2 transition-colors duration-200"
      >
        <FaAngleRight className="text-xs" />
        <span>{item.name}</span>
      </a>
    );
    
  return (
    <>
      {/* Bug Report Button - Fixed on the right side */}
      <div className="fixed right-0 top-1/2 transform -translate-y-1/2 z-100">
        <button 
          onClick={() => setDialogOpen(true)}
          className="flex items-center gap-2 bg-blue-600 hover:bg-blue-700 text-white font-medium py-3 px-4 rounded-l-lg shadow-lg transition-all duration-300 border-r-0"
        >
          <FaBug className="text-lg" />
          <span>Report Bug</span>
        </button>
      </div>
      
      {/* Bug Report Dialog */}
      {dialogOpen && (
        <div className="fixed inset-0 bg-black bg-opacity-50 flex items-center justify-center z-50">
          <div className="bg-white rounded-lg shadow-xl p-6 max-w-md w-full mx-4 relative">
            <button 
              onClick={() => setDialogOpen(false)} 
              className="absolute top-4 right-4 text-gray-500 hover:text-gray-700"
            >
              &times;
            </button>
            
            <div className="text-center mb-6">
              <div className="mx-auto flex items-center justify-center h-16 w-16 rounded-full bg-blue-100 mb-4">
                <FaBug className="h-8 w-8 text-blue-600" />
              </div>
              <h3 className="text-lg font-medium text-gray-900 mb-2">Website Feedback</h3>
              <p className="text-gray-600">
                This website is in test mode and your feedback is absolutely necessary. If you find any bug or have any suggestions, please fill the Google form below.
              </p>
            </div>
            
            <div className="flex justify-center">
              <a 
                href="https://docs.google.com/forms/d/e/1FAIpQLSdiMEDId8BVefzS5bxMNknX1ObqVCn2yAiyFPIi-ZC0nxzB3A/viewform?usp=dialog" 
                target="_blank" 
                rel="noopener noreferrer"
                className="w-full text-center bg-blue-600 hover:bg-blue-700 text-white font-medium py-2 px-4 rounded-md transition-colors duration-300"
              >
                Open Feedback Form
              </a>
            </div>
          </div>
        </div>
      )}
      
      <footer className="relative z-8">
        {/* Top Footer Area */}
        <div className="bg-[#15151e] text-white py-20">
          <div className="container mx-auto px-4">
            <div className="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-4 gap-8">
              {/* First Column */}
              <div className="space-y-6">
                <div>
                  <h5 className="text-white font-medium text-lg mb-6">About</h5>
                  <ul className="space-y-3">
                    {about_links.map((item) => (
                      <li key={item.name}>
                        {renderLink(item)}
                      </li>
                    ))}
                  </ul>
                </div>
              </div>

              {/* Second Column */}
              <div className="space-y-6">
                <div>
                  <h5 className="text-white font-medium text-lg mb-6">Important Links</h5>
                  <ul className="space-y-3">
                    {imporatnt_links.map((item) => (
                      <li key={item.name}>
                        {renderLink(item)}
                      </li>
                    ))}
                  </ul>
                </div>
              </div>

              {/* Third Column */}
              <div className="space-y-6">
                <div>
                  <h5 className="text-white font-medium text-lg mb-6">Other Links</h5>
                  <ul className="space-y-3">
                    {other_links.map((item) => (
                      <li key={item.name}>
                        {renderLink(item)}
                      </li>
                    ))}
                  </ul>
                  <div className="mt-3 flex items-center space-x-2">
                    <FaAngleRight className="text-xs" />
                    <span className="text-white text-sm flex items-center space-x-2 transition-colors duration-200">Closed Holiday</span>
                    {closed_holiday.map((item, index) => (
                      <React.Fragment key={item.name}>
                        <a
                          href={item.href}
                          className="text-gray-400 hover:text-white text-sm flex items-center space-x-2 transition-colors duration-200"
                        >
                          <span>{item.name}</span>
                        </a>
                        {index < closed_holiday.length - 1 && <span className="text-white mx-2">|</span>}
                      </React.Fragment>
                    ))}
                  </div>
                  <div className="mt-3 flex items-center space-x-2">
                    <FaAngleRight className="text-xs" />
                    <span className="text-white text-sm flex items-center space-x-2 transition-colors duration-200">Restricted Holiday</span>
                    {restricted_holiday.map((item, index) => (
                      <React.Fragment key={item.name}>
                        <a
                          href={item.href}
                          className="text-gray-400 hover:text-white text-sm flex items-center space-x-2 transition-colors duration-200"
                        >
                          <span>{item.name}</span>
                        </a>
                        {index < restricted_holiday.length - 1 && <span className="text-white mx-2">|</span>}
                      </React.Fragment>
                    ))}
                  </div>
                </div>
              </div>

              {/* Fourth Column */}
              <div className="space-y-8">
                <div>
                  <h5 className="text-white font-medium text-lg mb-6 text-left">Contact Us</h5>
                  <div className="flex flex-col items-left space-y-4">
                    <div className="flex items-center space-x-3">
                      <span className="text-gray-400">
                        <Link className="text-gray-400 hover:text-white text-sm flex items-center space-x-2 transition-colors duration-200" to="/mapsanddirections">
                          Indian Institute of Information Technology<br></br> Design & Manufacturing Jabalpur<br></br>
                          Dumna Airport Road,<br></br> Dumna - 482005
                        </Link>
                      </span>
                    </div>
                    <div className="flex items-center space-x-3">
                      <FaPhoneAlt className="text-gray-400" />
                      <span className="text-gray-400">
                        <a className="text-gray-400 hover:text-white text-sm flex items-center space-x-2 transition-colors duration-200" href="https://www.iiitdmj.ac.in/downloads/IIITDMJ%20Telephone%20Directory.pdf">
                          Phone Directory
                        </a>
                      </span>
                    </div>
                    <div className="flex items-center space-x-3">
                      <FaGlobe className="text-gray-400" />
                      <span className="text-gray-400 hover:text-white text-sm flex items-center space-x-2 transition-colors duration-200">
                        <a href="https://www.iiitdmj.ac.in/">iiitdmj.ac.in</a>
                      </span>
                    </div>
                  </div>

                  <div className="flex justify-left space-x-4 mt-6 mb-6">
                    {[
                      { icon: FaTwitter, link: "https://x.com/iiitdmjbp" },
                      { icon: FaLinkedin, link: "https://www.linkedin.com/in/iiitdm-jabalpur/" },
                      { icon: FaFacebook, link: "https://www.facebook.com/iiitdm.jbp/" },
                      { icon: FaInstagram, link: "https://www.instagram.com/iiitdm_jabalpur/" },
                      { icon: FaYoutube, link: "https://www.youtube.com/channel/UCODKL--xMCqXIK31cRdOWOw" },
                    ].map((item, index) => (
                      <a
                        key={index}
                        href={item.link}
                        className="text-gray-400 hover:text-white transition-colors duration-200"
                        target="_blank"
                        rel="noopener noreferrer"
                      >
                        <item.icon className="w-6 h-6" />
                      </a>
                    ))}
                  </div>
                  <div className="flex items-center space-x-3">
                    <span className="text-gray-400">
                      <a className="text-gray-400 hover:text-white text-sm flex items-center space-x-2 transition-colors duration-200 mb-4" href="https://moodle.iiitdmj.ac.in/">
                        Moodle E-Learning Portal
                      </a>
                    </span>
                  </div>
                  <div className="flex items-center space-x-3">
                    <span className="text-gray-400">
                      <Link className="text-gray-400 hover:text-white text-sm flex items-center space-x-2 transition-colors duration-200 mb-4" to='/admin'>
                        Admin Console
                      </Link>
                    </span>
                  </div>
                  <WordOfDay/>
                </div>
              </div>
            </div>
          </div>
        </div>

        {/* Footer Bottom Area */}
        <div className="bg-black text-gray-500 py-4">
          <div className="container mx-auto px-4">
            <div className="flex flex-col md:flex-row justify-between items-center space-y-4 md:space-y-0">
              <div className="flex items-center space-x-1">
                <p className="text-sm">
                  © All Rights Reserved by{" "}
                  <a href="#" className="text-gray-400 hover:text-gray-200">
                    PDPM IIITDM Jabalpur
                  </a>
                </p>
              </div>
              <div className="flex items-center space-x-1">
                <p className="text-sm">
                  <Link to="/developers" className="text-gray-400 hover:text-gray-200">
                    Developers
                  </Link>
                </p>
              </div>
              <div>
                <p className="text-xs">
                  Maintained by{" "}
                  <span className="text-gray-300">Computer Center, IIITDM Jabalpur</span>
                </p>
              </div>
            </div>
          </div>
        </div>
      </footer>
    </>
  );
};

export default Footer;