import { useState } from "react";
import { motion, AnimatePresence } from "framer-motion";
import { Menu, X, ChevronDown } from "lucide-react";
import { Link } from "react-router-dom";

export default function MobMenu({ Menus, logo, isOpen, setIsOpen }) {
  const [clicked, setClicked] = useState(null);
  const [subGroupClicked, setSubGroupClicked] = useState(null);

  const toggleDrawer = () => {
    setIsOpen(!isOpen);
    setClicked(null);
    setSubGroupClicked(null);
  };

  const subMenuDrawer = {
    enter: {
      height: "auto",
      overflow: "hidden",
    },
    exit: {
      height: 0,
      overflow: "hidden",
    },
  };

  const handleItemClick = (to) => {
    if (to) {
      setIsOpen(false);
    }
  };

  return (
    <>
      <button 
        className="lg:hidden relative p-2" 
        onClick={() => setIsOpen(true)}
      >
        <Menu className="text-white" />
      </button>

      <AnimatePresence>
        {isOpen && (
          <motion.div
            className="fixed inset-0 z-50 bg-[#18181A] overflow-y-auto"
            initial={{ opacity: 0, x: "-100%" }}
            animate={{ opacity: 1, x: 0 }}
            exit={{ opacity: 0, x: "-100%" }}
            transition={{ type: "tween", duration: 0.3 }}
          >
            {/* Mobile Menu Header */}
            <div className="relative top-0 z-50 flex items-center justify-between !p-8 border-b border-white/10 bg-[#18181A]">
              <Link to="/">
                <img
                  src={logo}
                  alt="Institute Logo"
                  className="h-8 w-auto"
                />
              </Link>
              <button 
                onClick={toggleDrawer}
                className="p-2 hover:bg-white/10 rounded-full transition-colors"
              >
                <X className="w-6 h-6 text-white" />
              </button>
            </div>

            {/* Menu Content */}
            <div className="p-6 pb-20">
              <ul>
                {Menus.map((menuItem, i) => {
                  const isClicked = clicked === i;
                  const hasSubMenuGroups = menuItem.subMenuGroups?.length > 0;

                  return (
                    <li key={`${menuItem.name}-${i}`}>
                      {menuItem.href ? (
                        <Link
                          to={menuItem.href}
                          className="flex items-center justify-between p-4 hover:bg-white/5 rounded-md cursor-pointer text-white"
                          onClick={() => handleItemClick(menuItem.href)}
                        >
                          {menuItem.name}
                        </Link>
                      ) : (
                        <span
                          className="flex items-center justify-between p-4 hover:bg-white/5 rounded-md cursor-pointer text-white"
                          onClick={() => {
                            setClicked(isClicked ? null : i);
                            setSubGroupClicked(null);
                          }}
                        >
                          {menuItem.name}
                          {hasSubMenuGroups && (
                            <ChevronDown
                              className={`transform transition-transform ${
                                isClicked ? "rotate-180" : ""
                              }`}
                            />
                          )}
                        </span>
                      )}
                      {hasSubMenuGroups && (
                        <motion.div
                          initial="exit"
                          animate={isClicked ? "enter" : "exit"}
                          variants={subMenuDrawer}
                          className="ml-5"
                        >
                          {menuItem.subMenuGroups.map((group, groupIndex) => (
                            <div key={`${menuItem.name}-group-${groupIndex}`} className="mb-4">
                              {group.heading && (
                                <span
                                  className="flex items-center justify-between p-2 text-sm font-semibold text-gray-400 cursor-pointer hover:bg-white/5 rounded-md"
                                  onClick={() => setSubGroupClicked(subGroupClicked === groupIndex ? null : groupIndex)}
                                >
                                  {group.heading}
                                  <ChevronDown
                                    size={16}
                                    className={`transform transition-transform ${
                                      subGroupClicked === groupIndex ? "rotate-180" : ""
                                    }`}
                                  />
                                </span>
                              )}
                              <motion.ul
                                initial="exit"
                                animate={
                                  !group.heading || subGroupClicked === groupIndex
                                    ? "enter"
                                    : "exit"
                                }
                                variants={subMenuDrawer}
                                className="ml-4"
                              >
                                {group.items.map((item, itemIndex) => (
                                  <li key={`${item.name}-${itemIndex}`}>
                                    {item.href ? (
                                      <Link
                                        to={item.href}
                                        className="p-2 flex items-center hover:bg-white/5 rounded-md gap-x-2 cursor-pointer text-sm text-white"
                                        onClick={() => handleItemClick(item.href)}
                                      >
                                        {item.icon && <item.icon size={17} />}
                                        {item.name}
                                      </Link>
                                    ) : (
                                      <span className="p-2 flex items-center hover:bg-white/5 rounded-md gap-x-2 cursor-pointer text-sm text-white">
                                        {item.icon && <item.icon size={17} />}
                                        {item.name}
                                      </span>
                                    )}
                                  </li>
                                ))}
                              </motion.ul>
                            </div>
                          ))}
                        </motion.div>
                      )}
                    </li>
                  );
                })}
              </ul>
            </div>
          </motion.div>
        )}
      </AnimatePresence>
    </>
  );
}