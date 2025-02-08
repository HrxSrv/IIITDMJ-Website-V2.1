import React, {useState, useEffect} from "react";
// import Card from "../../../components/CardNew";
// import college_img1 from "../../../resources/images/3.jpg";
import PageHeader from "../../../components/PageHeader";
import { Link } from "react-router-dom";


const MainPage = () => {

  const [data, setData] = useState({
    links: [],
  });
  const [loading, setLoading] = useState(true);
  const [error, setError] = useState(null);

  const fetchData = async (endpoint, key) => {
    try {
      const response = await fetch(`${process.env.REACT_APP_Backend}/links/${endpoint}`);
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
      { key: "links", endpoint: "bogagenda" },
    ];
    endpoints.forEach(({ endpoint, key }) => {
      fetchData(endpoint, key);
    });
  }, []);

  const quickLinks = [
    { name:"Board of Governers", href: "/boardofgoverners" },
    // { name:"Finance Committee", href: "/financecommittee" },
    // { name:"General Administration", href: "/generaladministration" },
    // { name:"Other Administration", href: "/otheradministration" },
    { name:"Senate", href: "/senate" },
    { name:"Building Works Committee", href: "/buildingworkscommittee" },
    { name:"Administrative Structure", href: "/administrativestructure" },
  ];
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
  const crumbs = [{crumb:"BOG Agenda",link:"#"}]
  return (
    <div>
      {/* Full-width image with centered heading */}
      <PageHeader  breadCrumbs={crumbs} title={"Board Of Governers Agenda"}/>
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
              className="bi bi-newspaper w-16 h-16 mr-5 -mt-2 inline-block"
              viewBox="0 0 16 16"
            >
              <path d="M0 2.5A1.5 1.5 0 0 1 1.5 1h11A1.5 1.5 0 0 1 14 2.5v10.528c0 .3-.05.654-.238.972h.738a.5.5 0 0 0 .5-.5v-9a.5.5 0 0 1 1 0v9a1.5 1.5 0 0 1-1.5 1.5H1.497A1.497 1.497 0 0 1 0 13.5zM12 14c.37 0 .654-.211.853-.441.092-.106.147-.279.147-.531V2.5a.5.5 0 0 0-.5-.5h-11a.5.5 0 0 0-.5.5v11c0 .278.223.5.497.5z" />
              <path d="M2 3h10v2H2zm0 3h4v3H2zm0 4h4v1H2zm0 2h4v1H2zm5-6h2v1H7zm3 0h2v1h-2zM7 8h2v1H7zm3 0h2v1h-2zm-3 2h2v1H7zm3 0h2v1h-2zm-3 2h2v1H7zm3 0h2v1H7zm-3 2h2v1H7zm3 0h2v1H7zm-3 2h2v1H7zm3 0h2v1H7z" />
            </svg>
            <h2 className="text-3xl font-semibold mb-4">
                Board Of Governers Agenda
            </h2>
          </div>

          {/* Text content area with formatted text and circular bullets */}
            <div className="bg-white-200 p-7 rounded-lg shadow-2xl">
                <ul className="list-disc ml-5">
                {data.links.map((link, index) => (
                    <li key={index} className="flex items-start ml-3 mb-2">
                        <span className="relative w-1.5 h-1.5 mt-1.5 mr-2 bg-black rounded-full flex-shrink-0"></span>
                        <a target="_blank" href={link.href} className="-mt-1 text-lg font-medium text-blue-500 no-underline">
                        {link.name}
                        </a>
                    </li>
                    ))}
                </ul>
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
