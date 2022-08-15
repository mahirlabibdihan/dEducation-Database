DROP TYPE STUDENT_ARRAY;
DROP TYPE STUDENT;
DROP TYPE TUTOR_ARRAY;
DROP TYPE TUTOR;

DROP TYPE TUTION_POST_ARRAY;
DROP TYPE TUTION_POST;

DROP TYPE COURSE_ARRAY;
DROP TYPE COURSE;

-- DROP TYPE EDUCATION_2D_ARRAY;
DROP TYPE EDUCATION_ARRAY;
DROP TYPE EDUCATION;
 
-- CREATE OR REPLACE	TYPE USER_T AS	OBJECT (
--   user_id 	NUMBER,
--   email 		VARCHAR2(100),
--   pass 			VARCHAR2(1024),
--   role 			VARCHAR2(1024)
-- );
-- /
-- CREATE OR REPLACE TYPE USER_ARRAY AS VARRAY(100) OF USER_T;
-- /
-- 
CREATE OR REPLACE	TYPE STUDENT AS	OBJECT (
	user_id				NUMBER,
  name 					VARCHAR2(100),
  image 				VARCHAR2(1000),
  gender 				VARCHAR2(10),
  phone_number 	VARCHAR2(15),
  date_of_birth DATE,
	institution 	VARCHAR2(1024),
	version 			VARCHAR2(1024),
	class 				VARCHAR2(1024),
	address  			VARCHAR2(1024)
);
/
CREATE OR REPLACE TYPE STUDENT_ARRAY AS VARRAY(100) OF STUDENT;
/
CREATE OR REPLACE	TYPE TUTOR AS	OBJECT (
	user_id							NUMBER,
  name 								VARCHAR2(100),
  image 							VARCHAR2(1000),
  gender 							VARCHAR2(10),
  phone_number 				VARCHAR2(15),
  date_of_birth 			DATE,
	expertise						VARCHAR2(1024),
	availability 				VARCHAR2(100),
	years_of_experience NUMBER,
	preffered_salary 		NUMBER,
	rating							NUMBER
);
/
CREATE OR REPLACE TYPE TUTOR_ARRAY AS VARRAY(100) OF TUTOR;
/

DROP TYPE TUTION_ARRAY;
DROP TYPE TUTION;
CREATE OR REPLACE TYPE TUTION AS OBJECT (
	status 					VARCHAR2(100),
	subjects 				VARCHAR2(1024),
	salary 					NUMBER,
	days_per_week 	NUMBER,
	type 						VARCHAR2(100),
	rating					NUMBER,
	class_days			VARCHAR2(100),	
	class_time			VARCHAR2(100),
	review					VARCHAR2(1024),
	start_date 			DATE
);
/

CREATE OR REPLACE TYPE TUTION_ARRAY AS VARRAY(100) OF TUTION;
/

CREATE OR REPLACE TYPE TUTION_POST AS OBJECT (
  gender 								VARCHAR2(10),
	version 							VARCHAR2(1024),
	class 								VARCHAR2(1024),
	address  							VARCHAR2(1024),
	post_id 							NUMBER,
	desired_tutor_gender 	VARCHAR2(20),
	subjects 							VARCHAR2(1024),
	salary 								NUMBER,
	days_per_week 				NUMBER,
	type 									VARCHAR2(100),
	timestamp 						DATE,
	applicant_count				NUMBER			
);
/
CREATE OR REPLACE TYPE TUTION_POST_ARRAY AS VARRAY(100) OF TUTION_POST;
/

DROP TYPE COACHING_ARRAY;
DROP TYPE COACHING;
CREATE OR REPLACE TYPE COACHING AS OBJECT (
	coaching_id    	NUMBER,
	image          	VARCHAR2(100),
	name           	VARCHAR2(100),
	address					VARCHAR2(1024),
	phone_number 		VARCHAR2(15),
	type						VARCHAR2(100)
);
/

CREATE OR REPLACE TYPE COACHING_ARRAY AS VARRAY(100) OF COACHING;
/

CREATE OR REPLACE TYPE COURSE AS OBJECT (
	course_id    	NUMBER,
	coaching_name	VARCHAR2(100),
	class        	VARCHAR2(100),
	subject				VARCHAR2(100),
	start_date		DATE,
	seats					NUMBER,
	students			NUMBER,
	class_days		VARCHAR2(100),	
	class_time		VARCHAR2(100),
	batch_count		NUMBER,
	student_count	NUMBER
);
/

CREATE OR REPLACE TYPE COURSE_ARRAY AS VARRAY(100) OF COURSE;
/

DROP TYPE BATCH_ARRAY;
DROP TYPE BATCH;
CREATE OR REPLACE TYPE BATCH AS OBJECT (
	batch_id    	NUMBER,
	start_date		DATE,
	seats					NUMBER,
	students			NUMBER,
	class_days		VARCHAR2(100),	
	class_time		VARCHAR2(100),
	student_count	NUMBER,
	status				VARCHAR2(100)
);
/
CREATE OR REPLACE TYPE BATCH_ARRAY AS VARRAY(100) OF BATCH;
/

CREATE OR REPLACE TYPE STRING_ARRAY AS VARRAY(100) OF VARCHAR2(100);
/

DROP TYPE NOTICE_ARRAY;
DROP TYPE NOTICE;
CREATE OR REPLACE TYPE NOTICE AS OBJECT (
	name						VARCHAR2(100),
	image						VARCHAR2(100),
	class        		VARCHAR2(100),
	subject					VARCHAR2(100),
	text 						VARCHAR2(1024),
	timestamp 			DATE
);
/

CREATE OR REPLACE TYPE NOTICE_ARRAY AS VARRAY(100) OF NOTICE;
/

DROP TYPE NOTIFICATION_ARRAY;
DROP TYPE NOTIFICATION;
CREATE OR REPLACE TYPE NOTIFICATION AS OBJECT (
	image 					VARCHAR2(1000),
	text 						VARCHAR2(1024),
	url							VARCHAR2(100),
	timestamp 			DATE,
	seen						VARCHAR2(10)
);
/

CREATE OR REPLACE TYPE NOTIFICATION_ARRAY AS VARRAY(100) OF NOTIFICATION;
/

DROP TYPE FEEDBACK_ARRAY;
DROP TYPE FEEDBACK;
CREATE OR REPLACE TYPE FEEDBACK AS OBJECT (
	feedback_id 	NUMBER,
	rating 				NUMBER,
	review				VARCHAR2(1024)
);
/
 
CREATE OR REPLACE TYPE FEEDBACK_ARRAY AS VARRAY(100) OF FEEDBACK;
/ 

CREATE OR REPLACE TYPE EDUCATION AS OBJECT (
	eq_id 					NUMBER,
	institute 			VARCHAR2(100),
	field_of_study 	VARCHAR2(100),
	degree					VARCHAR2(100),
	passing_year		NUMBER
);
/
 
CREATE OR REPLACE TYPE EDUCATION_ARRAY AS TABLE OF EDUCATION;
/ 

-- 
-- CREATE OR REPLACE TYPE EDUCATION_2D_ARRAY AS TABLE OF EDUCATION_ARRAY;
-- / 
-- select * from user_errors;

