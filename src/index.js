import React from 'react';
import ReactDOM from "react-dom/client";
import "./index.css";
import App from "./App";
import {  createHashRouter, RouterProvider } from "react-router-dom";
import reportWebVitals from "./reportWebVitals";
// redux store
import { Provider } from "react-redux";
import store from "./app/store";

// pages
import Home from "./pages/Home";
import AboutUs from "./pages/AboutUs";
import Job from "./pages/Jobs"
import QIP from "./pages/Qip"
import TeamPage from "./pages/Developers"
import ImportantAnnouncementPage from "./pages/ImportantAnnouncementsPage"
//more pages
import BoardOfGoverners from "./pages/more/administration/boardofgoverners";
import FinanceCommittee from "./pages/more/administration/financecommittee";
import GeneralAdministartion from "./pages/more/administration/generaladministration";
import OtherAdministration from "./pages/more/administration/otheradministration";
import Senate from "./pages/more/administration/senate";
import BuildingWorksCommittee from "./pages/more/administration/buildingworkscommittee";
import AdministrativeStructure from "./pages/more/administration/administrativestructure";
import BOGminutes from "./pages/more/administration/bogminutes";
import BOGagenda from "./pages/more/administration/bogagenda";
import FCminutes from "./pages/more/administration/fcminutes";
import FCagenda from "./pages/more/administration/fcagenda";
import Senateminutes from "./pages/more/administration/senateminutes";
import Senateagenda from "./pages/more/administration/senateagenda";
import Buildingminutes from "./pages/more/administration/buildingminutes";
import Buildingagenda from "./pages/more/administration/buildingagenda";
import DeanAcademics from "./pages/more/deans/deanacademics";
import DeanStudents from "./pages/more/deans/deanstudents";
import Club from "./pages/more/Club";
import ResearchStaff from "./pages/more/people/researchstaff";
import OfficeAdministration from "./pages/more/people/officeadministration";
import Staff from "./pages/more/people/staff";
import PrimaryHealthCentre from "./pages/more/facilities/primaryhealthcentre";
import ShopsInCampus from "./pages/more/facilities/shopsincampus";
import GymKhana from "./pages/more/students/gymkhana";
import Activities from "./pages/more/students/activities";
import Hostels from "./pages/more/students/hostels";
import Counselling from "./pages/more/students/counselling";
import AnnualReport from "./pages/more/Footer/annualreport";
import AnnualAccount from "./pages/more/Footer/annualaccounts";
import Accessibility from "./pages/more/Footer/accessibility";
import ContactUs from "./pages/more/Footer/contact";
import Grievance from "./pages/more/Footer/grievanceandredressalcell";
import Scholarship from "./pages/more/Footer/scholarship";
import PressReleases from "./pages/more/Footer/pressreleases";
import MapsAndDirections from "./pages/more/Footer/mapsanddirections";


//academics
import Convocation from "./pages/more/academics/convocation";
import Curriculum from "./pages/more/academics/curriculum";
import FeeStructure from "./pages/more/academics/feestructure";
import IntegratedMasters from "./pages/more/academics/integratedmasters";
import OfferedPrograms from "./pages/more/academics/offeredprograms";
import PartTimePrograms from "./pages/more/academics/parttimeprograms";
import PgPrograms from "./pages/more/academics/pgprograms";
import PhdPrograms from "./pages/more/academics/phdprograms";
import UgPrograms from "./pages/more/academics/ugprograms";
import UsefulInformation from "./pages/more/academics/usefulinformation";
import InternalCirculars from "./pages/more/academics/internalcirculars";
import ExternalCirculars from "./pages/more/academics/externalcirculars";
import PGCurriculum from './pages/more/academics/pgcurriculum';
// errors
import PageNotFoundError from "./errors/PageNotFoundError";
import ErrorBoundary from './errors/ErrorBoundary';
//  Courses

import RTI from "./pages/more/Footer/RTI"

