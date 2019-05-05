-- Exported from QuickDBD: https://www.quickdatatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "Departments" (
    "Department_Number" varchar   NOT NULL,
    "Department_Name" varchar   NOT NULL,
    CONSTRAINT "pk_Departments" PRIMARY KEY (
        "Department_Number"
     )
);

CREATE TABLE "Department_Employees" (
    "Employee_Number" int   NOT NULL,
    "Department_Number" varchar   NOT NULL,
    "From_Date" date   NOT NULL,
    "To_Date" date   NOT NULL
);

CREATE TABLE "Department_Managers" (
    "Employee_Number" int   NOT NULL,
    "Department_Number" varchar   NOT NULL,
    "From_Date" date   NOT NULL,
    "To_Date" date   NOT NULL
);

CREATE TABLE "Employees" (
    "Employee_Number" int   NOT NULL,
    "Birth_Date" date   NOT NULL,
    "First_Name" varchar   NOT NULL,
    "Last_Name" varchar   NOT NULL,
    "Gender" varchar   NOT NULL,
    "Hire_Date" date   NOT NULL,
    CONSTRAINT "pk_Employees" PRIMARY KEY (
        "Employee_Number"
     )
);

CREATE TABLE "Salaries" (
    "Employee_Number" int   NOT NULL,
    "Salary" int   NOT NULL,
    "From_Date" date   NOT NULL,
    "To_Date" date   NOT NULL
);

CREATE TABLE "Titles" (
    "Employee_Number" int   NOT NULL,
    "Title" varchar   NOT NULL,
    "From_Date" date   NOT NULL,
    "To_Date" date   NOT NULL
);

ALTER TABLE "Department_Employees" ADD CONSTRAINT "fk_Department_Employees_Employee_Number" FOREIGN KEY("Employee_Number")
REFERENCES "Employees" ("Employee_Number");

ALTER TABLE "Department_Employees" ADD CONSTRAINT "fk_Department_Employees_Department_Number" FOREIGN KEY("Department_Number")
REFERENCES "Departments" ("Department_Number");

ALTER TABLE "Department_Managers" ADD CONSTRAINT "fk_Department_Managers_Employee_Number" FOREIGN KEY("Employee_Number")
REFERENCES "Employees" ("Employee_Number");

ALTER TABLE "Department_Managers" ADD CONSTRAINT "fk_Department_Managers_Department_Number" FOREIGN KEY("Department_Number")
REFERENCES "Departments" ("Department_Number");

ALTER TABLE "Salaries" ADD CONSTRAINT "fk_Salaries_Employee_Number" FOREIGN KEY("Employee_Number")
REFERENCES "Employees" ("Employee_Number");

ALTER TABLE "Titles" ADD CONSTRAINT "fk_Titles_Employee_Number" FOREIGN KEY("Employee_Number")
REFERENCES "Employees" ("Employee_Number");

