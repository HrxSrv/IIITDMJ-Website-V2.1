import React, { useEffect, useState } from "react";
// import Card from "../../../components/CardNew";
// import college_img1 from "../../../resources/images/3.jpg";


import PageHeader from "../../../components/PageHeader";
import { Link } from "react-router-dom";
const MainPage = () => {
  const renderLink = (item) =>
              item.href.startsWith("/") ? (
                <Link
                  to={item.href}
                  className="text-blue-500 no-underline"
                >
                
                  <span>{item.name}</span>
                </Link>
              ) : (
                <a
                  href={item.href}
                  target="_blank"
                  rel="noopener noreferrer"
                  className="text-blue-500 no-underline"
                >
                
                  <span>{item.name}</span>
                </a>
              );
  const image1 = process.env.REACT_APP_Backend + "/public/WebsiteImages/phc1-min.png"
  const image2 = process.env.REACT_APP_Backend + "/public/WebsiteImages/phc2-min.png"
  const image3 = process.env.REACT_APP_Backend + "/public/WebsiteImages/phc3-min.png"
  const quickLinks = [
    { name: "Gymkhana", href: "/gymkhana" },
    { name: "Activities", href: "/activities" },
    // { name:"General Administration", href: "/generaladministration" },
    // { name:"Other Administration", href: "/otheradministration" },
    { name: "Counselling", href: "/counselling" },
    { name: "Hostels", href: "/hostels" },
    { name: "Alumni", href: "https://alumni.iiitdmj.ac.in/" },
    {
      name: "Students Mess",
      href: "https://www.iiitdmj.ac.in/mess.iiitdmj.ac.in/",
    },
    { name: "PHC", href: "/primaryhealthcentre" },
  ];
  const quickLinks2 = [
    { name: "Duty Roster for PHC Doctors & Counselor", href: "/" },
    { name: "Administration and Staff", href: "/" },
  ];

  const guidelines = [
    { name: "New Guidelines 12-12-2017", href: "/boardofgoverners" },
    { name: "Guidelines 29-11-2016", href: "/financecommittee" },
  ];

  const [data, setData] = useState({
    cardsData: [],
  });
  const [loading, setLoading] = useState(true);
  const [error, setError] = useState(null);

  const fetchData = async (endpoint, key) => {
    try {
      const response = await fetch(`${process.env.REACT_APP_Backend}/people/${endpoint}`);
      if (!response.ok) {
        throw new Error(`Failed to fetch ${key} data`);
      }
      const result = await response.json();
      setData((prevState) => ({ ...prevState, [key]: result }));
    } catch (err) {
      setError(err.message);
    } finally {
      setLoading(false);
    }
  };

  useEffect(() => {
    const endpoints = [{ key: "cardsData", endpoint: "doctors" }];

    // Fetch all data
    endpoints.forEach(({ endpoint, key }) => {
      fetchData(endpoint, key);
    });
  }, []);
  const crumbs = [{crumb:"Primary Health Centre",link:"#"}]
  return (
    <div>
      {/* Full-width image with centered heading */}
      <PageHeader  breadCrumbs={crumbs} title={"Primary Health Centre"}/>

      {/* Main content area with flex for side-by-side layout */}
      <div className="container mx-auto mt-8 mb-8 flex flex-col md:flex-row">
        {/* 70% section */}
        <div className="w-full md:w-9/12 px-4 mb-8 md:mb-0">
          <div className="flex flex-row mb-4">
            <svg
              xmlns="http://www.w3.org/2000/svg"
              width="16"
              height="16"
              fill="black"
              className="bi bi-hopital w-16 h-16 mr-5 -mt-6 inline-block"
              viewBox="0 0 16 16"
            >
              <path d="M8.5 5.034v1.1l.953-.55.5.867L9 7l.953.55-.5.866-.953-.55v1.1h-1v-1.1l-.953.55-.5-.866L7 7l-.953-.55.5-.866.953.55v-1.1zM13.25 9a.25.25 0 0 0-.25.25v.5c0 .138.112.25.25.25h.5a.25.25 0 0 0 .25-.25v-.5a.25.25 0 0 0-.25-.25zM13 11.25a.25.25 0 0 1 .25-.25h.5a.25.25 0 0 1 .25.25v.5a.25.25 0 0 1-.25.25h-.5a.25.25 0 0 1-.25-.25zm.25 1.75a.25.25 0 0 0-.25.25v.5c0 .138.112.25.25.25h.5a.25.25 0 0 0 .25-.25v-.5a.25.25 0 0 0-.25-.25zm-11-4a.25.25 0 0 0-.25.25v.5c0 .138.112.25.25.25h.5A.25.25 0 0 0 3 9.75v-.5A.25.25 0 0 0 2.75 9zm0 2a.25.25 0 0 0-.25.25v.5c0 .138.112.25.25.25h.5a.25.25 0 0 0 .25-.25v-.5a.25.25 0 0 0-.25-.25zM2 13.25a.25.25 0 0 1 .25-.25h.5a.25.25 0 0 1 .25.25v.5a.25.25 0 0 1-.25.25h-.5a.25.25 0 0 1-.25-.25z" />
              <path d="M5 1a1 1 0 0 1 1-1h4a1 1 0 0 1 1 1v1a1 1 0 0 1 1 1v4h3a1 1 0 0 1 1 1v7a1 1 0 0 1-1 1H1a1 1 0 0 1-1-1V8a1 1 0 0 1 1-1h3V3a1 1 0 0 1 1-1zm2 14h2v-3H7zm3 0h1V3H5v12h1v-3a1 1 0 0 1 1-1h2a1 1 0 0 1 1 1zm0-14H6v1h4zm2 7v7h3V8zm-8 7V8H1v7z" />
            </svg>
            <h2 className="text-3xl font-semibold mb-4">
              Primary Health Centre
            </h2>
          </div>

          {/* Text content area with formatted text and circular bullets */}
          <div className="bg-white-200 p-7 rounded-lg shadow-2xl">
            <h3 className="text-xl font-semibold mb-1">Links:</h3>
            <ul className="list-disc ml-5">
              {quickLinks2.map((link, index) => (
                <li key={index} className="-ml-3">
                  {" "}
               {renderLink(link)}
                </li>
              ))}
            </ul>
            <h3 className="text-xl font-semibold mb-1 mt-4">Doctors available for consultation:</h3>
            <ul className="list-disc ml-5">
              {data.cardsData.map((doctor, index) => (
                <li key={index} className="-ml-3">
                    {doctor.name} - {doctor.role}{" "}
                </li>
              ))}
            </ul>
            <h3 className="text-xl font-semibold mb-1 mt-4">Guidelines:</h3>
            <ul className="list-disc ml-5">
              {guidelines.map((link, index) => (
                <li key={index} className="-ml-3">
                  {" "}
                 {renderLink(link)}
                </li>
              ))}
            </ul>
            {/* Adding images in a single row */}
            <div className="flex justify-center mt-4 mb-4">
              <div className="grid grid-cols-1 gap-4 sm:grid-cols-2 lg:grid-cols-3 mb-4">
                <img
                  src={image1}
                  alt="Image 1"
                  className="w-full h-full object-cover"
                />
                <img
                  src={image2}
                  alt="Image 2"
                  className="w-full h-full object-cover"
                />
                <img
                  src={image3}
                  alt="Image 2"
                  className="w-full h-full object-cover"
                />
              </div>
            </div>
          </div>
        </div>

        {/* 30% Quick Links section */}
        <div className="w-full md:w-3/12 px-4">
          <div className="bg-white rounded-xl shadow-lg p-6 space-y-8">
            <section>
              <h2 className="text-xl font-bold text-gray-800 mb-4">See Also</h2>
              <ul className="space-y-2">
                {quickLinks.map((link, index) => (
                  <li key={index}>{renderLink(link)}</li>
                ))}
              </ul>
            </section>
          </div>
        </div>
      </div>
    </div>
  );
};

export default MainPage;
