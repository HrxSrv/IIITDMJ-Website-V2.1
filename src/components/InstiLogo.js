// import React, { useState, useEffect } from 'react';
// import Logo from "../resources/images/IIIT_logo_1.png";

// const InstituteBanner = ({ isVisible }) => {
//   const [isHindi, setIsHindi] = useState(0);

//   useEffect(() => {
//     if (!isVisible) return;

//     const interval = setInterval(() => {
//       setIsHindi(prev => (prev+1)%2);
//     }, 3000); // Change text every 3 seconds

//     return () => clearInterval(interval);
//   }, [isVisible]);

//   if (!isVisible) return null;

//   return (
//     <div className="w-full py-4 shadow-sm relative overflow-hidden mb-10 z-10">
//       <div className="flex items-center justify-between max-w-7xl mx-auto px-4 ">
//         {/* Logo Section */}
//         <div className="flex-shrink-0">
//           <img
//             src={Logo}
//             alt="PDPM IIITDM Jabalpur Logo"
//             className="w-16 object-contain"
//           />
//         </div>

//         {/* Center Text Section */}
//         <div className="flex-grow text-center mx-6">
//           <div className="flex flex-col relative h-24 overflow-hidden justify-center">
//             {/* Hindi Text */}
//             <div
//               className={`absolute w-full transition-all duration-700 ease-in-out ${
//                 isHindi===0
//                   ? 'opacity-100 translate-y-0'
//                   : 'opacity-0 -translate-y-full'
//               }`}
//             >
//               <h2 className="text-lg md:text-4xl lg:text-3xl font-semibold text-white">
//                 भारतीय सूचना प्रौद्योगिकी, अभिकल्प एवं विनिर्माण संसथान जबलपुर
//               </h2>
//             </div>

//             {/* English Text */}
//             <div
//               className={`absolute w-full transition-all duration-700 ease-in-out ${
//                 isHindi===1
//                   ? 'opacity-100 translate-y-0'
//                   : 'opacity-0 translate-y-full'
//               }`}
//             >
//               <h2 className="text-xl md:text-4xl lg:text-3xl text-white mb-1">
//                 PDPM Indian Institute of Information Technology Design and Manufacturing Jabalpur
//               </h2>
//             </div>

//             {/* LOGO */}
            
//           </div>
//         </div>

//         {/* Anniversary Section */}
//         <div className="flex-shrink-0 text-center">
//           <div className="relative w-24 h-24">
//             <svg viewBox="0 0 100 100" className="w-full h-full">
//               <circle
//                 cx="50"
//                 cy="50"
//                 r="45"
//                 fill="none"
//                 stroke="#ffffff"
//                 strokeWidth="3"
//               />
//               <text
//                 x="50"
//                 y="45"
//                 textAnchor="middle"
//                 className="text-2xl font-bold fill-white"
//                 dominantBaseline="middle"
//               >
//                 20
//               </text>
//               <text
//                 x="50"
//                 y="65"
//                 textAnchor="middle"
//                 className="text-sm fill-white"
//                 dominantBaseline="middle"
//               >
//                 YEARS
//               </text>
//             </svg>
//           </div>
//           {/* <div className="text-white text-sm font-medium mt-1">
//             <div>Celebrating</div>
//             <div>Excellence</div>
//           </div> */}
//         </div>
//       </div>
//     </div>
//   );
// };

// export default InstituteBanner;

import Logo from "../resources/images/IIIT_logo_1.png"
import React, { useState, useEffect } from 'react';
import { motion, AnimatePresence } from "framer-motion";
// import Iconfrom "../../"
const InstituteBanner = ({ isVisible }) => {
  const [isHindi, setIsHindi] = useState(0);

  useEffect(() => {
    if (!isVisible) return;

    const interval = setInterval(() => {
      setIsHindi(prev => (prev+1)%3);
    }, 3000); // Change text every 3 seconds

    return () => clearInterval(interval);
  }, [isVisible]);

  if (!isVisible) return null;

  return (
    <div className="w-full py-4 shadow-sm relative overflow-hidden z-10">
      <div className="flex items-center justify-center max-w-7xl mx-auto px-4">
        <div className="flex items-center space-x-6 w-full">
          {/* Logo */}
          <div className="w-full flex ">
          {/* <div className="flex-shrink-0">
            <img 
              src={Logo}
              alt="PDPM IIITDM Jabalpur Logo" 
              className="w-16 object-contain"
            />
          </div> */}
          
          {/* Institute Name */}
          <div className="flex-grow text-center">
            <div className="flex flex-col relative h-24 overflow-hidden justify-center">
              {/* Hindi Text */}
              <div 
                className={`absolute w-full transition-all duration-700 ease-in-out ${
                  isHindi===0 
                    ? 'opacity-100 translate-y-0' 
                    : 'opacity-0 -translate-y-full'
                }`}
              >
                <motion.h2 className="text-lg md:text-4xl lg:text-3xl font-semibold text-white" style={{textShadow: "0 4px 6px rgba(0, 0, 0, 0.3)"}}>
                  भारतीय सूचना प्रौद्योगिकी, अभिकल्प एवं विनिर्माण संसथान जबलपुर
                </motion.h2>
              </div>

              {/* English Text */}
              <div 
                className={`absolute w-full transition-all duration-700 ease-in-out ${
                  isHindi===1 
                    ? 'opacity-100 translate-y-0' 
                    : 'opacity-0 translate-y-full'
                }`}
              >
                <motion.h2 className="text-xl md:text-4xl lg:text-3xl text-white mb-1" style={{textShadow: "0 4px 6px rgba(0, 0, 0, 0.3)"}}>
                  PDPM Indian Institute of Information Technology Design and Manufacturing Jabalpur
                </motion.h2>
              </div>
              {/* LOGO */}
              <div 
                className={`absolute w-full transition-all duration-700 ease-in-out ${
                  isHindi===2 
                    ? 'opacity-100 translate-y-0' 
                    : 'opacity-0 translate-y-full'
                }`}
              >
                <img src={Logo} alt='Logo'  className="w-16 ml-auto mr-auto"/>
              </div>
            </div>
          </div>
          </div>
        </div>
      </div>
    </div>
  );
};

export default InstituteBanner;