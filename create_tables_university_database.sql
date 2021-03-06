/* FinalPart1.sql
	Ali Kazmi 
	CS31A, Fall 2018 */

/* this is the file that creates the database for the university database */ 


/*	                                                				          */
/*														                      */
/*	                The University Database            	      */
/*																		      */
/*	                                            			                  */
/* ****************************************************************************/
CREATE DATABASE IF NOT EXISTS university; 
USE university;

/* drop the tables */
SET FOREIGN_KEY_CHECKS=0; 
DROP TABLE IF EXISTS department;
DROP TABLE IF EXISTS course;
DROP TABLE IF EXISTS faculty;
DROP TABLE IF EXISTS student;
DROP TABLE IF EXISTS term;
DROP TABLE IF EXISTS section;
DROP TABLE IF EXISTS registration;
DROP TABLE IF EXISTS major;
DROP TABLE IF EXISTS location;
SET FOREIGN_KEY_CHECKS=1; 

/* create the tables for the database */

/* create the course table */

CREATE TABLE department (
    dept_id INT,
    dept_name CHAR(100) NULL,
    budget INT,
    CONSTRAINT dept_pk PRIMARY KEY (dept_id)
) ENGINE=INNODB;

/* create the major table */ 
CREATE TABLE major (
    major_id INT NOT NULL AUTO_INCREMENT,
    major_name VARCHAR(100) NULL,
    CONSTRAINT major_pk PRIMARY KEY (major_id)
) ENGINE=INNODB;

/* create the location table */ 
CREATE TABLE location (
	room_id INT,
    building VARCHAR(100),
    room_no INT, 
    capacity INT, 
    room_type VARCHAR(100),
    room_description VARCHAR(100),
    CONSTRAINT location_pk PRIMARY KEY (room_id)
) ENGINE=INNODB;

/* create the faculty table */ 
CREATE TABLE term (
    term_id VARCHAR(100),
    term_desc VARCHAR(100) NULL,
	start_date DATE,
	 end_date DATE, 
    CONSTRAINT term_pk PRIMARY KEY (term_id)
) ENGINE=INNODB; 

/* create the course table */
CREATE TABLE course (
    course_id VARCHAR(100),
    title CHAR(100) NULL,
    credits INT,
    dept_id INT, /* make this foreign key later */
    prerequisite VARCHAR(100), 
    CONSTRAINT course_pk PRIMARY KEY (course_id),
    CONSTRAINT dept_fk FOREIGN KEY (dept_id) REFERENCES department(dept_id)
) ENGINE=INNODB;

/* create the faculty table */ 
CREATE TABLE faculty (
    faculty_id INT,
    faculty_name VARCHAR(100) NULL,
	room_id INT, /* fk */ 
    dept_id INT NOT NULL, /* make this foreign k*/ 
    salary INT,
    CONSTRAINT faculty_pk PRIMARY KEY (faculty_id),
     CONSTRAINT dept_fk2 FOREIGN KEY (dept_id) REFERENCES department(dept_id)
) ENGINE=INNODB;

/* create the student table */ 
CREATE TABLE student (
    student_id INT,
    last_name VARCHAR(100),
	first_name VARCHAR(100),
    street VARCHAR(100),
    city VARCHAR(100), 
    state VARCHAR(100),
    zip INT, 
    birth_date DATE,
    major_id INT, /* make this foreign key later */ 
    phone VARCHAR(100), 
    student_type VARCHAR(100),
    CONSTRAINT student_pk PRIMARY KEY (student_id),
    CONSTRAINT major_fk FOREIGN KEY (major_id) REFERENCES major(major_id)
) ENGINE=INNODB;



/* create the faculty table */ 
CREATE TABLE section (
    section_id INT,
    course_id VARCHAR(100), /* make this fk */ 
    section_number INT, 
    term_id VARCHAR(100), /* make this fk */ 
    faculty_id INT, /* fk */
    day VARCHAR(100), 
    max_count INT, 
    start_time TIME , 
    end_time TIME, 
    room_id INT, /* fk */ 
    CONSTRAINT section_pk PRIMARY KEY (section_id),
    CONSTRAINT term_fk FOREIGN KEY (term_id) REFERENCES term(term_id),
    CONSTRAINT  course_fk FOREIGN KEY (course_id) REFERENCES course(course_id)
) ENGINE=INNODB;

/* create the registration table */ 
CREATE TABLE registration (
    student_id INT,
    section_id INT, 
	midterm_grade CHAR,
	 final_grade CHAR, 
    CONSTRAINT term_pk PRIMARY KEY (student_id,section_id)
) ENGINE=INNODB; 


