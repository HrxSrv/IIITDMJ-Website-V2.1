import React from 'react'; 
import college_img1 from "../../../resources/images/3.jpg";
import profile from "../../../resources/images/admin/profile.jpg";

const shops = () => {
  const tableData = [
  {
    shopName: "Non-Veg & Breakfast Corner",
    firmName: "M/s. Kesar Jayka",
    mobileNo: ["8839794160", "9302077118"],
    location: "Near Vasishtha Hostel (Hall-1)",
  },
  {
    shopName: "Fruit & Fruit Juice/ Vegetables",
    firmName: "M/s. Gulzar Vegetable & Fruit",
    mobileNo: ["8827662337"],
    location: "Near Vasishtha Hostel (Hall-1)",
  },
  {
    shopName: "Stationery Shop",
    firmName: "M/s. Metro Traders",
    mobileNo: ["9827442116"],
    location: "Near Vasishtha Hostel (Hall-1)",
  },
  {
    shopName: "Grocery Shop",
    firmName: "M/s. Bakery Shop & Catering",
    mobileNo: ["9907173003"],
    location: "Near Vasishtha Hostel (Hall-1)",
  },
  {
    shopName: "Tea/Coffee Shop [NESCAFE]",
    firmName: "M/s. Ravi Provision Stores",
    mobileNo: ["9425152766"],
    location: "Near Vasishtha Hostel (Hall-1)",
  },
  {
    shopName: "Barber Shop",
    firmName: "M/s Ashirwad Mens Parlour",
    mobileNo: ["9630507101", "6262210246"],
    location: "Ground Floor Hall-1 (Vasishtha Hostel)",
  },
  {
    shopName: "Laundry Shop",
    firmName: "M/s Manoj Rajak",
    mobileNo: ["9329892077"],
    location: "Ground Floor Hall-1 (Vasishtha Hostel)",
  },
];


  const quickLinks = [
    { name: 'Home', href: '/' },
    { name: 'About Us', href: '/about' },
    { name: 'Services', href: '/services' },
    { name: 'Contact', href: '/contact' },
    { name: 'Blog', href: '/blog' },
  ];

  const downloads = [
    { name: 'Annual Report 2023', href: '/downloads/annual_report_2023.pdf' },
    { name: 'Board Meeting Minutes', href: '/downloads/board_meeting_minutes.pdf' },
    { name: 'Governors List', href: '/downloads/governors_list.pdf' },
    { name: 'Policy Document', href: '/downloads/policy_document.pdf' },
  ];

  return (
    <div>
      {/* Full-width image with centered heading */}
      <div className="relative w-full h-96 bg-[length:100%_100%] bg-no-repeat bg-center" style={{ backgroundImage: `url(${college_img1})` }}>
        <h1 className="absolute inset-0 flex items-center justify-center text-white text-5xl font-bold">
        Shops in Campus
        </h1>
      </div>

      {/* Main content area with flex for side-by-side layout */}
      <div className="container mx-auto mt-8 mb- flex flex-col md:flex-row">
        {/* 70% section */}
        <div className="w-full md:w-9/12 px-4 mb-8 md:mb-0">
          <div className="flex flex-row mb-2">
            <svg
              xmlns="http://www.w3.org/2000/svg"
              width="16"
              height="16"
              fill="black"
              className="bi bi-shop-window w-16 h-16 mr-5 inline-block -mt-5"
              viewBox="0 0 16 16"
            >
             <path d="M2.97 1.35A1 1 0 0 1 3.73 1h8.54a1 1 0 0 1 .76.35l2.609 3.044A1.5 1.5 0 0 1 16 5.37v.255a2.375 2.375 0 0 1-4.25 1.458A2.37 2.37 0 0 1 9.875 8 2.37 2.37 0 0 1 8 7.083 2.37 2.37 0 0 1 6.125 8a2.37 2.37 0 0 1-1.875-.917A2.375 2.375 0 0 1 0 5.625V5.37a1.5 1.5 0 0 1 .361-.976zm1.78 4.275a1.375 1.375 0 0 0 2.75 0 .5.5 0 0 1 1 0 1.375 1.375 0 0 0 2.75 0 .5.5 0 0 1 1 0 1.375 1.375 0 1 0 2.75 0V5.37a.5.5 0 0 0-.12-.325L12.27 2H3.73L1.12 5.045A.5.5 0 0 0 1 5.37v.255a1.375 1.375 0 0 0 2.75 0 .5.5 0 0 1 1 0M1.5 8.5A.5.5 0 0 1 2 9v6h12V9a.5.5 0 0 1 1 0v6h.5a.5.5 0 0 1 0 1H.5a.5.5 0 0 1 0-1H1V9a.5.5 0 0 1 .5-.5m2 .5a.5.5 0 0 1 .5.5V13h8V9.5a.5.5 0 0 1 1 0V13a1 1 0 0 1-1 1H4a1 1 0 0 1-1-1V9.5a.5.5 0 0 1 .5-.5"/>
            </svg>
            <h2 className="text-3xl font-semibold mb-4">Shops Contact Details</h2>
          </div>

          {/* Table for staff information */}
          <div className="bg-white-200 p-7 rounded-lg shadow-2xl mb-5">
            <div className="overflow-auto">
              <table className="min-w-full table-auto border-collapse border border-gray-200 mt-4">
                <thead>
                  <tr>
                    <th className="px-2 py-2 text-left border border-gray-200 bg-gray-100">S.No.</th>
                    <th className="px-2 py-2 text-left border border-gray-200 bg-gray-100">Name</th>
                    <th className="px-2 py-2 text-left border border-gray-200 bg-gray-100">Designation</th>
                    <th className="px-2 py-2 text-left border border-gray-200 bg-gray-100">Department</th>
                    <th className="px-2 py-2 text-left border border-gray-200 bg-gray-100">Contact</th>
                  </tr>
                </thead>
                <tbody>
                  {tableData.map((row, index) => (
                    <tr key={index} className={index % 2 === 0 ? 'bg-white' : 'bg-gray-50'}>
                      <td className="px-2 py-2 border border-gray-200">{index + 1}</td>
                      <td className="px-2 py-2 border border-gray-200">{row.shopName}</td>
                      <td className="px-2 py-2 border border-gray-200">{row.firmName}</td>
                      <td className="px-2 py-2 border border-gray-200">{row.mobileNo.join(", ")}</td>
                      <td className="px-2 py-2 border border-gray-200">{row.location}</td>
                    </tr>
                  ))}
                </tbody>
              </table>
            </div>
          </div>
        </div>

        {/* 30% section */}
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
                <a href={link.href} className="text-blue-500 no-underline">
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
                  className="text-blue-500 no-underline"
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

export default shops;