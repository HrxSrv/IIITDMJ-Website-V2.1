import React from "react";
import Card from "../../../components/CardNew";
import college_img1 from "../../../resources/images/3.jpg";
import profile from "../../../resources/images/admin/profile.jpg";

const MainPage = () => {
    const director=[
        {
            image: profile,
            name: "Prof. Bhartendu K Singh",
            designation: "",
            role: "",
            address:
                "",
            contact: ["0761-2794003/2794005"],
            mail: ["director@iiitdmj.ac.in"],
        },
    ];
    const deans=[
        {
            image: profile,
            name: "Prof. Vijay Kumar Gupta",
            designation: "Professor In-Charge (Academics)",
            role: "",
            address:
                "",
            contact: ["+91-761-2794413"],
            mail: ["dean.acad[at]iiitdmj.ac.in"],
        },
        {
            image: profile,
            name: "Dr. Mukesh Kumar Roy",
            designation: "Faculty-in-Charge (Student Affairs)",
            role: "",
            address:
                "",
            contact: ["+91-761-2794350"],
            mail: ["dean.s[at]iiitdmj.ac.in"],
        },
        {
            image: profile,
            name: "Prof. Pritee Khanna",
            designation: "Professor In-charge (Research, Sponsored Projects & Consultancy)",
            role: "",
            address:
                "",
            contact: ["+91-761-2794222"],
            mail: ["dean.research[at]iiitdmj.ac.in"],
        },
        {
            image: profile,
            name: "Dr. Sachin Kumar Jain",
            designation: "Associate Professor In-charge (Academic)",
            role: "",
            address:
                "",
            contact: ["+91-761-2794468"],
            mail: ["skjain[at]iiitdmj.ac.in"],
        },
        {
            image: profile,
            name: "Dr. Dip Prakash Samajdar",
            designation: "Associate Professor In-charge (Research, Sponsored Projects & Consultancy)",
            role: "",
            address:
                "",
            contact: ["+91-761-2794474"],
            mail: ["dip.samajdar[at]iiitdmj.ac.in"],
        },
    ];
    const hods=[
        {
            image: profile,
            name: "Dr. Vinod Kumar Jain",
            designation: "CSE",
            role: "",
            address:
                "",
            contact: ["+91-761-2794226"],
            mail: ["headcse[at]iiitdmj.ac.in"],
        },
        {
            image: profile,
            name: "Dr. Prabir Mukhopadhyay",
            designation: "Design",
            role: "",
            address:
                "",
            contact: ["+91-761-2794310"],
            mail: ["headdesign[at]iiitdmj.ac.in"],
        },
        {
            image: profile,
            name: "Dr. Matadeen Bansal",
            designation: "ECE",
            role: "",
            address:
                "",
            contact: ["+91-761-2794469"],
            mail: ["headece[at]iiitdmj.ac.in"],
        },
        {
            image: profile,
            name: "Dr. M. Zahid Ansari",
            designation: "ME",
            role: "",
            address:
                "",
            contact: ["+91-761-2794422"],
            mail: ["headme[at]iiitdmj.ac.in"],
        },
        {
            image: profile,
            name: "Dr. Lokendra Balyan",
            designation: "NS",
            role: "",
            address:
                "",
            contact: ["+91-761-2794346"],
            mail: ["headns[at]iiitdmj.ac.in"],
        },
        {
            image: profile,
            name: "Dr. Mamta Anand",
            designation: "Liberal Arts",
            role: "",
            address:
                "",
            contact: ["+91-761-2794268"],
            mail: ["headla[at]iiitdmj.ac.in"],
        },
    ];
    const registrar=[
        {
            image: profile,
            name: "Mrs. Swapnali Gadekar",
            designation: "Deputy Registrar",
            role: "",
            address:
                "",
            contact: ["+91-0761-2794025"],
            mail: ["swapnali[at]iiitdmj.ac.in"],
        },
    ]

  const quickLinks = [
    { name: "Home", href: "/" },
    { name: "About Us", href: "/about" },
    { name: "Services", href: "/services" },
    { name: "Contact", href: "/contact" },
    { name: "Blog", href: "/blog" },
  ];

  // Downloads data
  const downloads = [
    { name: "Annual Report 2023", href: "/downloads/annual_report_2023.pdf" },
    {
      name: "Board Meeting Minutes",
      href: "/downloads/board_meeting_minutes.pdf",
    },
    { name: "Governors List", href: "/downloads/governors_list.pdf" },
    { name: "Policy Document", href: "/downloads/policy_document.pdf" },
  ];

  return (
    <div>
      {/* Full-width image with centered heading */}
      <div
        className="relative w-full h-96 bg-[length:100%_100%] bg-no-repeat bg-center"
        style={{ backgroundImage: `url(${college_img1})` }}
      >
        <h1 className="absolute inset-0 flex items-center justify-center text-white text-5xl font-bold">
          General Administration
        </h1>
      </div>

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
              Key Administrators Of Insitute
            </h2>
          </div>

          {/* Subheading for card section */}
          <div>
          <h3 className="text-xl font-semibold mt-4">Director</h3>

          <div className="flex justify-center">
            <div className="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-6 mt-8 w-full max-w-6xl">
              {director.map((card, index) => (
                <a href="/" className="no-underline"><Card key={index} {...card} /></a>
              ))}
            </div>
          </div>
          </div>
          <div>
          <h3 className="text-xl font-semibold mt-4">Deans</h3>

          <div className="flex justify-center">
            <div className="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-6 mt-8 w-full max-w-6xl">
              {deans.map((card, index) => (
                <a href="/" className="no-underline"><Card key={index} {...card} /></a>
              ))}
            </div>
          </div>
          </div>
          <div>
          <h3 className="text-xl font-semibold mt-4">Head Of Disciplines</h3>

          <div className="flex justify-center">
            <div className="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-6 mt-8 w-full max-w-6xl">
              {hods.map((card, index) => (
                <a href="/" className="no-underline"><Card key={index} {...card} /></a>
              ))}
            </div>
          </div>
          </div>
          <div>
          <h3 className="text-xl font-semibold mt-4">Registrar (Acting)</h3>

          <div className="flex justify-center">
            <div className="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-6 mt-8 w-full max-w-6xl">
              {registrar.map((card, index) => (
                <a href="/" className="no-underline"><Card key={index} {...card} /></a>
              ))}
            </div>
          </div>
          </div>
        </div>

        {/* 30% Quick Links section */}
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
                <a href={link.href} className="text-blue-500 hover:underline">
                  {link.name}
                </a>
              </li>
            ))}
          </ul>

          {/* Downloads Section */}
          <div className="flex flex-row">
            <h2 className="text-2xl font-semibold mt-6 mb-2">Downloads</h2>
            <svg
                  xmlns="http://www.w3.org/2000/svg"
                  width="16"
                  height="16"
                  fill="black"
                  className="bi bi-download w-7 h-7 ml-3 mt-4 inline-block"
                  viewBox="0 0 16 16"
                >
                  <path d="M.5 9.9a.5.5 0 0 1 .5.5v2.5a1 1 0 0 0 1 1h12a1 1 0 0 0 1-1v-2.5a.5.5 0 0 1 1 0v2.5a2 2 0 0 1-2 2H2a2 2 0 0 1-2-2v-2.5a.5.5 0 0 1 .5-.5"/>
              <path d="M7.646 11.854a.5.5 0 0 0 .708 0l3-3a.5.5 0 0 0-.708-.708L8.5 10.293V1.5a.5.5 0 0 0-1 0v8.793L5.354 8.146a.5.5 0 1 0-.708.708z"/>
            </svg>
          </div>
          <ul className="list-disc ml-5">
            {downloads.map((download, index) => (
              <li key={index} className="mb-2 -ml-3">
                <a
                  href={download.href}
                  className="text-blue-500 hover:underline"
                >
                  {download.name}
                </a>
              </li>
            ))}
          </ul>
        </div>
      </div>
    </div>
  );
};

export default MainPage;