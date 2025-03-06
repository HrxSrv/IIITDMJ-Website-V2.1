import React, { useState, useEffect } from "react";
import DesktopMenu from "./components/DesktopMenu";
import MobMenu from "./components/MobMenu";
import { Menus } from "./utils";
import Logo from "../../resources/images/IIIT_logo.png";
import { Link } from "react-router-dom";
import './Navbar.css';
import InstituteBanner from "../InstiLogo";

const Navbar = () => {
  const [isSticky, setIsSticky] = useState(false);
  const [isBannerVisible, setIsBannerVisible] = useState(true);
  const [isAnimating, setIsAnimating] = useState(false);
  const [isMobileMenuOpen, setIsMobileMenuOpen] = useState(false);

  useEffect(() => {
    const handleScroll = () => {
      if (window.scrollY > 200 && window.innerWidth >= 768) {
        setIsSticky(true);
        setIsBannerVisible(false);
        setIsAnimating(true);
      } else {
        setIsSticky(false);
        setIsBannerVisible(true);
        setIsAnimating(true);
      }
    };

    window.addEventListener("scroll", handleScroll);
    return () => window.removeEventListener("scroll", handleScroll);
  }, []);

  // Handle body scroll lock when mobile menu is open
  useEffect(() => {
    if (isMobileMenuOpen) {
      document.body.style.overflow = 'hidden';
      document.body.style.position = 'fixed';
      document.body.style.width = '100%';
    } else {
      document.body.style.overflow = '';
      document.body.style.position = '';
      document.body.style.width = '';
    }

    return () => {
      document.body.style.overflow = '';
      document.body.style.position = '';
      document.body.style.width = '';
    };
  }, [isMobileMenuOpen]);

  return (
    <div className="navbar w-full absolute">
      <InstituteBanner isVisible={isBannerVisible} />
      
      <header
        className={`
          h-20 text-[15px]
          ${isSticky
            ? "fixed top-0 z-30 bg-white shadow-lg py-10 transition-all duration-300 opacity-100"
            : "relative w-full text-white opacity-100 transition-all duration-300 relative -top-10 z-30"
          }
          inset-0 flex-center
        `}
      >
        <div 
          className={`
            absolute bottom-0 left-1/2 h-0.5 bg-blue-500
            transition-all duration-700 ease-in-out
            ${isSticky ? 'animate-expand-border' : 'animate-contract-border'}
          `}
          onAnimationEnd={() => setIsAnimating(false)}
        />

        <nav className="px-3.5 flex-center-between w-full max-w-7xl mx-auto">
          <div className="flex-center gap-x-3 relative">
            <Link to="/">
              {!isBannerVisible && (
                <img
                  className="w-48 opacity-100 transition-all duration-300 -ml-2"
                  src={Logo}
                  alt="logo"
                />
              )}
            </Link>
          </div>

          <ul className="gap-x-1 lg:flex-center hidden">
            {Menus.map((menu) => (
              <DesktopMenu menu={menu} key={menu.name} />
            ))}
          </ul>

          <div className="flex-center gap-x-5">
            <div className="lg:hidden">
              <MobMenu
                Menus={Menus}
                logo={Logo}
                isOpen={isMobileMenuOpen}
                setIsOpen={setIsMobileMenuOpen}
              />
            </div>
          </div>
        </nav>
      </header>
    </div>
  );
};

export default Navbar;