//EIS
import LandingPage from "./modules/faculty/pages/LandingPage";
import ProfilePage from "./modules/faculty/pages/profilePage";

//Events
import EventsPage from "./components/Events/EventsPage"
import TendersPage from "./pages/more/Tenders"
//admin  portal 
import AdminPortal from './modules/admin/AdminPortal';
//misc
import ScreenReaderAccess from "./pages/ScreenReaderAccess"
import NewsPage from "./pages/NewsPage"
import AchievementsPage from "./pages/AchievementsPage"
import NoticesPage from "./pages/NoticesPage"
import CalendersPage from './pages/Calenders';
import DownloadsPage from './pages/Downloads';
import DirectorsMessage from './pages/DirectorsPage';
import ImportantForms from './pages/more/facilities/importantForms';
import Test from './pages/more/academics/test2';
import ConvocationsPage from './pages/more/academics/convocations';
import ConvocationDetailPage from './pages/more/academics/convocationPage';
const router = createHashRouter([
  {
      path:"*",
      element:<PageNotFoundError/>
    
  },
  {
    path: "/",
    element: <App />,
    children: [
      {
        path: "/",
        element: <Home />,
        // loader: loader,
      },
      {
        path:'/jobs',
        element: <Job/>
      },
      {
        path:'/test',
        element: <Test/>
      },
      {
        path:'/directorPage',
        element: <DirectorsMessage/>
      },
      {
        path:'/downloads',
        element: <DownloadsPage/>
      },
      {
        path:'/allImportantAnnouncements',
        element: <ImportantAnnouncementPage/>
      },
      {
        path:'/Qip',
        element: <QIP/>
      },
      {
        path:'/developers',
        element: <TeamPage/>
      },
      
      {
        path: "/about",
        element: <AboutUs />,
      },
      {
        path: "/contact",
        element: <ContactUs />,
      },
      

      // more pages
      {
        path: "/club",
        element: <Club />,
      },
      {
        path: "/boardofgoverners",
        element: <BoardOfGoverners />,
      },
      {
        path: "/financecommittee",
        element: <FinanceCommittee />,
      },
      {
        path: "/generaladministration",
        element: <GeneralAdministartion />,
      },
      {
        path: "/otheradministration",
        element: <OtherAdministration />,
      },
      {
        path: "/senate",
        element: <Senate />,
      },
      {
        path: "/buildingworkscommittee",
        element: <BuildingWorksCommittee />,
      },
      {
        path: "/administrativestructure",
        element: <AdministrativeStructure />,
      },
      {
        path: "/bogminutes",
        element: <BOGminutes />,
      },
      {
        path: "/bogagenda",
        element: <BOGagenda />,
      },
      {
        path: "/fcminutes",
        element: <FCminutes />,
      },
      {
        path: "/fcagenda",
        element: <FCagenda />,
      },
      {
        path: "/senateminutes",
        element: <Senateminutes />,
      },
      {
        path: "/senateagenda",
        element: <Senateagenda />,
      },
      {
        path: "/buildingminutes",
        element: <Buildingminutes />,
      },
      {
        path: "/buildingagenda",
        element: <Buildingagenda />,
      },
      {
        path: "/deanacademics",
        element: <DeanAcademics />,
      },
      {
        path: "/deanstudents",
        element: <DeanStudents />,
      },
      {
        path: "/researchstaff",
        element: <ResearchStaff />,
      },
      {
        path: "/officeadministration",
        element: <OfficeAdministration />,
      },
      {
        path: "/primaryhealthcentre",
        element: <PrimaryHealthCentre />,
      },
      {
        path: "/shopsincampus",
        element: <ShopsInCampus />,
      },
      {
        path: "/gymkhana",
        element: <GymKhana />,
      },
      {
        path: "/activities",
        element: <Activities />,
      },
      {
        path: "/hostels",
        element: <Hostels />,
      },
      {
        path: "/counselling",
        element: <Counselling />,
      },
      {
        path: "/annualreport",
        element: <AnnualReport />,
      },
      {
        path: "/annualaccount",
        element: <AnnualAccount />,
      },
      {
        path: "/accessibility",
        element: <Accessibility />,
      },
      {
        path: "/grievanceandredressalcell",
        element: <Grievance />,
      },
      {
        path: "/scholarship",
        element: <Scholarship />,
      },
      {
        path: "/pressreleases",
        element: <PressReleases />,
      },
      {
        path: "/mapsanddirections",
        element: <MapsAndDirections />,
      },
      {
        path: "/internalcirculars",
        element: <InternalCirculars />,
      },
      {
        path: "/externalcirculars",
        element: <ExternalCirculars />,
      },
      {
        path: "/staff",
        element: <Staff />,
      },
      {
        path: "/rti",
        element: <RTI />,
      },
      {
        path: "/gymkhana",
        element: <GymKhana />,
      },
      {
        path: "/activities",
        element: <Activities />,
      },
      {
        path: "/hostels",
        element: <Hostels />,
      },
      {
        path: "/counselling",
        element: <Counselling />,
      },
      {
        path:"/employee",
        element:<LandingPage/>
      },
      {
        path:"/profilepage/:id", 
        element:<ProfilePage/>
      },
      { 
        path:"/event/:eventId",
        element:<EventsPage /> 
      },
      { 
        path:"/tenders",
        element:<TendersPage/> 
      },
      { 
        path:"/calendars",
        element:<CalendersPage/> 
      },
      { 
        path:"/screenreaderaccess",
        element:<ScreenReaderAccess/> 
      },
      { 
        path:"/convocationPage/:id",
        element:<ConvocationDetailPage/> 
      },
      
      //academics
      // {
      //   path: "/academiccalander",
      //   element: <CalendarCreator/>,
      // },
      {
        path: "/convocation",
        element: <Convocation />,
      },
      {
        path: "/curriculum",
        element: <Curriculum />,
      },
      {
        path: "/pgcurriculum",
        element: <PGCurriculum/>,
      },
      {
        path: "/feestructure",
        element: <FeeStructure />,
      },
      {
        path: "/integratedmasters",
        element: <IntegratedMasters />,
      },
      {
        path: "/offeredprograms",
        element: <OfferedPrograms />,
      },
      {
        path: "/parttimeprograms",
        element: <PartTimePrograms />,
      },
      {
        path: "/pgprograms",
        element: <PgPrograms />,
      },
      {
        path: "/phdprograms",
        element: <PhdPrograms />,
      },
      {
        path: "/ugprograms",
        element: <UgPrograms />,
      },
      {
        path: "/usefulinformation",
        element: <UsefulInformation />,
      },
      {
        path: "/internalcirculars",
        element: <InternalCirculars />,
      },
      {
        path: "/externalcirculars",
        element: <ExternalCirculars />,
      },
      {
        path: "/newsPage",
        element: <NewsPage />,
      },
      {
        path: "/achievementsPage",
        element: <AchievementsPage/>,
      },
      {
        path: "/noticesPage",
        element: <NoticesPage/>,
      },
      {
        path: "/importantForms",
        element: <ImportantForms/>,
      },
      {
        path: "/convocations",
        element: <ConvocationsPage/>,
      }
    ],
  },
  {
    path: "/admin",
    element: <AdminPortal />,
  },
]);

const root = ReactDOM.createRoot(document.getElementById("root"));

root.render(
  <React.StrictMode>
    <Provider store={store}>
      <ErrorBoundary>
        
      <RouterProvider router={router}  />
      </ErrorBoundary>
    </Provider>
  </React.StrictMode>
);

// If you want to start measuring performance in your app, pass a function
// to log results (for example: reportWebVitals(console.log))
// or send to an analytics endpoint. Learn more: https://bit.ly/CRA-vitals
reportWebVitals();
