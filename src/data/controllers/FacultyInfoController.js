// Import required modules
require("dotenv").config();
const pool = require("../connection");

// Function 1: Get Faculty Honors
async function getFacultyHonors(userId) {
  const query = `
    SELECT t.id, title, description, "period"
    FROM dblink('dbname=fusionlab user=superAdmin password=9455957884', 
         'SELECT auth_user.id, eis_honors.title, description, "period" 
          FROM auth_user, globals_extrainfo, eis_faculty_about, eis_honors
          WHERE auth_user.id=globals_extrainfo.user_id
          AND auth_user.id=eis_faculty_about.user_id
          AND auth_user.id=eis_honors.user_id
          AND auth_user.id=${userId}')
    AS t(id int, title varchar, description varchar, "period" varchar)`;

  const { rows } = await pool.query(query);
  return rows;
}

// Function 2: Get Faculty Qualifications
async function getFacultyQualifications(userId) {
  const query = `
    SELECT t.id, "degree", college
    FROM dblink('dbname=fusionlab user=superAdmin password=9455957884', 
         'SELECT auth_user.id, "degree", college 
          FROM auth_user, globals_extrainfo, eis_faculty_about, eis_qualifications
          WHERE auth_user.id=globals_extrainfo.user_id
          AND auth_user.id=eis_faculty_about.user_id
          AND auth_user.id=eis_qualifications.user_id
          AND auth_user.id=${userId}')
    AS t(id int, "degree" varchar, college varchar)`;

  const { rows } = await pool.query(query);
  return rows;
}

// Function 3: Get Faculty Professional Experience
async function getFacultyExperience(userId) {
  const query = `
    SELECT t.id, title, description, "from", "to"
    FROM dblink('dbname=fusionlab user=superAdmin password=9455957884', 
         'SELECT auth_user.id, eis_professional_experience.title, description, "from", "to" 
          FROM auth_user, globals_extrainfo, eis_faculty_about, eis_professional_experience
          WHERE auth_user.id=globals_extrainfo.user_id
          AND auth_user.id=eis_faculty_about.user_id
          AND auth_user.id=eis_professional_experience.user_id
          AND auth_user.id=${userId}')
    AS t(id int, title varchar, description varchar, "from" varchar, "to" varchar)`;

  const { rows } = await pool.query(query);
  return rows;
}

// Function 4: Get Faculty Administrative Position
async function getFacultyAdminPosition(userId) {
  const query = `
    SELECT t.id, title, description, "from", "to"
    FROM dblink('dbname=fusionlab user=superAdmin password=9455957884', 
         'SELECT auth_user.id, eis_administrative_position.title, description, "from", "to" 
          FROM auth_user, globals_extrainfo, eis_faculty_about, eis_administrative_position
          WHERE auth_user.id=globals_extrainfo.user_id
          AND auth_user.id=eis_faculty_about.user_id
          AND auth_user.id=eis_administrative_position.user_id
          AND auth_user.id=${userId}')
    AS t(id int, title varchar, description varchar, "from" varchar, "to" varchar)`;

  const { rows } = await pool.query(query);
  return rows;
}

async function getFacultyBasicInfo(userId) {
  const query = `
  SELECT 
    t.id, t.first_name, t.last_name, t.designation, t.email, 
    t.contact, t.address, fpp.profile_pic AS profile_picture, 
    t.department, t.about, t.interests, t.linkedin, t.github
FROM 
    dblink('dbname=fusionlab user=superAdmin password=9455957884', 
           'SELECT auth_user.id AS id, 
                   auth_user.first_name AS first_name, 
                   auth_user.last_name AS last_name, 
                   designation.name AS designation, 
                   auth_user.email AS email, 
                   faculty_about.contact AS contact, 
                   extra_info.address AS address, 
                   department.name AS department, 
                   faculty_about.about AS about, 
                   faculty_about.interest AS interests,
                   faculty_about.linkedin AS linkedin,
                   faculty_about.github AS github
            FROM auth_user
            JOIN globals_holdsdesignation AS holds_designation 
              ON holds_designation.user_id = auth_user.id
            JOIN globals_designation AS designation 
              ON designation.id = holds_designation.designation_id
            JOIN globals_extrainfo AS extra_info 
              ON extra_info.user_id = auth_user.id
            JOIN globals_departmentinfo AS department 
              ON extra_info.department_id = department.id
            JOIN eis_faculty_about AS faculty_about 
              ON extra_info.user_id = faculty_about.user_id
            WHERE auth_user.id = ${userId}'
          ) AS t(
              id int, first_name varchar, last_name varchar, designation varchar, 
              email varchar, contact varchar, address text, 
              department varchar, about varchar, interests varchar, 
              linkedin varchar, github varchar
          )
LEFT JOIN "FacultyPics" AS fpp ON t.id = fpp.fac_id;
`;

  const { rows } = await pool.query(query);
  return rows;
}

