-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/RvO3iU
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.

-- Modify this code to update the DB schema diagram.
-- To reset the sample schema, replace everything with
-- two dots ('..' - without quotes).

CREATE TABLE "Departments" (
    "dept_no" VARCHAR   NOT NULL,
    "dept_name" VARCHAR   NOT NULL,
    CONSTRAINT "pk_Departments" PRIMARY KEY (
        "dept_no"
     )
);

CREATE TABLE "Dept_emp" (
    "emp_no" INTERGER   NOT NULL,
    "dept_no" VARCHAR   NOT NULL,
    CONSTRAINT "pk_Dept_emp" PRIMARY KEY (
        "emp_no"
     )
);

CREATE TABLE "Dept_manager" (
    "emp_no" INTERGER   NOT NULL,
    "dept_no" VARCHAR   NOT NULL,
    CONSTRAINT "pk_Dept_manager" PRIMARY KEY (
        "emp_no"
     )
);

CREATE TABLE "Salaries" (
    "emp_no" INTERGER   NOT NULL,
    "salary" INT   NOT NULL,
    CONSTRAINT "pk_Salaries" PRIMARY KEY (
        "emp_no"
     )
);

CREATE TABLE "Employees" (
    "emp_no" INTERGER   NOT NULL,
    "title_id" VARCHAR   NOT NULL,
    "birth_date" INT   NOT NULL,
    "first_name" VARCHAR   NOT NULL,
    "last_name" VARCHAR   NOT NULL,
    "sex" VARCHAR   NOT NULL,
    "hire_date" INT   NOT NULL,
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

ALTER TABLE "Departments" ADD CONSTRAINT "fk_Departments_dept_no" FOREIGN KEY("dept_no")
REFERENCES "Dept_manager" ("");

ALTER TABLE "Dept_emp" ADD CONSTRAINT "fk_Dept_emp_emp_no" FOREIGN KEY("emp_no")
REFERENCES "Salaries" ("");

ALTER TABLE "Dept_emp" ADD CONSTRAINT "fk_Dept_emp_dept_no" FOREIGN KEY("dept_no")
REFERENCES "Departments" ("");

ALTER TABLE "Salaries" ADD CONSTRAINT "fk_Salaries_emp_no" FOREIGN KEY("emp_no")
REFERENCES "Dept_manager" ("");

ALTER TABLE "Employees" ADD CONSTRAINT "fk_Employees_emp_no" FOREIGN KEY("emp_no")
REFERENCES "Salaries" ("");

ALTER TABLE "Titles" ADD CONSTRAINT "fk_Titles_title_id" FOREIGN KEY("title_id")
REFERENCES "Employees" ("");

