import React, { useState } from 'react';
import {
  Menu,
  LogOut,
  ChevronLeft,
  ChevronRight,
  Users,
  ShoppingBag,
  FileText,
  Settings,
  MessageSquare,
  HeartPulse,
  Building,
  GraduationCap,
  NotebookPen,
  Pen,
  LinkIcon,
  NewspaperIcon,
  Image,
  MedalIcon,
  PinIcon,
  List,
  Clock1,
  AlertCircle,
  DollarSign,
  LoaderPinwheel,
  Images,
  ImagesIcon,
  Calendar,
  Download,
  Dumbbell,
  ImageIcon,
  Workflow
} from 'lucide-react';

// Products Module
// import ProductsModule from './adminModules/productsModule';
import FacultyManager from './adminModules/facultyModule';
import StaffManager from './adminModules/staffModule';
import DoctorsManager from './adminModules/doctorsModule';
import CounsellingManager from './adminModules/counsellingModule';
import HostelsManager from './adminModules/hostelsModule';
import ShopsManager from './adminModules/shopsModule';
import PositionsManager from './adminModules/positionsModule';
import LinksManager from './adminModules/linksModule';
import NewsManager from './adminModules/newsModule';
import SlidesManager from './adminModules/slidesModule';
import AchievementsManager from './adminModules/acheivementsModule';
import NoticesManager from './adminModules/noticesModule';
import EventsManager from './adminModules/eventsModule';
import EventImagesManager from './adminModules/eventImagesModule';
import DownloadsManager from './adminModules/downloadsModule'
// Blog Posts Module
import { AdminAuth } from './components/AdminAuth';
import { useSelector } from 'react-redux'
import MarqueeManager from './adminModules/marqueeModule';
import ImportantAnnouncementsManager from './adminModules/redAnnouncementsModule';
import TendersManger from './adminModules/tendersModule';
import CalendarsManager from './adminModules/calendarsModule';
import GymkhanaNotificationsManager from './adminModules/gymkhanaNotificationsModule';
import FacultyPicManager from './adminModules/facultyPicModule';
import JobsManager from './adminModules/jobsModule';
// Main Admin Portal Component
const Page = () => {
  const [sidebarOpen, setSidebarOpen] = useState(true);
  const [activeModule, setActiveModule] = useState('faculty');

  const modules = [
    { id: 'faculty', name: 'Faculty', icon: GraduationCap },
    { id: 'links', name: 'Manage Links', icon: LinkIcon },
    { id: 'staff', name: 'Manage Staff', icon: Users },
    { id: 'positions', name: 'Manage Positions', icon: Pen },
    { id: 'hostels', name: 'Hostel Management', icon: Building },
    { id: 'counselling', name: 'Student Counselling', icon: NotebookPen },
    { id: 'shops', name: 'Institue Shops', icon: ShoppingBag },
    { id: 'doctors', name: 'PHC Doctors', icon: HeartPulse },
    { id: 'marquee', name: 'Marquee', icon: List },
    { id: 'ImportantAnnouncements', name: 'Important Announcements', icon: AlertCircle },
    { id: 'GymkhanaNotifications', name: 'Gymkhana Notifications', icon: Dumbbell },
    { id: 'tenders', name: 'Tenders', icon: DollarSign },
    { id: 'jobs', name: 'Jobs', icon: Workflow },
    { id: 'calendars', name: 'Calendars', icon: Calendar },
    { id: 'slides', name: 'Home Page Slides', icon: Image},
    { id: 'news', name: 'News', icon: NewspaperIcon },
    { id: 'achievements', name: 'Achievements', icon: MedalIcon },
    { id: 'notices', name: 'Notices', icon: PinIcon },
    { id: 'events', name: 'Events', icon: LoaderPinwheel },
    { id: 'eventImages', name: 'Event Media', icon: ImagesIcon },
    { id: 'downloads', name: 'Downloads Page', icon: Download },
    { id: 'facultyPic', name: 'Faculty Pictures', icon: ImageIcon },
  ];
  const [profileOpen, setProfileOpen] = useState(false);
  const renderModule = () => {
    switch (activeModule) {
      // case 'products':
      //   return <ProductsModule />;
      case 'faculty':
        return <FacultyManager />;
      case 'facultyPic':
        return <FacultyPicManager />;
      case 'staff':
        return <StaffManager />;
      case 'doctors':
        return <DoctorsManager />;
      case 'counselling':
        return <CounsellingManager />;
      case 'hostels':
        return <HostelsManager />;
      case 'shops':
        return <ShopsManager />;
      case 'positions':
        return <PositionsManager />;
      case 'links':
        return <LinksManager />;
      case 'slides':
        return <SlidesManager />;
      case 'news':
        return <NewsManager />;
      case 'achievements':
        return <AchievementsManager />;
      case 'notices':
        return <NoticesManager />;
      case 'marquee':
        return <MarqueeManager />;
      case 'ImportantAnnouncements':
        return <ImportantAnnouncementsManager />;
      case 'GymkhanaNotifications':
        return <GymkhanaNotificationsManager />;
      case 'tenders':
        return <TendersManger />;
      case 'jobs':
        return <JobsManager />;
      case 'calendars':
        return <CalendarsManager/>
      case 'events':
        return <EventsManager />;
      case 'eventImages':
        return <EventImagesManager />;
      case 'downloads':
        return <DownloadsManager />;
      default:
        return <div className='text-lg'>WELCOME TO IIITDMJ WEBSITE ADMIN PORTAL !!!</div>;
    }
  };
  const { sessionID, sessionType } = useSelector((state) => state.session)
  return (
    <div className="min-h-screen bg-gray-100">
      {/* Sidebar */}
      <div
        className={`overflow-y-scroll fixed top-0 left-0 h-full bg-white shadow-lg transition-all duration-300 ${sidebarOpen ? 'w-64' : 'w-20'
          }`}
      >
        <div className="absolute flex items-center justify-between p-4">
          {sidebarOpen && <h1 className="text-xl font-bold">Admin Portal</h1>}
          <button
            onClick={() => setSidebarOpen(!sidebarOpen)}
            className="p-2 rounded-lg hover:bg-gray-100"
          >
            {sidebarOpen ? (
              <ChevronLeft className="h-6 w-6" />
            ) : (
              <ChevronRight className="h-6 w-6" />
            )}
          </button>
        </div>
        <nav className="mt-20">
          {modules.map((module) => (
            <button
              key={module.id}
              onClick={() => setActiveModule(module.id)}
              className={`w-full flex items-center px-4 py-3 text-gray-700 hover:bg-gray-100 ${activeModule === module.id ? 'bg-blue-50 text-blue-600' : ''
                }`}
            >
              <module.icon className="h-5 w-5" />
              {sidebarOpen && <span className="ml-3">{module.name}</span>}
            </button>
          ))}
        </nav>
      </div>

      {/* Main Content */}
      <div
        className={`transition-all duration-300 ${sidebarOpen ? 'ml-64' : 'ml-20'
          }`}
      >
        {/* Header */}
        <header className="bg-white shadow-sm">
          <div className="flex justify-between items-center px-6 py-4">
            <h2 className="text-xl font-semibold text-gray-800">
              {modules.find(m => m.id === activeModule)?.name || 'Dashboard'}
            </h2>
            <div className="flex items-center space-x-4">
              <div className="relative">
                <button
                  onClick={() => setProfileOpen(!profileOpen)}
                  className="flex items-center space-x-3 focus:outline-none"
                >
                  <div className="w-10 h-10 rounded-full bg-gray-200 flex items-center justify-center">
                    <Users className="w-6 h-6 text-gray-500" />
                  </div>
                  <div className="hidden md:block text-left">
                    <div className="text-sm font-semibold">John Doe</div>
                    <div className="text-xs text-gray-500">Administrator</div>
                  </div>
                </button>
                {profileOpen && (
                  <div className="absolute right-0 mt-2 w-48 bg-white rounded-lg shadow-lg py-2">
                    <button
                      onClick={() => {
                        // Handle profile click
                        setProfileOpen(false);
                      }}
                      className="px-4 py-2 text-sm text-gray-700 hover:bg-gray-100 w-full text-left flex items-center"
                    >
                      <Users className="w-4 h-4 mr-2" />
                      Profile
                    </button>
                    <button
                      onClick={() => {
                        // Handle settings click
                        setProfileOpen(false);
                      }}
                      className="px-4 py-2 text-sm text-gray-700 hover:bg-gray-100 w-full text-left flex items-center"
                    >
                      <Settings className="w-4 h-4 mr-2" />
                      Settings
                    </button>
                    <hr className="my-2" />
                    <button
                      onClick={() => {
                        // Handle logout
                        setProfileOpen(false);
                      }}
                      className="px-4 py-2 text-sm text-red-600 hover:bg-gray-100 w-full text-left flex items-center"
                    >
                      <LogOut className="w-4 h-4 mr-2" />
                      Logout
                    </button>
                  </div>
                )}
              </div>
            </div>
          </div>
        </header>

        {/* Main Content Area */}
        <main className="p-6">
          <div className="bg-white rounded-lg shadow-sm p-6">
            {renderModule()}
          </div>
        </main>
      </div>

      {/* Mobile Menu Toggle */}
      <button
        onClick={() => setSidebarOpen(!sidebarOpen)}
        className="fixed lg:hidden bottom-4 right-4 p-3 bg-blue-600 text-white rounded-full shadow-lg hover:bg-blue-700"
      >
        <Menu className="h-6 w-6" />
      </button>
    </div>
  );
}
function AdminPortal() {
  const { sessionID, sessionType } = useSelector((state) => state.session)

  return (
    <>
      {
        sessionStorage.getItem('admin') === "admin@gmail.com" || (sessionID === "admin@gmail.com" && sessionType === "admin") || localStorage.getItem("testing")
          ?
          <Page />
          :
          <AdminAuth />
      }
    </>)
};


export default AdminPortal;