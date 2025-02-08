import React, { useEffect, useState } from "react";
import PageHeader from "../../../components/PageHeader";
import { Link } from "react-router-dom";
const MainPage = () => {
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
        const endpoints = [{ key: "cardsData", endpoint: "hostels" }];

        // Fetch all data
        endpoints.forEach(({ endpoint, key }) => {
            fetchData(endpoint, key);
        });
    }, []);
    const convocations = [
                {
                    name: "12th Convocation, 11th July 2024",
                    href: "/",
                },
                {
                    name: "List of Graduates - 2022",
                    href: "/",
                },
                {
                    name: "List of Graduates - 2021",
                    href: "/",
                },
                {
                    name: "List of Graduates - 2020",
                    href: "/",
                },
                {
                    name: "List of Graduates - 2018-19",
                    href: "/",
                },
                {
                    name: "List of Graduates - 2017",
                    href: "/",
                },
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
    const crumbs = [{crumb: "Convocation", link:"#"}]
    return (
        <div>
            {/* Full-width image with centered heading */}
            <PageHeader breadCrumbs={crumbs} title={"Convocation"}/>

            {/* Main content area with flex for side-by-side layout */}
            <div className="container mx-auto mt-8 mb-8 flex flex-col md:flex-row">
                {/* 70% section */}
                <div className="w-full md:w-9/12 px-4 mb-8 md:mb-0">



                    {/* third Text Content Area */}
                    <div className="bg-white-200 p-7 rounded-lg shadow-2xl">
                        <div className="flex flex-row mb-3">
                            <svg
                                xmlns="http://www.w3.org/2000/svg"
                                width="16"
                                height="16"
                                fill="black"
                                className="bi bi-newspaper w-16 h-16 mr-5 -mt-2 inline-block"
                                viewBox="0 0 16 16"
                            >
                                <path d="M0 2.5A1.5 1.5 0 0 1 1.5 1h11A1.5 1.5 0 0 1 14 2.5v10.528c0 .3-.05.654-.238.972h.738a.5.5 0 0 0 .5-.5v-9a.5.5 0 0 1 1 0v9a1.5 1.5 0 0 1-1.5 1.5H1.497A1.497 1.497 0 0 1 0 13.5zM12 14c.37 0 .654-.211.853-.441.092-.106.147-.279.147-.531V2.5a.5.5 0 0 0-.5-.5h-11a.5.5 0 0 0-.5.5v11c0 .278.223.5.497.5z" />
                                <path d="M2 3h10v2H2zm0 3h4v3H2zm0 4h4v1H2zm0 2h4v1H2zm5-6h2v1H7zm3 0h2v1h-2zM7 8h2v1H7zm3 0h2v1h-2zm-3 2h2v1H7zm3 0h2v1H7zm-3 2h2v1H7zm3 0h2v1H7zm-3 2h2v1H7zm3 0h2v1H7zm-3 2h2v1H7zm3 0h2v1H7z" />
                            </svg>
                            <h2 className="text-3xl font-semibold mb-0">13th Convocation
                            </h2>
                        </div>

                        <h5 className="font-semibold ml-2">List of Students (in English & Hindi) graduated in the year 2024</h5>

                        {/* Bulleted List */}
                        <ul className="list-none space-y-2 text-gray-800 p-1 mb-2">
                            <li className="flex items-start">
                                <span className="text-xl mr-2">&bull;</span>
                                <span>
                                    <a href="https://www.iiitdmj.ac.in/downloads/convocation13/2019.pdf" className="text-blue-600 no-underline ">
                                    2019</a>
                                </span>
                            </li>
                            <li className="flex items-start">
                                <span className="text-xl mr-2">&bull;</span>
                                <span>
                                    <a href="https://www.iiitdmj.ac.in/downloads/convocation13/2020%20CSE.pdf" className="text-blue-600 no-underline ">
                                    2020 CSE</a>
                                </span>
                            </li>
                            <li className="flex items-start">
                                <span className="text-xl mr-2">&bull;</span>
                                <span>
                                    <a href="https://www.iiitdmj.ac.in/downloads/convocation13/2020%20DS.pdf" className="text-blue-600 no-underline ">

                                    2020 DS</a>
                                </span>
                            </li>
                            <li className="flex items-start">
                                <span className="font-semibold mr-2 text-gray-600">&bull;</span>
                                <span>
                                    <a href="https://www.iiitdmj.ac.in/downloads/convocation13/2020%20ECE.pdf" className="text-blue-600 no-underline ">

                                    2020 ECE</a>
                                </span>
                            </li>
                            <li className="flex items-start">
                                <span className="font-semibold mr-2 text-gray-600">&bull;</span>
                                <span>
                                    <a href="https://www.iiitdmj.ac.in/downloads/convocation13/2020%20ME.pdf" className="text-blue-600 no-underline ">

                                    2020 ME</a>
                                </span>
                            </li>
                            <li className="flex items-start">
                                <span className="font-semibold mr-2 text-gray-600">&bull;</span>
                                <span>
                                    <a href="https://www.iiitdmj.ac.in/downloads/convocation13/2020%20SM.pdf" className="text-blue-600 no-underline ">

                                    2020 SM</a>
                                </span>
                            </li>

                        </ul>
                        
                    </div>
                </div>
                {/* 30% Quick Links section */}
                <div className="w-full md:w-3/12 px-4">
                <div className="bg-white rounded-xl shadow-lg p-6 space-y-8">
            <section>
              <h2 className="text-xl font-bold text-gray-800 mb-4">Past Convocations</h2>
              <ul className="space-y-2">
                {convocations.map((link, index) => (
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