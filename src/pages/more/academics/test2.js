import React from 'react';
import { BookOpen, GraduationCap, School, ChevronRight, Users, Home, Table2, FileText, AlertCircle } from 'lucide-react';
import { Link } from 'react-router-dom';
import { BarChart, Bar, XAxis, YAxis, CartesianGrid, Tooltip, ResponsiveContainer } from 'recharts';
import PageHeader from "../../../components/PageHeader";

const Test = () => {
  const crumbs = [{ crumb: "Programme", link: "#" }];
  
  const seatsData = [
    { name: 'CSE (AI/ML)', seats: 20 },
    { name: 'CSE (Data Science)', seats: 20 },
    { name: 'ECE (Comm.)', seats: 10 },
    { name: 'ECE (VLSI)', seats: 10 },
    { name: 'ECE (Power)', seats: 10 },
    { name: 'ME (Design)', seats: 10 },
    { name: 'ME (CAD/CAM)', seats: 10 },
    { name: 'Smart Mfg.', seats: 10 },
    { name: 'Mechatronics', seats: 10 },
    { name: 'Design', seats: 30 },
  ];

  return (
    <div className="min-h-screen bg-gray-50">
      <PageHeader breadCrumbs={crumbs} title={"Offered Programmes"} />

      <div className="container mx-auto px-4 py-8">
        <div className="grid grid-cols-1 lg:grid-cols-12 gap-8">
          {/* Main Content - 9 columns */}
          <div className="lg:col-span-9">
            {/* Undergraduate Section */}
            <div className="bg-white rounded-xl shadow-lg p-8 mb-8">
              <div className="flex items-center mb-6">
                <BookOpen className="w-8 h-8 text-blue-600 mr-4" />
                <h2 className="text-2xl font-bold">Undergraduate Programme</h2>
              </div>
              
              <p className="mb-6 font-medium">
                Institute offers Four Year Undergraduate degree (B.Tech.) programme in:
              </p>

              <div className="grid grid-cols-1 md:grid-cols-2 gap-4 mb-6">
                {[
                  'Computer Science & Engineering',
                  'Electronics & Communication Engineering',
                  'Design',
                  'Mechanical Engineering',
                  'Smart Manufacturing'
                ].map((program) => (
                  <div key={program} className="flex items-center p-4 bg-gray-50 rounded-lg hover:bg-blue-50 transition-colors">
                    <School className="w-5 h-5 text-blue-600 mr-3" />
                    <span className="font-medium">{program}</span>
                  </div>
                ))}
              </div>

              <div className="bg-blue-50 p-6 rounded-lg mb-6">
                <h3 className="text-lg font-semibold mb-4">
                  Learning is based on real-world situations in different sectors:
                </h3>
                <div className="grid grid-cols-1 sm:grid-cols-2 gap-3">
                  <div className="flex space-x-8">
                    <ul className="space-y-3">
                      {[
                        'Automobile sector',
                        'Aerospace and Defence Sector',
                        'Industrial Machinery Sector',
                        'Engineering Services Sector',
                        'High-tech Electronics',
                        'Consumer Durables / Life-style Products'
                      ].map((area) => (
                        <li key={area} className="flex items-center">
                          <ChevronRight className="w-4 h-4 text-blue-600 mr-2 flex-shrink-0" />
                          <span>{area}</span>
                        </li>
                      ))}
                    </ul>
                    <div className="hidden md:block">
                      <img
                        src="/api/placeholder/400/320"
                        alt="Programs illustration"
                        className="rounded-lg object-cover"
                      />
                    </div>
                  </div>
                </div>
              </div>
            </div>

            <div className="bg-white rounded-xl shadow-lg p-8 mb-8">
  <div className="flex items-center mb-6">
    <BookOpen className="w-8 h-8 text-blue-600 mr-4" />
    <h2 className="text-2xl font-bold">PHD Programme</h2>
  </div>
  <p className="mb-6 font-medium">
    Institute offers Four Year Undergraduate degree (B.Tech.) programme in:
  </p>
  <div className="grid grid-cols-1 md:grid-cols-2 gap-4 mb-6">
    {['Computer Science & Engineering', 'Electronics & Communication Engineering', 'Design', 'Mechanical Engineering', 'Smart Manufacturing'].map((program) => (
      <div key={program} className="flex items-center p-4 bg-gray-50 rounded-lg hover:bg-blue-50 transition-colors">
        <School className="w-5 h-5 text-blue-600 mr-3" />
        <span className="font-medium">{program}</span>
      </div>
    ))}
  </div>
  <div className="overflow-x-auto">
    <table className="w-full border-collapse">
      <thead>
        <tr className="bg-gray-100">
          <th className="border p-3 text-left">Program</th>
          <th className="border p-3 text-left">Duration</th>
          <th className="border p-3 text-left">Intake</th>
          <th className="border p-3 text-left">Eligibility</th>
        </tr>
      </thead>
      <tbody>
        <tr>
          <td className="border p-3">Computer Science & Engineering</td>
          <td className="border p-3">4 Years</td>
          <td className="border p-3">120 seats</td>
          <td className="border p-3">10+2 with PCM</td>
        </tr>
        <tr>
          <td className="border p-3">Electronics & Communication Engineering</td>
          <td className="border p-3">4 Years</td>
          <td className="border p-3">90 seats</td>
          <td className="border p-3">10+2 with PCM</td>
        </tr>
        <tr>
          <td className="border p-3">Design</td>
          <td className="border p-3">4 Years</td>
          <td className="border p-3">60 seats</td>
          <td className="border p-3">10+2 with any stream</td>
        </tr>
        <tr>
          <td className="border p-3">Mechanical Engineering</td>
          <td className="border p-3">4 Years</td>
          <td className="border p-3">90 seats</td>
          <td className="border p-3">10+2 with PCM</td>
        </tr>
        <tr>
          <td className="border p-3">Smart Manufacturing</td>
          <td className="border p-3">4 Years</td>
          <td className="border p-3">60 seats</td>
          <td className="border p-3">10+2 with PCM</td>
        </tr>
      </tbody>
    </table>
  </div>
</div>

            {/* Postgraduate Section */}
            <div className="bg-white rounded-xl shadow-lg p-8">
              <div className="flex items-center mb-6">
                <GraduationCap className="w-8 h-8 text-blue-600 mr-4" />
                <h2 className="text-2xl font-bold">Postgraduate Programme</h2>
              </div>

              {/* M.Tech Table */}
              <div className="mb-8">
                <h3 className="text-xl font-semibold mb-4">M.Tech. Seats and Specializations</h3>
                <div className="overflow-x-auto">
                  <table className="w-full border-collapse">
                    <thead className="bg-gray-50">
                      <tr>
                        <th className="border px-4 py-2 text-left">Discipline</th>
                        <th className="border px-4 py-2 text-left">Specialization</th>
                        <th className="border px-4 py-2 text-center">Number of Seats</th>
                      </tr>
                    </thead>
                    <tbody>
                      <tr>
                        <td className="border px-4 py-2" rowSpan="2">Computer Science & Engineering (CSE)</td>
                        <td className="border px-4 py-2">AI and ML</td>
                        <td className="border px-4 py-2 text-center">20</td>
                      </tr>
                      <tr>
                        <td className="border px-4 py-2">Data Science</td>
                        <td className="border px-4 py-2 text-center">20</td>
                      </tr>
                      <tr>
                        <td className="border px-4 py-2" rowSpan="3">Electronics & Communication Engineering (ECE)</td>
                        <td className="border px-4 py-2">Communication System Design</td>
                        <td className="border px-4 py-2 text-center">10</td>
                      </tr>
                      <tr>
                        <td className="border px-4 py-2">Nanoelectronics and VLSI Design</td>
                        <td className="border px-4 py-2 text-center">10</td>
                      </tr>
                      <tr>
                        <td className="border px-4 py-2">Power and Control</td>
                        <td className="border px-4 py-2 text-center">10</td>
                      </tr>
                      <tr>
                        <td className="border px-4 py-2" rowSpan="2">Mechanical Engineering (ME)</td>
                        <td className="border px-4 py-2">Design</td>
                        <td className="border px-4 py-2 text-center">10</td>
                      </tr>
                      <tr>
                        <td className="border px-4 py-2">CAD/CAM</td>
                        <td className="border px-4 py-2 text-center">10</td>
                      </tr>
                      <tr>
                        <td className="border px-4 py-2">Smart Manufacturing (SM)</td>
                        <td className="border px-4 py-2">Smart Manufacturing</td>
                        <td className="border px-4 py-2 text-center">10</td>
                      </tr>
                      <tr>
                        <td className="border px-4 py-2">Mechatronics (MT)</td>
                        <td className="border px-4 py-2">Mechatronics</td>
                        <td className="border px-4 py-2 text-center">10</td>
                      </tr>
                      <tr>
                        <td className="border px-4 py-2">Design (DS)</td>
                        <td className="border px-4 py-2">-</td>
                        <td className="border px-4 py-2 text-center">30</td>
                      </tr>
                    </tbody>
                  </table>
                </div>

                {/* Chart visualization */}
                <div className="mt-8 h-80">
                  <ResponsiveContainer width="100%" height="100%">
                    <BarChart data={seatsData}>
                      <CartesianGrid strokeDasharray="3 3" />
                      <XAxis dataKey="name" angle={-45} textAnchor="end" height={100} />
                      <YAxis />
                      <Tooltip />
                      <Bar dataKey="seats" fill="#3b82f6" />
                    </BarChart>
                  </ResponsiveContainer>
                </div>
              </div>

              {/* Important Notes */}
              <div className="bg-yellow-50 p-6 rounded-lg mb-8">
                <div className="flex items-center mb-4">
                  <AlertCircle className="w-6 h-6 text-yellow-600 mr-2" />
                  <h3 className="text-lg font-semibold">Important Notes</h3>
                </div>
                <ul className="space-y-2">
                  <li className="flex items-start">
                    <ChevronRight className="w-4 h-4 text-yellow-600 mr-2 mt-1" />
                    <span>The students will be given choice to choose specialization at the time of admission and will be allocated specialization based on GATE rank.</span>
                  </li>
                  <li className="flex items-start">
                    <ChevronRight className="w-4 h-4 text-yellow-600 mr-2 mt-1" />
                    <span>All admissions in M.Tech will be through CCMT</span>
                  </li>
                  <li className="flex items-start">
                    <ChevronRight className="w-4 h-4 text-yellow-600 mr-2 mt-1" />
                    <span>M.Des. admissions will be through Institute level counseling with 10 seats for GATE qualified and 20 seats for CEED qualified candidates.</span>
                  </li>
                </ul>
              </div>

              {/* Other Programs */}
              <div className="grid grid-cols-1 md:grid-cols-2 gap-6">
                <div className="bg-white border rounded-lg p-6">
                  <h3 className="text-lg font-semibold mb-4 flex items-center">
                    <FileText className="w-5 h-5 text-blue-600 mr-2" />
                    Ph.D. Programs
                  </h3>
                  <ul className="space-y-2">
                    {[
                      'Computer Science & Engineering (CSE)',
                      'Electronics & Communication Engineering (ECE)',
                      'Mechanical Engineering (ME)',
                      'Design',
                      'Natural Sciences (NS)'
                    ].map((program) => (
                      <li key={program} className="flex items-center">
                        <Link className="w-4 h-4 text-blue-600 mr-2" />
                        <a href="mailto:vh@iiitdmj.ac.in" className="text-blue-600 hover:underline">{program}</a>
                      </li>
                    ))}
                  </ul>
                </div>

                <div className="bg-white border rounded-lg p-6">
                  <h3 className="text-lg font-semibold mb-4 flex items-center">
                    <FileText className="w-5 h-5 text-blue-600 mr-2" />
                    Integrated (MTech + Ph.D.)
                  </h3>
                  <ul className="space-y-2">
                    {[
                      'Computer Science & Engineering (CSE)',
                      'Electronics & Communication Engineering (ECE)',
                      'Mechanical Engineering (ME)',
                      'Design'
                    ].map((program) => (
                      <li key={program} className="flex items-center">
                        <Link className="w-4 h-4 text-blue-600 mr-2" />
                        <a href="mailto:vh@iiitdmj.ac.in" className="text-blue-600 hover:underline">{program}</a>
                      </li>
                    ))}
                  </ul>
                </div>

                <div className="bg-white border rounded-lg p-6">
                  <h3 className="text-lg font-semibold mb-4 flex items-center">
                    <FileText className="w-5 h-5 text-blue-600 mr-2" />
                    Special Part Time MTech/MDes Program
                  </h3>
                  <ul className="space-y-2">
                    {[
                      'Computer Science & Engineering (CSE)',
                      'Electronics & Communication Engineering (ECE)',
                      'Mechanical Engineering (ME)',
                      'MDes'
                    ].map((program) => (
                      <li key={program} className="flex items-center">
                        <Link className="w-4 h-4 text-blue-600 mr-2" />
                        <a href="mailto:vh@iiitdmj.ac.in" className="text-blue-600 hover:underline">{program}</a>
                      </li>
                    ))}
                  </ul>
                </div>

                <div className="bg-white border rounded-lg p-6">
                  <h3 className="text-lg font-semibold mb-4 flex items-center">
                    <FileText className="w-5 h-5 text-blue-600 mr-2" />
                    Additional Resources
                  </h3>
                  <ul className="space-y-2">
                    <li className="flex items-center">
                      <Link className="w-4 h-4 text-blue-600 mr-2" />
                      <a href="mailto:vh@iiitdmj.ac.in" className="text-blue-600 hover:underline">PhD Curriculum</a>
                    </li>
                  </ul>
                </div>
              </div>
            </div>
          </div>

          {/* Sidebar - 3 columns */}
          <div className="lg:col-span-3 ">
            <div className="bg-white rounded-xl shadow-lg p-6 mb-6">
              <div className="flex items-center mb-4">
                <Users className="w-6 h-6 text-blue-600 mr-3" />
                <h3 className="text-xl font-bold">Student Gymkhana</h3>
              </div>
              <p className="text-gray-600 mb-4">
                Students' Gymkhana evolves disciplined self-governance for extracurricular activities and establishes a responsible student body.
              </p>
              <Link  to="/gymkhana" className="text-blue-600 font-medium hover:text-blue-700">
                Learn More →
              </Link>
            </div>

            <div className="bg-white rounded-xl shadow-lg p-6">
              <div className="flex items-center mb-4">
                <Home className="w-6 h-6 text-blue-600 mr-3" />
                <h3 className="text-xl font-bold">Hostels</h3>
              </div>
              <p className="text-gray-600 mb-4">
                IIITDM Jabalpur is a fully residential campus. All students are required to be resident of Institute hostels.
              </p>
              <Link to='/hostels' className="text-blue-600 font-medium hover:text-blue-700">
                Learn More →
              </Link>
            </div>
          </div>
        </div>
      </div>
    </div>
  );
};

export default Test;