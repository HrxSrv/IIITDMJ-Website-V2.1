import React, { useRef, useEffect } from "react";
import Lottie from "react-lottie";
import placement from "../resources/Vectors/placement.json";
import dew from "../resources/Vectors/dew.json";
import nirf from "../resources/Vectors/nirf.json";
import alumni from "../resources/Vectors/alumni.json";

const FocusCard = ({ title, animation, link }) => {
  const lottieRef = useRef(null);

  const defaultOptions = {
    loop: false,
    autoplay: false,
    animationData: animation,
    rendererSettings: {
      preserveAspectRatio: "xMidYMid slice",
    },
  };

  const handleMouseEnter = () => {
    const anim = lottieRef.current?.anim;
    if (anim) {
      anim.goToAndPlay(0);
    }
  };

  const handleMouseLeave = () => {
    const anim = lottieRef.current?.anim;
    if (anim) {
      anim.goToAndStop(0);
    }
  };

  return (
    <a
      href={link}
      className="block aspect-rectangle"
      onMouseEnter={handleMouseEnter}
      onMouseLeave={handleMouseLeave}
    >
      <div className="shadow-lg relative w-full  min-h-full md:min-h-[250px] p-6 md:p-8 flex flex-col items-center justify-center rounded-lg text-center bg-opacity-90 transition-all duration-300 hover:shadow-2xl overflow-hidden">
        <div className="w-16 h-16 md:w-24 md:h-24 cursor-pointer">
          <Lottie
            options={defaultOptions}
            height="100%"
            width="100%"
            isClickToPauseDisabled={true}
            ref={lottieRef}
          />
        </div>
        <h3 className="font-light text-md md:text-xl text-black group-hover:text-blue-800 transition-colors duration-300 mt-4">
          {title}
        </h3>
      </div>
    </a>
  );
};

const FocusOn = () => {
  const focusAreas = [
    {
      title: "Dew",
      animation: dew,
      to: "https://www.iiitdmj.ac.in/rspc.iiitdmj.ac.in/",
    },
    {
      title: "Placements",
      animation: placement,
      to: "https://www.iiitdmj.ac.in/placement.iiitdmj.ac.in/",
    },
    {
      title: "Nirf",
      animation: nirf,
      to: "https://www.iiitdmj.ac.in/nirf.iiitdmj.ac.in/index.html#res",
    },
    {
      title: "Alumni",
      animation: alumni,
      to: "https://alumni.iiitdmj.ac.in/",
    },
  ];

  return (
    <div className="space-y-8 p-4">
      <div className="max-w-7xl mx-auto px-4">
        <div className="flex flex-col text-center">
          <h1 className="text-3xl font-medium text-gray-900">
            Focus <span className="text-3xl text-blue-600">On</span>
          </h1>
          {/* <div className="w-32 h-[2px] bg-blue-600 mt-1 mx-auto"></div> */}
        </div>
      </div>

      <div className="max-w-[82vw] mx-auto px-4">
        <div className="grid grid-cols-2 md:grid-cols-4 gap-4 md:gap-6">
          {focusAreas.map((area) => (
            <FocusCard
              key={area.title}
              title={area.title}
              animation={area.animation}
              link={area.to}
            />
          ))}
        </div>
      </div>
    </div>
  );
};

export default FocusOn;
