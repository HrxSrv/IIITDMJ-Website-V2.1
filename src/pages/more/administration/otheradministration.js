import React, {useState,useEffect} from "react";
import Card from "../../../components/CardNew";
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
  const [data, setData] = useState({
    cc: [],
    tp: [],
    iic: [],
    alumni: [],
    comm: [],
    registrar: [],
    audit: [],
    cpio: [],
    rspc: [],
    acad: [],
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
    const endpoints = [
      { key: "cc", endpoint: "cc" },
      { key: "tp", endpoint: "tp" },
      { key: "iic", endpoint: "iic" },
      { key: "alumni", endpoint: "alumni" },
      { key: "comm", endpoint: "comm" },
      { key: "registrar", endpoint: "registrar_f&a" },
      { key: "audit", endpoint: "audit" },
      { key: "cpio", endpoint: "cpio" },
      { key: "rspc", endpoint: "rspc" },
      { key: "acad", endpoint: "academics" },
    ];

    // Fetch all data
    endpoints.forEach(({ endpoint, key }) => {
      fetchData(endpoint, key);
    });
  }, []);


  const quickLinks = [
    { name: "IIIT Act", href:"https://www.iiitdmj.ac.in/downloads/IIIT%20Act%2030_of_2014.pdf"},
    { name: "Institue Rules", href:"http://web.iiitdmj.ac.in/instrules.html"},
    { name:"Board of Governers", href: "/boardofgoverners" },
    { name:"Finance Committee", href: "/financecommittee" },
    // { name:"General Administration", href: "/generaladministration" },
    // { name:"Other Administration", href: "/otheradministration" },
    // { name:"Senate", href: "/senate" },
    { name:"Building Works Committee", href: "/buildingworkscommittee" },
    { name:"Administrative Structure", href: "/administrativestructure" },
  ];
  const crumbs = [{crumb:"Other Administration",link:"#"}]
  return (
    <div>
      {/* Full-width image with centered heading */}
      <PageHeader  breadCrumbs={crumbs} title={"Other Administration"}/>
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
              className="bi bi-people w-16 h-16 mr-5 -mt-2 inline-block"
              viewBox="0 0 16 16"
            >
              <path d="M15 14s1 0 1-1-1-4-5-4-5 3-5 4 1 1 1 1zm-7.978-1L7 12.996c.001-.264.167-1.03.76-1.72C8.312 10.629 9.282 10 11 10c1.717 0 2.687.63 3.24 1.276.593.69.758 1.457.76 1.72l-.008.002-.014.002zM11 7a2 2 0 1 0 0-4 2 2 0 0 0 0 4m3-2a3 3 0 1 1-6 0 3 3 0 0 1 6 0M6.936 9.28a6 6 0 0 0-1.23-.247A7 7 0 0 0 5 9c-4 0-5 3-5 4q0 1 1 1h4.216A2.24 2.24 0 0 1 5 13c0-1.01.377-2.042 1.09-2.904.243-.294.526-.569.846-.816M4.92 10A5.5 5.5 0 0 0 4 13H1c0-.26.164-1.03.76-1.724.545-.636 1.492-1.256 3.16-1.275ZM1.5 5.5a3 3 0 1 1 6 0 3 3 0 0 1-6 0m3-2a2 2 0 1 0 0 4 2 2 0 0 0 0-4"/>
              </svg>
            <h2 className="text-3xl font-semibold mb-4">
              Other Administration
            </h2>
          </div>

          {/* Subheading for card section */}
          <div>
          <h3 className="text-xl font-semibold mt-4">Councelling Cell</h3>

          <div className="flex justify-center">
            <div className="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-6 mt-8 w-full max-w-6xl">
              {data.cc.map((card, index) => (
                <a href="#" className="no-underline"><Card key={index} {...card} /></a>
              ))}
            </div>
          </div>
          </div>
          <div>
          <h3 className="text-xl font-semibold mt-4">Training & Placement</h3>

          <div className="flex justify-center">
            <div className="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-6 mt-8 w-full max-w-6xl">
              {data.tp.map((card, index) => (
                <a href="#" className="no-underline"><Card key={index} {...card} /></a>
              ))}
            </div>
          </div>
          </div>
          <div>
          <h3 className="text-xl font-semibold mt-4">Innovation and Incubation Centre (IIC)</h3>

          <div className="flex justify-center">
            <div className="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-6 mt-8 w-full max-w-6xl">
              {data.iic.map((card, index) => (
                <a href="#" className="no-underline"><Card key={index} {...card} /></a>
              ))}
            </div>
          </div>
          </div>
          <div>
          <h3 className="text-xl font-semibold mt-4">Alumni Cell</h3>

          <div className="flex justify-center">
            <div className="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-6 mt-8 w-full max-w-6xl">
              {data.alumni.map((card, index) => (
                <a href="#" className="no-underline"><Card key={index} {...card} /></a>
              ))}
            </div>
          </div>
          </div>
          <div>
          <h3 className="text-xl font-semibold mt-4">Communication Cell</h3>

          <div className="flex justify-center">
            <div className="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-6 mt-8 w-full max-w-6xl">
              {data.comm.map((card, index) => (
                <a href="#" className="no-underline"><Card key={index} {...card} /></a>
              ))}
            </div>
          </div>
          </div>
          <div>
          <h3 className="text-xl font-semibold mt-4">Registrar (Acting) Finance & Accounts</h3>

          <div className="flex justify-center">
            <div className="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-6 mt-8 w-full max-w-6xl">
              {data.registrar.map((card, index) => (
                <a href="#" className="no-underline"><Card key={index} {...card} /></a>
              ))}
            </div>
          </div>
          </div>
          <div>
          <h3 className="text-xl font-semibold mt-4">Establishment, General Administration and Internal Audit</h3>

          <div className="flex justify-center">
            <div className="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-6 mt-8 w-full max-w-6xl">
              {data.audit.map((card, index) => (
                <a href="#" className="no-underline"><Card key={index} {...card} /></a>
              ))}
            </div>
          </div>
          </div>
          <div>
          <h3 className="text-xl font-semibold mt-4">Student Affairs, Official Language Officer, CPIO</h3>

          <div className="flex justify-center">
            <div className="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-6 mt-8 w-full max-w-6xl">
              {data.cpio.map((card, index) => (
                <a href="#" className="no-underline"><Card key={index} {...card} /></a>
              ))}
            </div>
          </div>
          </div>
          <div>
          <h3 className="text-xl font-semibold mt-4">RSPC, P&S, Publicity Officer</h3>

          <div className="flex justify-center">
            <div className="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-6 mt-8 w-full max-w-6xl">
              {data.rspc.map((card, index) => (
                <a href="#" className="no-underline"><Card key={index} {...card} /></a>
              ))}
            </div>
          </div>
          </div>
          <div>
          <h3 className="text-xl font-semibold mt-4">Academics</h3>

          <div className="flex justify-center">
            <div className="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-6 mt-8 w-full max-w-6xl">
              {data.acad.map((card, index) => (
                <a href="#" className="no-underline"><Card key={index} {...card} /></a>
              ))}
            </div>
          </div>
          </div>
        </div>

        {/* 30% Quick Links section */}
        <div className="w-full md:w-3/12 px-4">
          <div className="flex flex-row">
            <h2 className="text-2xl font-semibold mb-2">See Also</h2>
            <svg
                  xmlns="http://www.w3.org/2000/svg"
                  width="16"
                  height="16"
                  fill="black"
                  className="bi bi-link-45deg w-8 h-8 ml-1 mt-1 inline-block"
                  viewBox="0 0 16 16"
                >
                  <path d="M4.715 6.542 3.343 7.914a3 3 0 1 0 4.243 4.243l1.828-1.829A3 3 0 0 0 8.586 5.5L8 6.086a1 1 0 0 0-.154.199 2 2 0 0 1 .861 3.337L6.88 11.45a2 2 0 1 1-2.83-2.83l.793-.792a4 4 0 0 1-.128-1.287z"/>
                  <path d="M6.586 4.672A3 3 0 0 0 7.414 9.5l.775-.776a2 2 0 0 1-.896-3.346L9.12 3.55a2 2 0 1 1 2.83 2.83l-.793.792c.112.42.155.855.128 1.287l1.372-1.372a3 3 0 1 0-4.243-4.243z"/>
            </svg>
          </div>
          <ul className="list-disc ml-5">
            {quickLinks.map((link, index) => (
              <li key={index} className="mb-2 -ml-3">
                {renderLink(link)}
              </li>
            ))}
          </ul>

        </div>
      </div>
    </div>
  );
};

export default MainPage;