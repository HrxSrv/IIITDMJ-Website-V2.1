import React, { useEffect, useState } from "react";
import { useParams } from "react-router-dom";
import {
  ExternalLink,
  Calendar,
  MapPin,
  Clock,
  X,
  ChevronLeft,
  ChevronRight,
  Youtube,
  Award,
  Users,
  FileText,
  Info
} from "lucide-react";
import { format } from "date-fns";
import { motion } from "framer-motion";
import axiosInstance from "../../../axios";

const container = {
  hidden: { opacity: 0 },
  show: {
    opacity: 1,
    transition: {
      staggerChildren: 0.1,
    },
  },
};

const item = {
  hidden: { opacity: 0, y: 20 },
  show: { opacity: 1, y: 0 },
};

const isYouTubeUrl = (url) => {
  const youTubeRegex = /^(https?:\/\/)?(www\.)?(youtube\.com|youtu\.?be)\/.+$/;
  return youTubeRegex.test(url);
};

const getYouTubeVideoId = (url) => {
  try {
    return new URL(url).searchParams.get('v');
  } catch (error) {
    const regExp = /^.*(youtu.be\/|v\/|u\/\w\/|embed\/|watch\?v=|&v=)([^#&?]*).*/;
    const match = url.match(regExp);
    return (match && match[2].length === 11) ? match[2] : null;
  }
};

const ConvocationDetailPage = () => {
  const { id } = useParams();
  const [convocation, setConvocation] = useState(null);
  const [images, setImages] = useState([]);
  const [videos, setVideos] = useState([]);
  const [loading, setLoading] = useState(true);
  const [error, setError] = useState(null);
  const [currentImageIndex, setCurrentImageIndex] = useState(0);
  const [isCarouselOpen, setIsCarouselOpen] = useState(false);

  const fetchConvocationData = async () => {
    try {
      const response = await axiosInstance.get(`convocations/convocations/${id}`);
      setConvocation(response.data);
      
      // Process media if available
      if (response.data.media && response.data.media.length > 0) {
        // Separate videos and images
        const mediaItems = response.data.media;
        const videoItems = mediaItems.filter(item => isYouTubeUrl(item));
        const imageItems = mediaItems.filter(item => !isYouTubeUrl(item));
        
        setVideos(videoItems);
        setImages(imageItems);
      }
      
      setLoading(false);
    } catch (err) {
      console.error("Error fetching convocation data:", err);
      setError("Failed to fetch convocation details");
      setLoading(false);
    }
  };

  useEffect(() => {
    fetchConvocationData();
  }, [id]);

  const openCarousel = (index) => {
    setCurrentImageIndex(index);
    setIsCarouselOpen(true);
  };

  const closeCarousel = () => {
    setIsCarouselOpen(false);
  };

  const nextImage = () => {
    setCurrentImageIndex((prev) => (prev + 1) % images.length);
  };

  const previousImage = () => {
    setCurrentImageIndex(
      (prev) => (prev - 1 + images.length) % images.length
    );
  };

  if (loading) return <p className="flex justify-center items-center min-h-screen">Loading convocation details...</p>;
  if (error) return <p className="flex justify-center items-center min-h-screen text-red-500">{error}</p>;

  return (
    <div className="min-h-screen bg-gray-50">
      {/* Hero section with background image */}
      <div className="h-[50vh] relative">
        <div
          className="absolute inset-0 bg-cover bg-center"
          style={{ backgroundImage: `url(${convocation.background_image})` }}
        />
        <div className="absolute inset-0 bg-gradient-to-b from-black/80 to-transparent" />
        <div className="absolute bottom-0 left-0 right-0 p-8">
          <div className="container mx-auto">
            <h1 className="text-4xl font-bold text-white mb-4">{convocation.name}</h1>
            <div className="flex gap-6 text-white/90">
              <div className="flex items-center gap-2">
                <Calendar className="w-5 h-5" />
                <span>{format(new Date(convocation.date || Date.now()), "MMMM d, yyyy")}</span>
              </div>
              <div className="flex items-center gap-2">
                <MapPin className="w-5 h-5" />
                <span>{convocation.location}</span>
              </div>
            </div>
          </div>
        </div>
      </div>

      <div className="container mx-auto px-4 py-12">
        <motion.div
          variants={container}
          initial="hidden"
          animate="show"
          className="grid grid-cols-1 lg:grid-cols-3 gap-8"
        >
          {/* Main content column */}
          <div className="lg:col-span-2 space-y-6">
            {/* About section */}
            <motion.div
              variants={item}
              className="bg-white rounded-xl p-6 shadow-sm"
            >
              <h2 className="text-2xl font-semibold mb-4">About the Convocation</h2>
              <p className="text-gray-600 leading-relaxed">
                {convocation.description}
              </p>
              {convocation.read_more && (
                <div className="mt-4">
                  <h3 className="text-xl font-semibold mb-2">Read More</h3>
                  <p className="text-gray-600 leading-relaxed">{convocation.read_more}</p>
                </div>
              )}
            </motion.div>

            {/* Graduating Students section */}
            {convocation.graduating_students && convocation.graduating_students.length > 0 && (
              <motion.div
                variants={item}
                className="bg-white rounded-xl p-6 shadow-sm"
              >
                <div className="flex items-center gap-3 mb-4">
                  <Users className="w-6 h-6 text-blue-600" />
                  <h2 className="text-2xl font-semibold">Graduating Students</h2>
                </div>
                <div className="space-y-4">
                  {convocation.graduating_students.map((item, index) => (
                    <div key={index} className="bg-gray-50 p-4 rounded-lg">
                      <h3 className="font-medium text-lg">{item.title}</h3>
                      <a 
                        href={item.link}
                        target="_blank"
                        rel="noopener noreferrer"
                        className="text-blue-600 hover:text-blue-800 flex items-center gap-1 mt-2"
                      >
                        View List <ExternalLink className="w-4 h-4" />
                      </a>
                    </div>
                  ))}
                </div>
              </motion.div>
            )}

            {/* Medal Awardees section */}
            {convocation.medal_awardees && convocation.medal_awardees.length > 0 && (
              <motion.div
                variants={item}
                className="bg-white rounded-xl p-6 shadow-sm"
              >
                <div className="flex items-center gap-3 mb-4">
                  <Award className="w-6 h-6 text-amber-500" />
                  <h2 className="text-2xl font-semibold">Medal Awardees</h2>
                </div>
                <div className="space-y-4">
                  {convocation.medal_awardees.map((item, index) => (
                    <div key={index} className="bg-gray-50 p-4 rounded-lg">
                      <h3 className="font-medium text-lg">{item.title}</h3>
                      <a 
                        href={item.link}
                        target="_blank"
                        rel="noopener noreferrer"
                        className="text-blue-600 hover:text-blue-800 flex items-center gap-1 mt-2"
                      >
                        View Recipients <ExternalLink className="w-4 h-4" />
                      </a>
                    </div>
                  ))}
                </div>
              </motion.div>
            )}

            {/* Guidelines section */}
            {convocation.guidelines && convocation.guidelines.length > 0 && (
              <motion.div
                variants={item}
                className="bg-white rounded-xl p-6 shadow-sm"
              >
                <div className="flex items-center gap-3 mb-4">
                  <FileText className="w-6 h-6 text-green-600" />
                  <h2 className="text-2xl font-semibold">Guidelines</h2>
                </div>
                <div className="space-y-4">
                  {convocation.guidelines.map((item, index) => (
                    <div key={index} className="bg-gray-50 p-4 rounded-lg">
                      <h3 className="font-medium text-lg">{item.title}</h3>
                      <a 
                        href={item.link}
                        target="_blank"
                        rel="noopener noreferrer"
                        className="text-blue-600 hover:text-blue-800 flex items-center gap-1 mt-2"
                      >
                        Download <ExternalLink className="w-4 h-4" />
                      </a>
                    </div>
                  ))}
                </div>
              </motion.div>
            )}

            {/* Videos section */}
            {videos.length > 0 && (
              <motion.div
                variants={item}
                className="bg-white rounded-xl p-6 shadow-sm"
              >
                <div className="flex items-center gap-3 mb-4">
                  <Youtube className="w-6 h-6 text-red-600" />
                  <h2 className="text-2xl font-semibold">Convocation Videos</h2>
                </div>
                <div className="grid grid-cols-1 md:grid-cols-2 gap-6">
                  {videos.map((videoUrl, index) => (
                    <div key={index} className="space-y-2">
                      <div className="aspect-video rounded-lg overflow-hidden">
                        <iframe
                          width="100%"
                          height="100%"
                          src={`https://www.youtube.com/embed/${getYouTubeVideoId(videoUrl)}`}
                          title={`Convocation video ${index + 1}`}
                          frameBorder="0"
                          allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
                          allowFullScreen
                          className="w-full"
                        ></iframe>
                      </div>
                    </div>
                  ))}
                </div>
              </motion.div>
            )}

            {/* Images gallery section */}
            {images.length > 0 && (
              <motion.div
                variants={item}
                className="bg-white rounded-xl p-6 shadow-sm"
              >
                <h2 className="text-2xl font-semibold mb-4">Convocation Gallery</h2>
                <div className="grid grid-cols-2 md:grid-cols-3 gap-4">
                  {images.map((imageUrl, index) => (
                    <motion.div
                      key={index}
                      variants={item}
                      className="aspect-square rounded-lg overflow-hidden cursor-pointer"
                      onClick={() => openCarousel(index)}
                    >
                      <img
                        src={imageUrl}
                        alt={`Convocation photo ${index + 1}`}
                        className="w-full h-full object-cover hover:scale-105 transition-transform duration-300"
                      />
                    </motion.div>
                  ))}
                </div>
              </motion.div>
            )}
          </div>

          {/* Sidebar */}
          <div className="space-y-6">
            {/* Information card */}
            <motion.div
              variants={item}
              className="bg-white rounded-xl p-6 shadow-sm"
            >
              <div className="flex items-center gap-3 mb-4">
                <Info className="w-6 h-6 text-blue-600" />
                <h2 className="text-2xl font-semibold">Convocation Details</h2>
              </div>
              <div className="space-y-4">
                <div className="border-b pb-3">
                  <p className="text-gray-500 text-sm">Date</p>
                  <p className="font-medium">
                    {format(new Date(convocation.date || Date.now()), "MMMM d, yyyy")}
                  </p>
                </div>
                <div className="border-b pb-3">
                  <p className="text-gray-500 text-sm">Location</p>
                  <p className="font-medium">{convocation.location}</p>
                </div>
                {convocation.data && (
                  <div>
                    <p className="text-gray-500 text-sm">Additional Information</p>
                    <p className="font-medium">{convocation.data}</p>
                  </div>
                )}
              </div>
            </motion.div>

            {/* Any additional sidebar content */}
          </div>
        </motion.div>
      </div>

      {/* Carousel modal for full-screen image viewing */}
      {isCarouselOpen && (
        <div className="fixed inset-0 z-50 overflow-hidden" onClick={closeCarousel}>
          <div className="fixed inset-0 bg-black bg-opacity-90 transition-opacity" />
          
          <div className="fixed inset-0 flex items-center justify-center" onClick={(e) => e.stopPropagation()}>
            <button
              onClick={closeCarousel}
              className="absolute top-4 right-4 text-white hover:text-gray-300 z-50"
            >
              <X className="w-8 h-8" />
            </button>
            
            <button
              onClick={previousImage}
              className="absolute left-4 top-1/2 -translate-y-1/2 text-white hover:text-gray-300"
            >
              <ChevronLeft className="w-12 h-12" />
            </button>

            <div className="relative w-full max-w-4xl max-h-[80vh] flex items-center justify-center px-16">
              <img
                src={images[currentImageIndex]}
                alt={`Convocation photo ${currentImageIndex + 1}`}
                className="max-w-full max-h-[80vh] object-contain"
              />
            </div>

            <button
              onClick={nextImage}
              className="absolute right-4 top-1/2 -translate-y-1/2 text-white hover:text-gray-300"
            >
              <ChevronRight className="w-12 h-12" />
            </button>

            <div className="absolute bottom-4 left-1/2 -translate-x-1/2 text-white">
              {currentImageIndex + 1} / {images.length}
            </div>
          </div>
        </div>
      )}
    </div>
  );
};

export default ConvocationDetailPage;