async function getAllFaculties(branch_id) {
  const query = `
    SELECT 
    t.id, t.first_name, t.last_name, t.designation, t.email, 
    t.contact, t.address, fpp.profile_pic AS profile_picture, 
    t.department, t.about, t.interests
FROM 
    dblink('dbname=fusionlab user=superAdmin password=9455957884', 
           'SELECT auth_user.id AS id, 
                   auth_user.first_name AS first_name, 
                   auth_user.last_name AS last_name, 
                   designation.name AS designation, 
                   auth_user.email AS email, 
                   faculty_about.contact AS contact, 
                   extra_info.address AS address, 
                   department.name AS department, 
                   faculty_about.about AS about, 
                   faculty_about.interest AS interests
            FROM auth_user
            JOIN globals_holdsdesignation AS holds_designation 
              ON holds_designation.user_id = auth_user.id
            JOIN globals_designation AS designation 
              ON designation.id = holds_designation.designation_id
            JOIN globals_extrainfo AS extra_info 
              ON extra_info.user_id = auth_user.id
            JOIN globals_departmentinfo AS department 
              ON extra_info.department_id = department.id
            JOIN eis_faculty_about AS faculty_about 
              ON extra_info.user_id = faculty_about.user_id
            WHERE extra_info.department_id = ${branch_id} 
              AND designation.name LIKE ''%Prof%''
            ') 
    AS t(id int, first_name varchar, last_name varchar, designation varchar, email varchar, 
         contact varchar, address text, department varchar, about varchar, interests varchar)
LEFT JOIN "FacultyPics" fpp ON t.id = fpp.fac_id;
  `;

  const { rows } = await pool.query(query);
  return rows;
}

async function getFacultyCourses(userId) {
  const query = `
    SELECT DISTINCT course_code, course_name, discipline
    FROM 
    dblink('dbname=fusionlab user=superAdmin password=9455957884', 
           'SELECT pc_course.code AS course_code, 
                   pc_course.name AS course_name, 
                   pc_discipline.name AS discipline
            FROM programme_curriculum_course AS pc_course
            JOIN programme_curriculum_courseinstructor AS pc_instructor 
              ON pc_course.id = pc_instructor.course_id_id
            JOIN programme_curriculum_course_disciplines AS pc_course_discipline 
              ON pc_course.id = pc_course_discipline.course_id
            JOIN programme_curriculum_discipline AS pc_discipline 
              ON pc_discipline.id = pc_course_discipline.discipline_id
            JOIN globals_extrainfo AS globals_info 
              ON pc_instructor.instructor_id_id = globals_info.id
            WHERE globals_info.user_id = ${userId}'
          ) AS t(course_code varchar, course_name varchar, discipline varchar);`;

  const { rows } = await pool.query(query);
  return rows;
}

async function getSpecialization(userId) {
  const query = `
    SELECT about
    FROM 
    dblink('dbname=fusionlab user=superAdmin password=9455957884', 
           'SELECT faculty_about.about AS about
            FROM auth_user
            JOIN eis_faculty_about AS faculty_about 
              ON auth_user.id = faculty_about.user_id
            WHERE auth_user.id = ${userId}'
          ) AS t(about varchar);
`;

  const { rows } = await pool.query(query);
  return rows;
}

