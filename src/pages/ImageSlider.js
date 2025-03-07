import { useState, useEffect, useRef } from "react";
import { motion, AnimatePresence } from "framer-motion";
import axiosInstance from "../axios";

const ImageSlider = () => {
  const [currentIndex, setCurrentIndex] = useState(0);
  const [previousIndex, setPreviousIndex] = useState(0);
  const [slides, setSlidesData] = useState([]);
  const [isLoading, setIsLoading] = useState(true);
  const [direction, setDirection] = useState(1); // 1 for right, -1 for left
  const slidesRef = useRef({});
  const containerRef = useRef(null);

  // Preload images
  useEffect(() => {
    const preloadImages = (imageUrls) => {
      imageUrls.forEach((url) => {
        const img = new Image();
        img.src = url;
        slidesRef.current[url] = img;
      });
    };

    if (slides.length > 0) {
      preloadImages(slides.map(slide => slide.image_url));
      setIsLoading(false);
    }
  }, [slides]);

  useEffect(() => {
    const fetchSlides = async () => {
      try {
        const response = await axiosInstance.get('/carousel/carousels');
        setSlidesData(
          response.data.map((item) => ({
            image_url: item.image_url,
            title: item.title,
            subtext: item.subtext,
            link: item.link,
          }))
        );
      } catch (error) {
        console.error("Error fetching slides:", error);
      }
    };
    fetchSlides();
  }, []);

  const prevSlide = () => {
    setPreviousIndex(currentIndex);
    setDirection(-1);
    setCurrentIndex((prevIndex) =>
      prevIndex === 0 ? slides.length - 1 : prevIndex - 1
    );
  };

  const nextSlide = () => {
    setPreviousIndex(currentIndex);
    setDirection(1);
    setCurrentIndex((prevIndex) =>
      prevIndex === slides.length - 1 ? 0 : prevIndex + 1
    );
  };

  useEffect(() => {
    const autoSlide = setInterval(() => {
      nextSlide();
    }, 5000);
    return () => clearInterval(autoSlide);
  }, [currentIndex, slides.length]);

  if (slides.length === 0 || isLoading) {
    return (
      <div className="relative w-full h-[90vh] bg-gray-800 flex items-center justify-center">
        <div className="w-16 h-16 border-4 border-blue-500 border-t-transparent rounded-full animate-spin"></div>
      </div>
    );
  }

  return (
    <div className="relative w-full h-[90vh] overflow-hidden" ref={containerRef}>
      {/* Fixed background layer to prevent the flicker/jump */}
      <div 
        className="absolute inset-0 w-full h-full bg-black"
        style={{
          backgroundImage: `linear-gradient(135deg, #000 0%, #0a2463 100%)`,
        }}
      />
      
      <AnimatePresence initial={false} mode="popLayout">
        <motion.div
          key={currentIndex}
          className="absolute inset-0 w-full h-full"
          initial={{ 
            x: direction > 0 ? "100%" : "-100%",
            opacity: 0.5
          }}
          animate={{ 
            x: 0,
            opacity: 1 
          }}
          exit={{ 
            x: direction > 0 ? "-100%" : "100%",
            opacity: 0.5,
            transition: { 
              type: "tween", 
              ease: "easeInOut", 
              duration: 0.6 
            }
          }}
          transition={{ 
            type: "tween", 
            ease: "easeInOut", 
            duration: 0.6 
          }}
        >
          <div 
            className="absolute inset-0 w-full h-full"
            style={{
              backgroundImage: `url(${slides[currentIndex].image_url})`,
              backgroundPosition: "center",
              backgroundSize: "cover",
              backgroundRepeat: "no-repeat",
              willChange: "transform", // Optimize for animations
            }}
          />
          <div className="absolute inset-0 bg-black opacity-40"></div>
        </motion.div>
      </AnimatePresence>

      <div className="absolute inset-0 flex flex-col justify-center items-center text-white px-4 md:px-10 z-2 bg-gradient-to-b from-black/50 via-black/30 to-transparent pointer-events-none">
        <AnimatePresence mode="wait">
          <motion.div
            key={`content-${currentIndex}`}
            className="text-center pointer-events-auto"
            initial={{ opacity: 0, y: 20 }}
            animate={{ opacity: 1, y: 0 }}
            exit={{ opacity: 0, y: -20 }}
            transition={{ duration: 0.5, delay: 0.1 }}
          >
            <motion.h1
              className="text-3xl md:text-8xl font-bold text-center mb-4"
              style={{
                fontFamily: "Canela Deck Web, serif",
                fontWeight: "400",
                letterSpacing: "-0.1px",
                lineHeight: "1.15",
                textShadow: "0 4px 6px rgba(0, 0, 0, 0.3)"
              }}
            >
              {slides[currentIndex].title}
            </motion.h1>
            <motion.p
              className="mt-2 text-lg md:text-2xl text-center max-w-[80%] mx-auto"
              style={{ 
                letterSpacing: "-.1px", 
                lineHeight: "1.5", 
                fontWeight: "300",
                textShadow: "0 2px 4px rgba(0, 0, 0, 0.2)"
              }}
            >
              {slides[currentIndex].subtext}
            </motion.p>
            {slides[currentIndex].link && (
              <motion.div
                initial={{ opacity: 0, y: 10 }}
                animate={{ opacity: 1, y: 0 }}
                transition={{ delay: 0.3 }}
                className="mt-6"
              >
                <a
                  href={slides[currentIndex].link}
                  target="_blank"
                  rel="noopener noreferrer"
                  className="inline-block"
                >
                  <button className="px-8 py-2 bg-white bg-opacity-20  rounded-md text-white text-lg border border-white/30 hover:bg-white/30 hover:border-white/50 transform transition-all duration-300 ease-in-out hover:scale-105 hover:shadow-lg">
                    See More
                  </button>
                </a>
              </motion.div>
            )}
          </motion.div>
        </AnimatePresence>
      </div>

      <button
        className="absolute left-4 top-1/2 transform -translate-y-1/2 z-20 bg-black/30 backdrop-blur-lg text-white p-3 rounded-full focus:outline-none hover:bg-black/50 transition-all duration-300"
        onClick={prevSlide}
        aria-label="Previous slide"
      >
        <svg xmlns="http://www.w3.org/2000/svg" className="h-6 w-6" fill="none" viewBox="0 0 24 24" stroke="currentColor">
          <path strokeLinecap="round" strokeLinejoin="round" strokeWidth={2} d="M15 19l-7-7 7-7" />
        </svg>
      </button>

      <button
        className="absolute right-4 top-1/2 transform -translate-y-1/2 z-20 bg-black/30 backdrop-blur-lg text-white p-3 rounded-full focus:outline-none hover:bg-black/50 transition-all duration-300"
        onClick={nextSlide}
        aria-label="Next slide"
      >
        <svg xmlns="http://www.w3.org/2000/svg" className="h-6 w-6" fill="none" viewBox="0 0 24 24" stroke="currentColor">
          <path strokeLinecap="round" strokeLinejoin="round" strokeWidth={2} d="M9 5l7 7-7 7" />
        </svg>
      </button>
    </div>
  );
};

export default ImageSlider;