import React, { useEffect, useState } from "react";
import { Outlet, useLocation } from "react-router-dom";
import Navbar from "./components/Navbar";
import Footer from "./components/footer/footer";
// import Footer from "./components/Footer";
import ScrollToTop from "./components/ScrollToTop";
import Loader from "./components/Loader";
import AccessibilityHeader from "./components/AccessibilityHeader";
function App() {
  const [loading, setLoading] = useState(false);
  const [MoreOptionToggle, setMoreOptionToggle] = useState(false);

  const { pathname } = useLocation();

  useEffect(() => {
    setLoading(true);
    setMoreOptionToggle(false);
    setTimeout(() => {
      setLoading(false);
    }, 200);
  }, [pathname]);
//added tests
  return (
    <div className="overflow-x-hidden">
      {loading && <Loader loading={loading} />}
      <ScrollToTop />
      <AccessibilityHeader/>
      <Navbar
        MoreOptionToggle={MoreOptionToggle}
        setMoreOptionToggle={setMoreOptionToggle}
      />
      <Outlet className="overflow-hidden" />
      <Footer
        MoreOptionToggle={MoreOptionToggle}
        setMoreOptionToggle={setMoreOptionToggle}
      />
    </div>
  );
}

export default App;
