import React, { useState, useEffect, Suspense, lazy } from "react";
import { Link } from "react-router-dom";
import axiosInstance from "../axios";
import Marquee2 from "./Marquee2";
import ImageSlider from "./ImageSlider";
import NewsSliderSkeleton from "../components/Skeletons/NewsSkeleton";

// Lazy loaded components
const AboutAndVisitors = lazy(() => import("../components/AboutAndVisitor"));
const Events = lazy(() => import("../components/Events/Events"));
const ImportantAnnouncement = lazy(() => import("../components/ImportantAnnouncement"));
const FocusOn = lazy(() => import("../components/FocusOn"));
const Coi = lazy(() => import("../components/Coi"));
const NewsSlider = lazy(() => import('../components/NewsSlider/NewsSlider'));
const AchievementsSlider = lazy(() => import('../components/AchievementsSlider'));
const Notices = lazy(() => import('../components/Notices'));

// Simple loading component for Suspense fallbacks
const SectionLoader = ({ height = "h-64" }) => (
  <div className={`w-full ${height} bg-gray-100 rounded-lg animate-pulse flex items-center justify-center`}>
    <div className="w-12 h-12 border-4 border-blue-500 border-t-transparent rounded-full animate-spin"></div>
  </div>
);

function Home() {
  const [fetchedEvents, setFetchedEvents] = useState([]);
  const [error, setError] = useState(null);
  const [loading, setLoading] = useState(true);
  const [fetchedMarquee, setFetchedMarquee] = useState("");
  const [activeTab, setActiveTab] = useState('current');

  // Combine API fetches to reduce useEffect calls
  useEffect(() => {
    const fetchData = async () => {
      try {
        setLoading(true);
        
        // Use Promise.all to fetch data in parallel
        const [eventsResponse, marqueeResponse] = await Promise.all([
          axiosInstance.get("events/events"),
          axiosInstance.get("/Marquee/Marquee", {params: {type: activeTab}})
        ]);
        
        setFetchedEvents(eventsResponse.data);
        setFetchedMarquee(marqueeResponse.data);
        setLoading(false);
      } catch (err) {
        console.error("Error fetching data:", err);
        setError("Failed to fetch data. Please try again later.");
        setLoading(false);
      }
    };
    
    fetchData();
  }, [activeTab]);

  const SectionHeader = ({ title, linkTo, notificationDot = false }) => (
    <div className="flex items-center justify-between mb-4">
      <div className="flex items-center">
        <h3 className="text-xl font-semibold text-gray-900 tracking-tight">{title}</h3>
        {notificationDot && (
          <span className="w-2 h-2 bg-blue-500 rounded-full shadow-blue-500/50 animate-pulse ml-2"></span>
        )}
      </div>
      <Link
        to={linkTo}
        className="inline-flex items-center gap-1 px-3 py-1.5 text-sm font-medium text-gray-700 border border-gray-200 bg-white hover:bg-gray-50 hover:text-blue-600 hover:border-blue-200 rounded-md transition-all duration-200 transform hover:shadow-sm group"
      >
        <span>View All</span>
        <svg xmlns="http://www.w3.org/2000/svg" className="h-4 w-4 transition-transform duration-200 group-hover:translate-x-0.5" fill="none" viewBox="0 0 24 24" stroke="currentColor">
          <path strokeLinecap="round" strokeLinejoin="round" strokeWidth={2} d="M9 5l7 7-7 7" />
        </svg>
      </Link>
    </div>
  );

  const AchievementsAndNoticesLayout = () => (
    <div className="grid grid-cols-1 lg:grid-cols-3 gap-8">
      {/* Achievements Section */}
      <div className="lg:col-span-2">
        {/* <div className="bg-white rounded-xl shadow-sm hover:shadow-md transition-shadow duration-300 overflow-hidden p-5 h-full"> */}
          <SectionHeader 
            title="Achievements" 
            linkTo="/achievementsPage"
          />
          <Suspense fallback={<SectionLoader />}>
            <AchievementsSlider />
          </Suspense>
        {/* </div> */}
      </div>

      {/* Notices Section */}
      <div>
        {/* <div className="bg-white rounded-xl shadow-sm hover:shadow-md transition-shadow duration-300 overflow-hidden p-5 h-full"> */}
          <SectionHeader 
            title="Notices" 
            linkTo="/noticespage"
          />
          <Suspense fallback={<SectionLoader height="h-96" />}>
            <Notices />
          </Suspense>
        </div>
      {/* </div> */}
    </div>
  );

  return (
    <div className="bg-gray-50 min-h-screen font-sans">
      <main>
        {/* Hero Section */}
        <div className="relative">
          <ImageSlider />
        </div>

        {/* Main Content Container */}
        <div 
          className="relative max-w-9xl mx-auto px-4 sm:px-6 lg:px-8 -mt-24 pb-16"
          style={{
            scrollMarginTop: '2rem',
          }}
        >
          {/* Glass Card Container */}
          <div 
            className="rounded-2xl shadow-xl overflow-hidden"
            style={{
              backgroundColor: 'rgba(255, 255, 255, 0.92)',
              backdropFilter: 'saturate(180%) blur(20px)',
            }}
          >
            {/* Marquee Section */}
            <section className="w-full px-6 py-6 border-b border-gray-100">
              <Marquee2 data={fetchedMarquee} />
            </section>

            {/* Announcements Section */}
            <section className="px-6 py-10">
              <Suspense fallback={<SectionLoader />}>
                <ImportantAnnouncement />
              </Suspense>
            </section>

            {/* News Section */}
            <section className="px-6 py-10 bg-gray-50/50">
              <div className="max-w-[80vw] mx-auto">
                <div className="flex items-center justify-between mb-6">
                  <div>
                    <h2 className="text-2xl font-bold text-gray-900 tracking-tight">
                      Latest <span className="text-2xl text-blue-600">Updates</span>
                    </h2>
                    <p className="text-gray-600 mt-1 font-light">Institute at a Glance</p>
                    <div className="w-16 h-0.5 bg-blue-500 mt-2"></div>
                  </div>
                  <Link
                    to="/newsPage"
                    className="inline-flex items-center gap-1 px-4 py-2 text-sm font-medium text-gray-700 border border-gray-200 bg-white hover:bg-gray-50 hover:text-blue-600 hover:border-blue-200 rounded-md transition-all duration-200 transform hover:shadow-sm group"
                  >
                    <span>View All</span>
                    <svg xmlns="http://www.w3.org/2000/svg" className="h-4 w-4 transition-transform duration-200 group-hover:translate-x-0.5" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                      <path strokeLinecap="round" strokeLinejoin="round" strokeWidth={2} d="M9 5l7 7-7 7" />
                    </svg>
                  </Link>
                </div>
                
                <Suspense fallback={<NewsSliderSkeleton />}>
                  <NewsSlider />
                </Suspense>
              </div>
            </section>

            {/* Announcements & Notices Section */}
            <section className="px-6 py-10">
              <div className="max-w-[80vw] mx-auto">
                <div className="mb-8">
                  <h2 className="text-2xl font-bold text-gray-900 tracking-tight">
                    Recent <span className="text-2xl text-blue-600">Announcements</span>
                  </h2>
                  <p className="text-gray-600 mt-1 font-light">Campus Bulletins</p>
                  <div className="w-16 h-0.5 bg-blue-500 mt-2"></div>
                </div>
                
                <AchievementsAndNoticesLayout />
              </div>
            </section>

            {/* About Section */}
            <section className="px-6 py-10 bg-gray-50/50">
              <Suspense fallback={<SectionLoader height="h-96" />}>
                <AboutAndVisitors />
              </Suspense>
            </section>

            {/* Focus On Section */}
            <section className="px-6 py-10">
              <Suspense fallback={<SectionLoader />}>
                <FocusOn />
              </Suspense>
            </section>

            {/* COI Section */}
            <section className="px-6 py-10 bg-gray-50/50">
              <Suspense fallback={<SectionLoader />}>
                <Coi />
              </Suspense>
            </section>

            {/* Events Section */}
            <section className="px-6 py-10">
              <Suspense fallback={<SectionLoader height="h-96" />}>
                <Events events={fetchedEvents} />
              </Suspense>
            </section>
          </div>
        </div>
      </main>
    </div>
  );
}

export default Home;