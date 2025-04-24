import React, { useState, useEffect, useMemo } from 'react';
import { Calendar, MapPin, ChevronRight, Loader, Search, SlidersHorizontal } from 'lucide-react';
import axiosInstance from '../../../axios';
import PageHeader from "../../../components/PageHeader";
import { useNavigate } from 'react-router-dom'; // Import useNavigate

export default function ConvocationsPage() {
  const [convocations, setConvocations] = useState([]);
  const [loading, setLoading] = useState(true);
  const [error, setError] = useState(null);
  const [searchTerm, setSearchTerm] = useState('');
  const [sortOption, setSortOption] = useState('date-desc');
  const navigate = useNavigate(); // Initialize useNavigate

  useEffect(() => {
    const fetchConvocations = async () => {
      try {
        setLoading(true);
        const response = await axiosInstance.get('/convocations/convocations');
        setConvocations(response.data);
      } catch (err) {
        setError("Failed to load convocations. Please try again later.");
        console.error("Error fetching convocations:", err);
      } finally {
        setLoading(false);
      }
    };

    fetchConvocations();
  }, []);

  // Extract year from convocation name or data
  const extractYear = (convocation) => {
    const nameMatch = convocation.name.match(/\d+/);
    if (nameMatch) return nameMatch[0];

    const dateMatch = convocation.data.match(/\d{4}/);
    if (dateMatch) return dateMatch[0];

    return "N/A";
  };

  // Filter and sort convocations
  const filteredAndSortedConvocations = useMemo(() => {
    let filtered = [...convocations];

    if (searchTerm.trim()) {
      const term = searchTerm.toLowerCase();
      filtered = filtered.filter(
        convocation =>
          convocation.name.toLowerCase().includes(term) ||
          convocation.location.toLowerCase().includes(term) ||
          convocation.data.toLowerCase().includes(term) ||
          extractYear(convocation).includes(term)
      );
    }

    return filtered.sort((a, b) => {
      switch (sortOption) {
        case 'date-asc':
          return new Date(a.data) - new Date(b.data);
        case 'date-desc':
          return new Date(b.data) - new Date(a.data);
        case 'name-asc':
          return a.name.localeCompare(b.name);
        case 'name-desc':
          return b.name.localeCompare(a.name);
        default:
          return 0;
      }
    });
  }, [convocations, searchTerm, sortOption]);

  const navigateToConvocation = (id) => {
    navigate(`/convocationPage/${id}`); // Use navigate to go to the specific convocation page
  };

  if (loading) {
    return (
      <div className="flex flex-col items-center justify-center min-h-screen bg-gray-50">
        <Loader className="w-12 h-12 text-blue-600 animate-spin" />
        <p className="mt-4 text-lg text-gray-700">Loading convocations...</p>
      </div>
    );
  }

  if (error) {
    return (
      <div className="flex flex-col items-center justify-center min-h-screen bg-gray-50">
        <div className="p-6 bg-white rounded-lg shadow-lg text-center">
          <h2 className="text-xl font-bold text-red-600 mb-2">Error</h2>
          <p className="text-gray-700">{error}</p>
          <button
            className="mt-4 px-4 py-2 bg-blue-600 text-white rounded-md hover:bg-blue-700 transition"
            onClick={() => window.location.reload()}
          >
            Retry
          </button>
        </div>
      </div>
    );
  }

  const crumbs = [{crumb: "Convocations", link:"#"}];

  return (
    <div className="min-h-screen bg-white">
      <PageHeader breadCrumbs={crumbs} title={"Convocations at a glance"} />

      <div className="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8 py-8">
        {/* Search and filter bar */}
        <div className="mb-8 flex flex-col md:flex-row gap-4 justify-between">
          <div className="relative flex-grow max-w-md">
            <div className="absolute inset-y-0 left-0 pl-3 flex items-center pointer-events-none">
              <Search className="h-5 w-5 text-gray-400" />
            </div>
            <input
              type="text"
              className="block w-full pl-10 pr-3 py-2 border border-gray-300 rounded-md leading-5 bg-white placeholder-gray-500 focus:outline-none focus:ring-2 focus:ring-blue-500 focus:border-blue-500 sm:text-sm"
              placeholder="Search convocations..."
              value={searchTerm}
              onChange={(e) => setSearchTerm(e.target.value)}
            />
          </div>

          <div className="flex items-center">
            <SlidersHorizontal className="h-5 w-5 text-gray-400 mr-2" />
            <select
              className="block w-full pl-3 pr-10 py-2 text-base border border-gray-300 focus:outline-none focus:ring-2 focus:ring-blue-500 focus:border-blue-500 sm:text-sm rounded-md"
              value={sortOption}
              onChange={(e) => setSortOption(e.target.value)}
            >
              <option value="date-desc">Newest First</option>
              <option value="date-asc">Oldest First</option>
              <option value="name-asc">Name (A-Z)</option>
              <option value="name-desc">Name (Z-A)</option>
            </select>
          </div>
        </div>

        {filteredAndSortedConvocations.length === 0 ? (
          <div className="text-center py-16 bg-gray-50 rounded-lg">
            <p className="text-lg text-gray-700">No convocations match your search.</p>
          </div>
        ) : (
          <div className="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-6">
            {filteredAndSortedConvocations.map((convocation) => (
              <div
                key={convocation.id}
                className="bg-white overflow-hidden rounded-lg shadow-md transition duration-200 hover:shadow-lg border border-gray-100 cursor-pointer" // Added cursor-pointer
                onClick={() => navigateToConvocation(convocation.id)} // Added onClick handler
              >
                {/* Image section */}
                <div className="relative h-48 w-full overflow-hidden">
                  <img
                    src={convocation.background_image || "/api/placeholder/400/300"}
                    alt={convocation.name}
                    className="w-full h-full object-cover transition duration-300 hover:scale-105"
                  />
                  <div className="absolute top-4 left-4">
                    <div className="bg-yellow-500 text-white rounded-full px-3 py-1 text-sm font-semibold">
                      {extractYear(convocation)}
                    </div>
                  </div>
                </div>

                {/* Text content section */}
                <div className="p-5">
                  <h3 className="text-xl font-semibold text-gray-900 mb-3">{convocation.name}</h3>

                  <div className="space-y-2 mb-4">
                    <div className="flex items-center text-gray-600">
                      <Calendar className="w-4 h-4 mr-2 flex-shrink-0" />
                      <span className="text-sm">{convocation.data}</span>
                    </div>

                    <div className="flex items-center text-gray-600">
                      <MapPin className="w-4 h-4 mr-2 flex-shrink-0" />
                      <span className="text-sm">{convocation.location}</span>
                    </div>
                  </div>

                  <div className="flex items-center text-blue-600 mt-2 text-sm font-medium group">
                    <span>View Details</span>
                    <ChevronRight className="w-4 h-4 ml-1 transition-transform group-hover:translate-x-1" />
                  </div>
                </div>
              </div>
            ))}
          </div>
        )}
      </div>
    </div>
  );
}