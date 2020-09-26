-- Create a Logical Schema 
Link to schema: https://app.quickdatabasediagrams.com/#/d/RvO3iU

--Create Tables and import Data
CREATE TABLE "Departments" (
    "dept_no" VARCHAR   NOT NULL,
    "dept_name" VARCHAR   NOT NULL,
    CONSTRAINT "pk_Departments" PRIMARY KEY (
        "dept_no"
     )
);

CREATE TABLE "Dept_emp" (
	"dept_no" VARCHAR   NOT NULL,
	"emp_no" INT   NOT NULL
	
	ALTER table "Dept_emp"
	ADD CONSTRAINT CompKey_dept_emp
	PRIMARY KEY ( "dept_no", "emp_no" )
);

CREATE TABLE "Dept_manager" (
    "dept_no" VARCHAR   NOT NULL,
	"emp_no" INT   NOT NULL,
    CONSTRAINT "pk_Dept_manager" PRIMARY KEY (
        "emp_no"
);

	
CREATE TABLE "Salaries" (
    "emp_no" INT   NOT NULL,
    "salary" INT   NOT NULL,
    CONSTRAINT "pk_Salaries" PRIMARY KEY (
        "emp_no"
     )
);

CREATE TABLE "Employees" (
    "emp_no" INT   NOT NULL,
    "title_id" VARCHAR   NOT NULL,
    "birth_date" VARCHAR   NOT NULL,
    "first_name" VARCHAR   NOT NULL,
    "last_name" VARCHAR   NOT NULL,
    "sex" VARCHAR   NOT NULL,
    "hire_date" VARCHAR   NOT NULL,
    CONSTRAINT "pk_Employees" PRIMARY KEY (
        "emp_no"
     )
);

CREATE TABLE "Titles" (
    "title_id" VARCHAR   NOT NULL,
    "title" VARCHAR   NOT NULL,
    CONSTRAINT "pk_Titles" PRIMARY KEY (
        "title_id"
     )
);

SELECT * FROM "Departments"
SELECT * FROM "Dept_emp"
SELECT * FROM "Dept_manager"
SELECT * FROM "Salaries"
SELECT * FROM "Employees"
SELECT * FROM "Titles"
	