async function getProjects(userId) {
  const query = `
    SELECT title, pi, co_pi, start_date, finish_date
    FROM 
    dblink('dbname=fusionlab user=superAdmin password=9455957884', 
           'SELECT research_projects.title AS title,pi,co_pi,start_date,finish_date
            FROM auth_user
            JOIN eis_emp_research_projects AS research_projects 
              ON CAST(auth_user.id AS varchar) = research_projects.pf_no
            WHERE auth_user.id = ${userId}'
          ) AS t(title text, pi varchar, co_pi varchar, start_date date, finish_date date);
`;

  const { rows } = await pool.query(query);
  return rows;
}
async function getPatents(userId) {
  const query = `
  SELECT title, p_no, status, p_year
  FROM 
  dblink('dbname=fusionlab user=superAdmin password=9455957884', 
          'SELECT petents.title as title, p_no, status, p_year
           FROM auth_user
          JOIN eis_emp_patents AS petents 
          ON auth_user.id = CAST(petents.pf_no AS integer)
          WHERE auth_user.id = ${userId}'
          ) AS t(title text, p_no varchar, status varchar, p_year integer);
          
  `;
  const { rows } = await pool.query(query);
  return rows;
}
async function getConsultancyProjects(userId) {
  const query = `
  SELECT title, consultants, client, financial_outlay, start_date, end_date, status, remarks
  FROM 
  dblink('dbname=fusionlab user=superAdmin password=9455957884', 
         'SELECT consultancy_projects.title, consultants, client, financial_outlay, start_date, end_date, status, remarks
          FROM auth_user
          JOIN eis_emp_consultancy_projects AS consultancy_projects 
          ON CAST(auth_user.id AS varchar) = consultancy_projects.pf_no
          WHERE auth_user.id = ${userId}'
        ) AS t(title text, consultants varchar, client varchar, financial_outlay integer, start_date date, end_date date, status varchar, remarks text);
`;

  const { rows } = await pool.query(query);
  return rows;
}

//Publications
async function getBooks(userId) {
  const query = `
    SELECT title, authors, publisher, pyear
    FROM 
    dblink('dbname=fusionlab user=superAdmin password=9455957884', 
           'SELECT published_books.title AS title,authors,publisher,pyear
            FROM auth_user
            JOIN eis_emp_published_books AS published_books 
              ON CAST(auth_user.id as varchar) = published_books.pf_no
            WHERE auth_user.id = ${userId}'
          ) AS t(title text, authors varchar, publisher varchar, pyear int);
`;

  const { rows } = await pool.query(query);
  return rows;
}

async function getPublications(userId) {
  const query = `
    SELECT authors, title_paper, name, volume_no, page_no, year, doi, rtype
    FROM 
    dblink('dbname=fusionlab user=superAdmin password=9455957884', 
           'SELECT authors, title_paper, name, volume_no, page_no, year, doi, rtype
            FROM auth_user
            JOIN eis_emp_research_papers AS research_papers 
              ON CAST(auth_user.id as varchar) = research_papers.pf_no
            WHERE auth_user.id = ${userId}'
          ) AS t(authors varchar, title_paper varchar, name varchar, volume_no varchar, page_no varchar, year varchar, doi varchar, rtype varchar);
`;
  const { rows } = await pool.query(query);
  return rows;
}

async function getConferences(userId) {
  const query = `
    (SELECT role, name, venue, start_date
    FROM 
    dblink('dbname=fusionlab user=superAdmin password=9455957884', 
           'SELECT role, name, venue, start_date
            FROM auth_user
            JOIN eis_emp_event_organized AS event_organized 
              ON CAST(auth_user.id as varchar) = event_organized.pf_no
            WHERE auth_user.id = ${userId}'
          ) AS t(role varchar, name varchar, venue varchar, start_date date))
    UNION
    (SELECT role, name, venue, start_date
    FROM 
    dblink('dbname=fusionlab user=superAdmin password=9455957884', 
           'SELECT role1 AS role, name, venue, start_date
            FROM auth_user
            JOIN eis_emp_confrence_organised AS confrence_organised 
              ON CAST(auth_user.id as varchar) = confrence_organised.pf_no
            WHERE auth_user.id = ${userId}'
          ) AS t(role varchar, name varchar, venue varchar, start_date date))
           ;
`;
  const { rows } = await pool.query(query);
  return rows;
}
async function getOrganizedEvents(userId) {
  const query = `
    SELECT role, name, venue, start_date
    FROM 
    dblink('dbname=fusionlab user=superAdmin password=9455957884', 
           'SELECT role, name, venue, start_date
            FROM auth_user
            JOIN eis_emp_event_organized AS event_organized 
              ON CAST(auth_user.id as varchar) = event_organized.pf_no
            WHERE auth_user.id = ${userId}'
          ) AS t(role varchar, name varchar, venue varchar, start_date date);
  `;
  const { rows } = await pool.query(query);
  return rows;
}
async function getOrganizedConferences(userId) {
  const query = `
    SELECT role, name, venue, start_date
    FROM 
    dblink('dbname=fusionlab user=superAdmin password=9455957884', 
           'SELECT role1 AS role, name, venue, start_date
            FROM auth_user
            JOIN eis_emp_confrence_organised AS confrence_organised 
              ON CAST(auth_user.id as varchar) = confrence_organised.pf_no
            WHERE auth_user.id = ${userId}'
          ) AS t(role varchar, name varchar, venue varchar, start_date date);
  `;
  const { rows } = await pool.query(query);
  return rows;
}

