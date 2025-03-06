import React from 'react';
import { motion } from 'framer-motion';
import { ChevronLeft, ChevronRight } from 'lucide-react';
import { format } from 'date-fns';
import { Link } from 'react-router-dom';

const EventCard = ({ event }) => (
  <motion.div
    whileHover={{ scale: 1.02 }}
    className="relative min-w-[260px] w-full max-w-xs h-[200px] rounded-xl overflow-hidden shadow-[0_4px_6px_-1px_rgba(0,0,0,0.1),0_2px_4px_-2px_rgba(0,0,0,0.05),0_0_0_1px_rgba(0,0,0,0.05),4px_4px_8px_rgba(0,0,0,0.1)] group bg-white"
  >
    <Link to={`/event/${event.id}`} className="block h-full w-full">
      <div
        className="absolute inset-0 bg-cover bg-center transition-transform duration-500 group-hover:scale-110"
        style={{
          backgroundImage: `url(${event.cover_image})`,
        }}
      />
      <div className="absolute inset-0 bg-gradient-to-t from-black/70 via-black/20 to-transparent" />
      
      <div className="absolute top-4 right-4 bg-white/90 backdrop-blur-sm rounded-lg p-2 shadow-[0_2px_4px_rgba(0,0,0,0.1),0_0_0_1px_rgba(0,0,0,0.05)]">
        <div className="text-center">
          <span className="block text-sm font-semibold text-gray-800">
            {format(new Date(event.date), 'MMM')}
          </span>
          <span className="block text-2xl font-bold text-gray-900">
            {format(new Date(event.date), 'd')}
          </span>
        </div>
      </div>

      <div className="absolute bottom-4 left-4 right-4">
        <h3 className="text-white font-semibold text-lg mb-1 line-clamp-2">
          {event.name}
        </h3>
        <p className="text-white/80 text-sm line-clamp-2">
          {event.description}
        </p>
      </div>
    </Link>
  </motion.div>
);

const EventsSection = ({ events }) => {
  const scrollRef = React.useRef(null);
  const [isScrolling, setIsScrolling] = React.useState(false);
  const [showControls, setShowControls] = React.useState(false);

  // Check if content is scrollable
  React.useEffect(() => {
    const checkScrollable = () => {
      const { current } = scrollRef;
      if (current) {
        setShowControls(current.scrollWidth > current.clientWidth);
      }
    };

    checkScrollable();
    window.addEventListener('resize', checkScrollable);
    return () => window.removeEventListener('resize', checkScrollable);
  }, [events]);

  const scroll = (direction) => {
    const { current } = scrollRef;
    if (current && !isScrolling) {
      setIsScrolling(true);
      
      // Adjust scroll amount based on screen size
      const cardWidth = window.innerWidth < 640 ? 280 : 350;
      const scrollAmount = direction === 'left' ? -cardWidth : cardWidth;
      
      const isAtEnd = Math.abs(
        current.scrollLeft + current.offsetWidth - current.scrollWidth
      ) < 10;
      
      const isAtStart = current.scrollLeft <= 0;

      if (direction === 'right' && isAtEnd) {
        current.scrollTo({ left: 0, behavior: 'smooth' });
      } else if (direction === 'left' && isAtStart) {
        current.scrollTo({ left: current.scrollWidth - current.offsetWidth, behavior: 'smooth' });
      } else {
        current.scrollBy({ left: scrollAmount, behavior: 'smooth' });
      }

      // Reset scrolling state after animation
      setTimeout(() => setIsScrolling(false), 500);
    }
  };

  React.useEffect(() => {
    const { current } = scrollRef;
    let interval;

    const startAutoScroll = () => {
      if (!showControls) return; // Don't auto-scroll if not scrollable
      
      interval = setInterval(() => {
        if (current && !isScrolling) {
          const isAtEnd = Math.abs(
            current.scrollLeft + current.offsetWidth - current.scrollWidth
          ) < 10;

          if (isAtEnd) {
            current.scrollTo({ left: 0, behavior: 'auto' });
            // Small delay before continuing the scroll
            setTimeout(() => {
              current.scrollBy({ left: 350, behavior: 'smooth' });
            }, 50);
          } else {
            current.scrollBy({ left: 350, behavior: 'smooth' });
          }
        }
      }, 3000);
    };

    startAutoScroll();

    // Pause auto-scroll on hover
    const pauseScroll = () => clearInterval(interval);
    
    current?.addEventListener('mouseenter', pauseScroll);
    current?.addEventListener('mouseleave', startAutoScroll);

    return () => {
      clearInterval(interval);
      current?.removeEventListener('mouseenter', pauseScroll);
      current?.removeEventListener('mouseleave', startAutoScroll);
    };
  }, [isScrolling, showControls]);

  return (
    <section className="w-full py-12 md:py-16 bg-gray-100 rounded-lg">
      <div className="container mx-auto px-4 md:px-6 lg:px-8">
        <div className="flex items-center justify-between mb-6 md:mb-8">
          <div>
            <h2 className="text-2xl md:text-3xl font-bold text-gray-900">Events Gallery</h2>
            <p className="text-gray-600 mt-1 md:mt-2">Discover our recent and upcoming events</p>
          </div>
          
          {showControls && (
            <div className="flex gap-2">
              <button
                onClick={() => scroll('left')}
                className="p-2 rounded-full bg-white shadow-md hover:bg-gray-50 transition-colors"
                disabled={isScrolling}
                aria-label="Scroll left"
              >
                <ChevronLeft className="w-5 h-5 md:w-6 md:h-6" />
              </button>
              <button
                onClick={() => scroll('right')}
                className="p-2 rounded-full bg-white shadow-md hover:bg-gray-50 transition-colors"
                disabled={isScrolling}
                aria-label="Scroll right"
              >
                <ChevronRight className="w-5 h-5 md:w-6 md:h-6" />
              </button>
            </div>
          )}
        </div>
        
        <div
          ref={scrollRef}
          className="flex gap-4 md:gap-6 overflow-x-auto pb-4 snap-x snap-mandatory hide-scrollbar"
          style={{ 
            scrollbarWidth: 'none', 
            msOverflowStyle: 'none',
          }}
        >
          {events.length > 0 ? (
            events.map((event) => (
              <div key={event.id} className="snap-start flex-shrink-0">
                <EventCard event={event} />
              </div>
            ))
          ) : (
            <div className="w-full text-center py-8">
              <p className="text-gray-500">No events available at the moment.</p>
            </div>
          )}
        </div>
        
        {/* Mobile-friendly pagination indicators */}
        {showControls && events.length > 1 && (
          <div className="flex justify-center mt-4 gap-1.5 md:hidden">
            {events.map((_, index) => (
              <div
                key={index}
                className="w-2 h-2 rounded-full bg-gray-300"
                aria-hidden="true"
              />
            ))}
          </div>
        )}
      </div>
    </section>
  );
};

export default EventsSection;