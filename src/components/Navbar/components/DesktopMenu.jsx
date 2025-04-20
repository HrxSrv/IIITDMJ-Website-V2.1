import { useState } from "react";
import { ChevronDown, ExternalLink } from "lucide-react";
import { motion } from "framer-motion";
import { Link } from "react-router-dom";

export default function DesktopMenu({ menu }) {
  const [isHover, setIsHover] = useState(false);

  const handleMouseEnter = () => setIsHover(true);
  const handleMouseLeave = () => setIsHover(false);

  const subMenuAnimate = {
    enter: {
      opacity: 1,
      rotateX: 0,
      transition: { duration: 0.2 },
      display: "block",
    },
    exit: {
      opacity: 0,
      rotateX: -15,
      transition: { duration: 0.2 },
      transitionEnd: { display: "none" },
    },
  };

  const handleMenuItemClick = (href, isExternal) => {
    if (!href) return;
    if (isExternal) {
      window.open(href, '_blank', 'noopener,noreferrer');
    }
  };

  const renderMenuItem = (item) => {
    const isExternal = item.href?.startsWith('http');
    const content = (
      <div className="flex items-center gap-2 p-1.5 w-full">
        {item.icon && (
          <div className="bg-gray-50 p-1.5 rounded-md group-hover:bg-gray-100 transition-colors">
            <item.icon size={16} className="text-gray-600" />
          </div>
        )}
        <div className="flex-grow min-w-0">
          <p className="text-[13px] font-medium text-gray-600 leading-tight group-hover:text-gray-900 transition-colors">
            {item.name}
          </p>
          {item.desc && (
            <p className="text-[11px] text-gray-400 leading-tight">
              {item.desc}
            </p>
          )}
        </div>
        {isExternal && (
          <div className="flex-shrink-0 w-4">
            {/* <ExternalLink size={12} className="text-gray-400 group-hover:text-gray-600" /> */}
          </div>
        )}
      </div>
    );

    if (!item.href) {
      return content;
    }

    if (isExternal) {
      return (
        <a
          href={item.href}
          target="_blank"
          rel="noopener noreferrer"
          className="block w-full"
          onClick={(e) => {
            e.preventDefault();
            handleMenuItemClick(item.href, true);
          }}
        >
          {content}
        </a>
      );
    }

    return (
      <Link to={item.href} className="block w-full">
        {content}
      </Link>
    );
  };

  const hasSubMenu = menu?.subMenuGroups?.length;
  const numberOfGroups = menu?.subMenuGroups?.length || 0;
  const gridCols = Math.min(numberOfGroups, 6);

  return (
    <motion.li
      className="group/link relative"
      onMouseEnter={handleMouseEnter}
      onMouseLeave={handleMouseLeave}
      key={menu.name}
    >
      {menu.href ? (
        menu.href.startsWith('http') ? (
          <a
            href={menu.href}
            className="flex-center gap-1 hover:bg-white/5 cursor-pointer px-3 py-1 rounded-xl"
            target="_blank"
            rel="noopener noreferrer"
          >
             <p >{menu.name}</p>
            {/* <ExternalLink size={12} className="ml-1" /> */}
          </a>
        ) : (
          <Link
            to={menu.href}
            className="flex-center gap-1 hover:bg-white/5 cursor-pointer px-3 py-1 rounded-xl "
          >
            <p className="shadow">{menu.name}</p>
          </Link>
        )
      ) : (
        <span className="flex-center gap-1 hover:bg-white/5 cursor-pointer px-3 py-1 rounded-xl">
           <p className="text-shadow-prominent">{menu.name}</p>
          {hasSubMenu && (
            <ChevronDown size={14} className="mt-[0.6px] group-hover/link:rotate-180 duration-200" />
          )}
        </span>
      )}

      {hasSubMenu && (
        <motion.div
          className="sub-menu absolute bg-white rounded-lg p-2.5 shadow-lg  bg-opacity-100"
          style={{
            maxWidth: "90vw",
            width: `${Math.min(200 * gridCols, 1200)}px`,
            marginTop: "0px", // Removed negative margin
            top: "100%", // Position directly under parent
          }}
          initial="exit"
          animate={isHover ? "enter" : "exit"}
          variants={subMenuAnimate}
        >
          <div
            className="grid divide-x divide-white"
            style={{
              gridTemplateColumns: `repeat(${gridCols}, minmax(180px, 1fr))`,
            }}
          >
            {menu.subMenuGroups.map((group, groupIndex) => (
              <div key={groupIndex} className="space-y-1.5 px-3 first:pl-0 last:pr-0">
                <h3 className="text-sm font-semibold text-gray-500 mb-1">
                  {group.heading}
                </h3>
                {group.heading && <hr></hr>}
                <div className="space-y-0.5">
                  {group.items.map((item, itemIndex) => (
                    <div
                      key={itemIndex}
                      className="group hover:bg-gray-50 rounded-md transition-all duration-150 cursor-pointer "
                    >
                      {renderMenuItem(item)}
                    </div>
                  ))}
                </div>
              </div>
            ))}
          </div>
        </motion.div>
      )}
    </motion.li>
  );
}