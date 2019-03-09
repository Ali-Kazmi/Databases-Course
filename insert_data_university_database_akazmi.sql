/* insert_data_university_database_akazmifinalproject.sql
	Ali Kazmi 
	CS31A, Fall 2018 */
    
    USE university; 
    
      /* data for the department table */ 
     INSERT INTO department (dept_id,dept_name,budget) 
          VALUES (1,'Computer Science',90000);
     INSERT INTO department (dept_id,dept_name,budget) 
          VALUES (2,'Telecommunications',100000);
     INSERT INTO department (dept_id,dept_name,budget) 
          VALUES (3,'Accounting',85000);
     INSERT INTO department (dept_id,dept_name,budget) 
          VALUES (4,'Math and Science',120000);
     INSERT INTO department (dept_id,dept_name,budget) 
          VALUES (5,'Liberal Arts',800000);
     INSERT INTO department (dept_id,dept_name,budget) 
          VALUES (6,'English',70000);
          
    /* data for the course table */ 
    INSERT INTO course (course_id,title,credits,dept_id,prerequisite) 
        VALUES ('AC101','accounting',3,3,'EN100'); 
     INSERT INTO course (course_id,title,credits,dept_id) 
         VALUES ('CIS253','Database Systems',3,1); 
     INSERT INTO course (course_id,title,credits,dept_id,prerequisite) 
         VALUES ('AC265','Systems Analysis',3,3,'CIS253'); 
     INSERT INTO course (course_id,title,credits,dept_id) 
         VALUES ('EN100','Basic English',0,6); 
     INSERT INTO course (course_id,title,credits,dept_id,prerequisite)
         VALUES ('MA150','College Algebra',3,4,'EN100'); 
	 INSERT INTO course(course_id,title,credits,dept_id,prerequisite)
		VALUES ('LA123','English Literature', 3,5,'EN100'); 
    
    /* data for the faculty table */
    INSERT INTO faculty (faculty_id,faculty_name,room_id,dept_id,salary) 
        VALUES (63395,'Jones', 11,1,94333.99);
	INSERT INTO faculty (faculty_id,faculty_name,room_id,dept_id,salary) 
        VALUES (78699,'Mobley',11,1,59303.62);
	INSERT INTO faculty (faculty_id,faculty_name,room_id,dept_id,salary) 
        VALUES (96895, 'Williams', 20,2,119921.41);
	INSERT INTO faculty (faculty_id,faculty_name,room_id,dept_id,salary) 
        VALUES (79653,'Vajpayee',12,2,88791.45); 
	INSERT INTO faculty (faculty_id,faculty_name,room_id,dept_id,salary) 
        VALUES (97302,'Collins',17,3,61387.56);
	INSERT INTO faculty (faculty_id,faculty_name,room_id,dept_id,salary) 
        VALUES (57180, 'Sen', 12,3, 32570.50); 
    INSERT INTO faculty (faculty_id,faculty_name,room_id,dept_id,salary) 
        VALUES (74420,'Rivera', 21,4,89805.83);
    INSERT INTO faculty (faculty_id,faculty_name,room_id,dept_id,salary) 
        VALUES (35579,'Chang', 17,5,108011.81);
    INSERT INTO faculty (faculty_id,faculty_name,room_id,dept_id,salary) 
        VALUES (98377,'Brad', 12,6,35570.50);
    
    /* data for the major table */
     INSERT INTO major (major_id,major_name) 
         VALUES (100,'AAS-Accounting');
     INSERT INTO major (major_id,major_name) 
         VALUES (200,'AAS-Computer Science');
     INSERT INTO major (major_id,major_name) 
         VALUES (300,'AAS-Telecommunications');
     INSERT INTO major (major_id,major_name) 
         VALUES (400,'BS-Accounting');
     INSERT INTO major (major_id,major_name) 
		VALUES (500,'BS-Computer Science');
     INSERT INTO major (major_id,major_name) 
         VALUES (600,'BS-Telecommunications');
     
     /*data for the location table */ 
         INSERT INTO location(room_id, building, room_no, capacity, room_type, room_description) VALUES(11,'Gandhi', 101,2,'O','Office');
		 INSERT INTO location(room_id, building, room_no, capacity, room_type, room_description) VALUES(12,'Gandhi', 103,2,'O','Office');
         INSERT INTO location(room_id, building, room_no, capacity, room_type, room_description) VALUES(13,'Kennedy', 202,35,'L','Lab');
         INSERT INTO location(room_id, building, room_no, capacity, room_type, room_description) VALUES(14,'Kennedy', 204,50,'L','Lab');
         INSERT INTO location(room_id, building, room_no, capacity, room_type, room_description) VALUES(15,'Nehru', 301,50,'C','Classroom');
         INSERT INTO location(room_id, building, room_no, capacity, room_type, room_description) VALUES(16,'Nehru', 309,45,'C','Classroom');
		 INSERT INTO location(room_id, building, room_no, capacity, room_type, room_description) VALUES(17,'Gandhi', 105,2,'O','Office');
		 INSERT INTO location(room_id, building, room_no, capacity, room_type, room_description) VALUES(18,'Kennedy', 206,40,'L','Lab');
         INSERT INTO location(room_id, building, room_no, capacity, room_type, room_description) VALUES(19,'Kennedy', 210,30,'C','Classroom');
		 INSERT INTO location(room_id, building, room_no, capacity, room_type, room_description) VALUES(20,'Gandhi', 107,2,'O','Office');
		 INSERT INTO location(room_id, building, room_no, capacity, room_type, room_description) VALUES(21,'Gandhi', 10,2,'O','Office');
     
     /* data for the term table */ 
     INSERT INTO term (term_id,term_desc, start_date, end_date) VALUES('FL16','Fall 2016','2016-09-08','2016-12-20'); 
	 INSERT INTO term (term_id,term_desc, start_date, end_date) VALUES('FL17','Fall 2017','2017-09-07','2017-12-19'); 
	 INSERT INTO term (term_id,term_desc, start_date, end_date) VALUES('SP16','Spring 2016','2016-04-28','2016-07-16'); 
	 INSERT INTO term (term_id,term_desc, start_date, end_date) VALUES('SP17','Spring 2017','2017-03-27','2017-07-15'); 
     INSERT INTO term (term_id,term_desc, start_date, end_date) VALUES('WN17','Winter 2017','2017-01-05','2017-04-18'); 
     
     /* data for section table */
     INSERT INTO section (section_id,course_id,section_number,term_id,faculty_id,day,max_count, start_time,end_time,room_id) 
		VALUES (1101,'AC265',01,'WN17',97302,'MW',.30,'09:00','10:30',13); 
     INSERT INTO section (section_id,course_id,section_number,term_id,faculty_id,day,max_count, start_time,end_time,room_id) 
		VALUES (1102,'CIS253',01,'WN17',78699,'TR',.40,'09:00','10:30',18); 
     INSERT INTO section (section_id,course_id,section_number,term_id,faculty_id,day,max_count, start_time,end_time,room_id) 
		VALUES (1103,'MA150',02,'WN17',74420,'F',.25,'09:00','12:00',15); 
     INSERT INTO section (section_id,course_id,section_number,term_id,faculty_id,day,max_count, start_time,end_time,room_id) 
		VALUES (1104,'AC101',01,'FL17',57180,'MW',.35,'10:30','12:00',16); 
	INSERT INTO section (section_id,course_id,section_number,term_id,faculty_id,day,max_count, start_time,end_time,room_id) 
		VALUES (1205,'AC265',01,'SP17',97302,'MW',.35,'09:00','10:30',14); 
    INSERT INTO section (section_id,course_id,section_number,term_id,faculty_id,day,max_count, start_time,end_time,room_id) 
		VALUES (1206,'AC265',02,'SP17',97302,'TR',.30,'09:00','10:30',18);
	INSERT INTO section (section_id,course_id,section_number,term_id,day,max_count, start_time,end_time,room_id) 
		VALUES (1207,'LA123',05,'SP17','MW',.30,'09:00','10:30',15);
	INSERT INTO section (section_id,course_id,section_number,term_id,faculty_id,day,max_count, start_time,end_time,room_id) 
		VALUES (1208,'CIS253',21,'SP17',78699,'TR',.40,'09:00','10:30',14);
	INSERT INTO section (section_id,course_id,section_number,term_id,faculty_id,day,max_count, start_time,end_time,room_id) 
		VALUES (1209,'CIS253',11,'FL16',63395,'MW',.40,'09:00','10:30',18);
	INSERT INTO section (section_id,course_id,section_number,term_id,faculty_id,day,max_count, start_time,end_time,room_id) 
		VALUES (1210,'CIS253',31,'FL17',78699,'F',.45,'09:00','12:00',19);
	INSERT INTO section (section_id,course_id,section_number,term_id,faculty_id,day,max_count, start_time,end_time,room_id) 
		VALUES (1311,'EN100',01,'FL17',98377,'MW',.50,'09:00','10:30',14);
        
        /* data for the student table */ 
        INSERT INTO student(student_id,last_name,first_name,street,city,state,zip,birth_date,major_id,phone,student_type) 
			VALUES(24746, 'Diaz', 'Jose','1 Ford Avenue #7', 'Hill', 'NJ', 08863, '1993-02-12',100,'9735551111','ugrad');
		INSERT INTO student(student_id,last_name,first_name,street,city,state,zip,birth_date,major_id,phone,student_type) 
			VALUES(79352, 'Tyler', 'Kee','12 Moriss Avenue', 'Bronx', 'NY', 10468, '1994-03-18',500,'7185552222','grad');
		INSERT INTO student(student_id,last_name,first_name,street,city,state,zip,birth_date,major_id,phone,student_type) 
			VALUES(76672, 'Miliko', 'Rajesh','25 river road #3', 'Edison', 'NJ', 08837, '1995-12-12',400,'7325553333','ugrad');
		INSERT INTO student(student_id,last_name,first_name,street,city,state,zip,birth_date,major_id,phone,student_type) 
			VALUES(14182, 'Rickles', 'Alex','100 Main Street', 'Iselin', 'NJ', 08838, '1990-10-20',500,'7325554444','grad');
		INSERT INTO student(student_id,last_name,first_name,street,city,state,zip,birth_date,major_id,phone,student_type) 
			VALUES(44985, 'Lee', 'Ho','2845 First Lane', 'Hope', 'NY', 11373, '1995-10-28',600,'2125555555','grad');
		INSERT INTO student(student_id,last_name,first_name,street,city,state,zip,birth_date,major_id,phone,student_type) 
			VALUES(96052, 'Holn', 'Amir','213 Broadway', 'Clifton', 'NJ', 07222, '1994-07-07',200,'2015556666','ugrad');
            
            /* data for the registration table */ 
            INSERT INTO registration(student_id,section_id,midterm_grade,final_grade) VALUES  (24746,1102,'B','B'); 
            INSERT INTO registration(student_id,section_id,midterm_grade,final_grade) VALUES  (24746,1103,'C','F');
            INSERT INTO registration(student_id,section_id,midterm_grade,final_grade) VALUES  (24746,1104,'B','A');
            INSERT INTO registration(student_id,section_id) VALUES  (24746,1207); 
			INSERT INTO registration(student_id,section_id) VALUES  (79352,1205);
            INSERT INTO registration(student_id,section_id,midterm_grade,final_grade) VALUES  (76672,1102,'F','D'); 
            INSERT INTO registration(student_id,section_id,midterm_grade,final_grade) VALUES  (76672,1103,'A','A');
            INSERT INTO registration(student_id,section_id,midterm_grade,final_grade) VALUES  (76672,1206,'B','C');
			INSERT INTO registration(student_id,section_id) VALUES  (76672,1207); 
			INSERT INTO registration(student_id,section_id) VALUES  (76672,1210);
			INSERT INTO registration(student_id,section_id,midterm_grade,final_grade) VALUES  (14182,1101,'F','W'); 
            INSERT INTO registration(student_id,section_id,midterm_grade,final_grade) VALUES  (14182,1104,'D','D');
            INSERT INTO registration(student_id,section_id,midterm_grade,final_grade) VALUES  (14182,1206,'A','B');
            INSERT INTO registration(student_id,section_id,midterm_grade,final_grade) VALUES  (14182,1311,'A','A');
			INSERT INTO registration(student_id,section_id) VALUES  (44985,1206); 
			INSERT INTO registration(student_id,section_id) VALUES  (44985,1207);
			INSERT INTO registration(student_id,section_id) VALUES  (44985,1210); 
			INSERT INTO registration(student_id,section_id) VALUES  (96052,1208);
            INSERT INTO registration(student_id,section_id) VALUES  (96052,1209);
            INSERT INTO registration(student_id,section_id,midterm_grade,final_grade) VALUES  (96052,1311,'B','B');
         
         
	