import { CircleHelp } from "lucide-react";
import { MessageCircle } from "lucide-react";
import { TriangleAlert } from "lucide-react";
import { ShieldPlus } from "lucide-react";
import { Users } from "lucide-react";
import { Lock } from "lucide-react";
import { Dessert } from "lucide-react";
import { Play } from "lucide-react";
import { Database } from "lucide-react";
import { MapPin } from "lucide-react";
import {
  HeartPulse,
  Monitor,
  Download,
  Banknote,
  ShoppingCart,
  Utensils,
  Heart,
  Dumbbell,
  Activity,
} from "lucide-react";
import {
  Book,
  Briefcase,
  Clipboard,
  User,
  Laptop,
  Code,
  Palette,
  BookOpen,
  DollarSign,
  Settings,
  ClipboardCheck,
  Home,
  Layers,
} from "lucide-react";

export const Menus = [
  {
    name: "Home",
    subMenuGroups: [
      {
        items: [
          {
            name: "Go Home",
            icon: Book,
            href: "/",
          },
        ],
      },
    ],
  },
  {
    name: "Academics",
    gridCols: 3,
    subMenuGroups: [
      {
        heading: "PROGRAMMES",
        items: [
          {
            name: "B.Tech.",
            href: "/offeredprograms",
          },
          {
            name: "M.Tech.",
            href: "/offeredprograms",
          },
          {
            name: "B.Des.",
            href: "/offeredprograms",
          },
          {
            name: "M.Des.",
            href: "/offeredprograms",
          },
          {
            name: "Ph.D.",
            href: "/offeredprograms",
          },
          {
            name: "Integrated Master+Ph.D.",
            href: "/integratedmasters",
          },
          {
            name: "Special Part Time M.Tech./M.Des.",
            href: "/parttimeprograms",
          },
        ],
      },
      {
        heading: "ADMISSION",
        items: [
          {
            name: "Undergraduate programs",
            href: "/ugprograms",
          },
          {
            name: "Postgraduate Program",
            href: "/pgprograms",
          },
          {
            name: "Ph.D. Programs",
            href: "/phdprograms",
          },
          {
            name: "Fees Structure",
            href: "feestructure",
          },
          {
            name: "Seat Matrix 2024-25",
            href: "https://www.iiitdmj.ac.in/academics/download/Seat%20Matrix%202024-25.pdf",
          },
          {
            name: "Academic Guidelines (UG & PG)",
            href: "https://www.iiitdmj.ac.in/academics/download/Academic%20Guidelines_271017.pdf",
          },
          {
            name: "Academic Guidelines (Ph.D.)",
            href: "https://www.iiitdmj.ac.in/academics/download/Ph.D.%20Manual.pdf",
          },
          {
            name: "Curriculum",
            href: "/curriculum",
          },
        ],
      },
      {
        heading: "ACADEMIC LINKS",
        items: [
          { name: "Academic Calendar",
            href: "/academiccalander",
           },
          {
            name: "Time Table Sem I, 2024-25",
            href: "https://drive.google.com/file/d/1PTF1d6gE2RmSqp6sUWGgoLCp1NlvLGVM/view",
          },
          {
            name: "Guidelines - Time Table Sem I",
            href: "https://www.iiitdmj.ac.in/downloads/Guidelines-Timetable-Sem-I-2024-25.pdf",
          },
          { name: "Useful Information", href: "/usefulinformation" },
          {
            name: "Fee Refund Rule",
            href: "https://www.iiitdmj.ac.in/downloads/Notification_Revised_refund_rule.pdf",
          },
          {
            name: "Proposal/Modification for a Course",
            href: "https://docs.google.com/forms/d/1Tlg6a0SPnNAa--A81yKsNet19n-hw9fas1P1QdHpzTI",
          },
          {
            name: "Proposal for a New Elective",
            href: "https://docs.google.com/forms/d/1xcVmD4BvURRppXtWBnNpdHIPhMSOh_3xvxu_ovbkJl8/viewform?edit_requested=true#responses",
          },
          {
            name: "Course & Modification in a Course",
            href: "https://docs.google.com/forms/d/1-bNPq1bkzlOCv6O8gI7nUcnJrIITqKAkAG3CrdQrHoU",
          },
          { name: "Form for submission of thesis" },
          { name: "Convocation", href: "/convocations" },
        ],
      },
      {
        heading: "IMPORTANT LINKS",
        items: [
          {
            name: "Important Forms",
            href: "/importantForms",
          },

          { name: "Internal Circulars", href: "/internalcirculars" },
          { name: "External Circulars", href: "/externalcirculars" },
          {
            name: "Study In India",
            href: "https://www.studyinindia.gov.in/admission/registrations",
          },
        ],
      },
    ],
  },
  {
    name: "Administration",
    subMenuGroups: [
      {
        items: [
          {
            name: "Board of Governors",
            icon: CircleHelp,
            href: "/boardofgoverners",
          },
          {
            name: "Finance Committee",
            icon: DollarSign,
            href: "/financecommittee",
          },
          {
            name: "General Administration",
            icon: Settings,
            href: "/generaladministration",
          },
          {
            name: "Other Administration",
            icon: ClipboardCheck,
            href: "/otheradministration",
          },
          {
            name: "Senate",
            icon: Users,
            href: "/senate",
          },
          {
            name: "Building Works Committee",
            icon: Home,
            href: "/buildingworkscommittee",
          },
          {
            name: "Administrative Structure",
            icon: Layers,
            href: "/administrativestructure",
          },
        ],
      },
    ],
    gridCols: 1,
  },
  {
    name: "Departments",
    subMenuGroups: [
      {
        items: [
          {
            name: "Computer Science & Engineering (CSE)",
            icon: Laptop,
            href: "http://cse.iiitdmj.ac.in/",
          },
          {
            name: "Electronics & Communication Engineering (ECE)",
            icon: Code,
            href: "https://www.iiitdmj.ac.in/ece.iiitdmj.ac.in/",
          },
          {
            name: "Design (Des)",
            icon: Palette,
            href: "http://design.iiitdmj.ac.in/",
          },
          {
            name: "Mechanical Engineering (ME)",
            icon: Settings,
            href: "https://www.iiitdmj.ac.in/me.iiitdmj.ac.in/",
          },
          {
            name: "Natural Sciences (NS)",
            icon: BookOpen,
            href: "https://www.iiitdmj.ac.in/ns.iiitdmj.ac.in/",
          },
          {
            name: "Liberal Arts (LA)",
            icon: Users,
            href: "https://www.iiitdmj.ac.in/la.iiitdmj.ac.in/",
          },
        ],
      },
    ],
  },
  {
    name: "Deans",
    subMenuGroups: [
      {
        items: [
          {
            name: "Dean Academics",
            icon: Laptop,
            href: "/deanacademics",
          },
          {
            name: "Dean Students",
            icon: User,
            href: "/deanstudents",
          },
          {
            name: "Dean RSPC",
            icon: Palette,
            href: "https://www.iiitdmj.ac.in/rspc.iiitdmj.ac.in/office.php?pid=7",
          },
          {
            name: "Dean P&D",
            icon: Settings,
            href: "/",
          },
        ],
      },
    ],
  },
  {
    name: "People",
    subMenuGroups: [
      {
        items: [
          {
            name: "Faculty",
            icon: Book,
            href: "/employee",
          },
          {
            name: "Research Staff",
            icon: Users,
            href: "/researchstaff",
          },
          {
            name: "Office Administration",
            icon: Clipboard,
            href: "/officeadministration",
          },
          {
            name: "Staff",
            icon: Briefcase,
            href: "/staff",
          },
        ],
      },
    ],
  },
  {
    name: "Students",
    subMenuGroups: [
      {
        items: [
          {
            name: "Students Portal",
            icon: Book,
            href: "http://fusion.iiitdmj.ac.in:8000/",
          },
          {
            name: "Placement",
            icon: Briefcase,
            href: "https://www.iiitdmj.ac.in/placement.iiitdmj.ac.in/",
          },
          {
            name: "Gymkhana",
            icon: Dumbbell,
            href: "/gymkhana",
          },
          {
            name: "Activities",
            icon: Activity,
            href: "/activities",
          },
          {
            name: "Counselling",
            icon: Heart,
            href: "/counselling",
          },
          {
            name: "Hostel",
            icon: Home,
            href: "/hostels",
          },
          {
            name: "Alumni Cell",
            icon: Users,
            href: "https://alumni.iiitdmj.ac.in/",
          },
          {
            name: "Student Mess",
            icon: Utensils,
            href: "https://www.iiitdmj.ac.in/mess.iiitdmj.ac.in/",
          },
        ],
      },
    ],
  },
  {
    name: "Facilities",
    subMenuGroups: [
      {
        items: [
          {
            name: "Primary Health Center",
            icon: HeartPulse,
            href: "/primaryhealthcentre",
          },
          {
            name: "Library",
            icon: Book,
            href: "http://web.iiitdmj.ac.in/library.html",
          },
          {
            name: "Computer Center",
            icon: Monitor,
            href: "https://www.iiitdmj.ac.in/cc.iiitdmj.ac.in/",
          },
          {
            name: "Bank and ATM",
            icon: Banknote,
            href: "https://www.iiitdmj.ac.in/downloads/Banking%20Facilities%20in%20PDPM.pdf",
          },
          {
            name: "Shops In Campus",
            icon: ShoppingCart,
            href: "/shopsincampus",
          },
          {
            name: "Downloads",
            icon: Download,
            href: "/downloads",
          },
        ],
      },
    ],
  },
  {
    name: "Research",
    href: "https://www.iiitdmj.ac.in/rspc.iiitdmj.ac.in/",
  },
];