async function getStudents(userId) {
  const query = `
    SELECT rollno, s_name, status, s_year, title, co_supervisors
    FROM 
    dblink('dbname=fusionlab user=superAdmin password=9455957884', 
           'SELECT rollno, s_name, status, s_year, title, co_supervisors
            FROM auth_user
            JOIN eis_emp_mtechphd_thesis AS mtech_phd_thesis 
              ON CAST(auth_user.id as varchar) = mtech_phd_thesis.pf_no
            WHERE auth_user.id = ${userId}'
          ) AS t(rollno varchar, s_name varchar, status varchar, s_year int, title varchar, co_supervisors varchar);
`;
  const { rows } = await pool.query(query);
  return rows;
}

const getAllFaculty = async (req, res) => {
  try {
    const query = `
      SELECT 
    t.id, t.user_type, t.first_name, t.last_name, t.email, 
    t.address, t.phone_no, fpp.profile_pic AS profile_picture
FROM 
    dblink('dbname=fusionlab user=superAdmin password=9455957884', 
          'SELECT auth_user.id, user_type, first_name, last_name, email, address, phone_no 
           FROM auth_user 
           JOIN globals_extrainfo ON auth_user.id = globals_extrainfo.user_id
           JOIN globals_faculty ON globals_extrainfo.id = globals_faculty.id_id'
    ) 
    AS t(id int, user_type varchar, first_name varchar, last_name varchar, email varchar, 
         address text, phone_no bigint)
LEFT JOIN "FacultyPics" fpp ON t.id = fpp.fac_id
    `;
    // console.log(res);
    const result = await pool.query(query);
    return res.json(result.rows); // Ensure res is used directly here
  } catch (error) {
    console.error(error);
    return res.status(500).json({ error: "Server error" });
  }
};
const getFacultyVisits = async (userId) => {
  const query = `
  SELECT country, place, purpose, start_date, end_date
  FROM 
  dblink('dbname=fusionlab user=superAdmin password=9455957884', 
         'SELECT visits.country, visits.place, visits.purpose, visits.start_date, visits.end_date
          FROM auth_user
          JOIN eis_emp_visits AS visits 
          ON CAST(auth_user.id AS varchar) = visits.pf_no AND auth_user.id = visits.user_id
          WHERE auth_user.id = ${userId}'
        ) AS t(country varchar, place varchar, purpose varchar, start_date date, end_date date);
`;

  const { rows } = await pool.query(query);
  return rows;
};
const getFacultyAchievements = async (userId) => {
  const query = `
  SELECT a_type,details,a_year
  FROM 
  dblink('dbname=fusionlab user=superAdmin password=9455957884', 
         'SELECT achievements.a_type,achievements.details,achievements.a_year
          FROM auth_user
          JOIN eis_emp_achievement AS achievements 
          ON CAST(auth_user.id AS varchar) = achievements.pf_no
          WHERE auth_user.id = ${userId}'
        ) AS t(a_type varchar, details varchar, a_year integer);
`;

  const { rows } = await pool.query(query);
  return rows;
};
const getFacultyExpertLectures = async (userId) => {
  const query = `
  SELECT l_type,title,l_date, place
  FROM 
  dblink('dbname=fusionlab user=superAdmin password=9455957884', 
         'SELECT expertLecture.l_type,expertLecture.title,expertLecture.l_date,expertLecture.place
          FROM auth_user
          JOIN eis_emp_expert_lectures AS expertLecture 
          ON CAST(auth_user.id AS varchar) = expertLecture.pf_no
          WHERE auth_user.id = ${userId}'
        ) AS t(l_type varchar,title varchar,l_date date, place varchar);
`;

  const { rows } = await pool.query(query);
  return rows;
};
// Export the functions
module.exports = {
  getFacultyHonors,
  getFacultyQualifications,
  getFacultyExperience,
  getFacultyAdminPosition,
  getFacultyBasicInfo,
  getAllFaculties,
  getFacultyCourses,
  getSpecialization,
  getConsultancyProjects,
  getProjects,
  getPatents,
  getBooks,
  getPublications,
  getConferences,
  getOrganizedEvents,
  getOrganizedConferences,
  getStudents,
  getAllFaculty,
  getFacultyVisits,
  getFacultyAchievements,
  getFacultyExpertLectures,
};
