create database FinalProject;
use FinalProject;

create table department
(
department_id int primary key,
department_name varchar(50)
);

create table pozition
(
pozition_id int primary key,
pozition_name  varchar(50)
);

create table deduction
(
deduction_id int primary key,
decuction_amount int not null
);

create table allowance
(
allowance_id int primary key,
allowance_amount int
);

create table attendence
(
attendence_id int primary key,
jan_present int,
feb_present int,
march_present int 
);

create table salary
(
salary_id int primary key,
salary_amount float not null
);

create table salary_item
(
salary_item_id int primary key,
jan_salary float,
feb_salary float,
march_salary float,
salary_id int,
foreign key(salary_id) references salary(salary_id)
);

create table employee
(
employee_id int primary key,
employee_name varchar(50) not null,
employee_cnic int not null,
employee_gender varchar(5),
employee_age int default 20,
employee_dob date,
employee_doj date,
--
department_id int,
pozition_id int,
deduction_id int,
allowance_id int,
salary_id int,
attendence_id int,
foreign key(department_id) references department(department_id),
foreign key(pozition_id) references pozition(pozition_id),
foreign key(deduction_id) references deduction(deduction_id),
foreign key(allowance_id) references allowance(allowance_id),
foreign key(salary_id) references salary(salary_id),
foreign key(attendence_id) references attendence(attendence_id)
);




