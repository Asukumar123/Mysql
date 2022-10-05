-- Active: 1664349590702@@127.0.0.1@5432
create database joins;
use joins;


create table employee
(
	emp_id			varchar(20),
	emp_name		varchar(50),
	salary			int,
	dept_id			varchar(20),
	manager_id		varchar(20)
);
insert into employee values
('E1', 'Rahul', 15000, 'D1', 'M1'),
('E2', 'Manoj', 15000, 'D1', 'M1'),
('E3', 'James', 55000, 'D2', 'M2'),
('E4', 'Michael', 25000, 'D2', 'M2'),
('E5', 'Ali', 20000, 'D10', 'M3'),
('E6', 'Robin', 35000, 'D10', 'M3');

drop table company;
create table department
(
	dept_id			varchar(20),
	dept_name		varchar(50)
);
insert into department values
('D1', 'IT'),
('D2', 'HR'),
('D3', 'Finance'),
('D4', 'Admin');
create table if not exists projects
(
	project_id			varchar(20),
	project_name		varchar(100),
	team_member_id		varchar(20)
);
insert into projects values
('P1', 'Data Migration', 'E1'),
('P1', 'Data Migration', 'E2'),
('P1', 'Data Migration', 'M3'),
('P2', 'ETL Tool', 'E1'),
('P2', 'ETL Tool', 'M4');
create table if not exists manager
(
	manager_id			varchar(20),
	manager_name		varchar(50),
	dept_id				varchar(20)
);
DROP TABLE family;
insert into manager values
('M1', 'Prem', 'D3'),
('M2', 'Shripadh', 'D4'),
('M3', 'Nick', 'D1'),
('M4', 'Cory', 'D1');

CREATE TABLE family
(
    member_id     VARCHAR(10),
    name          VARCHAR(50),
    age           INT,
    parent_id     VARCHAR(10)
);
insert into family values
  ('F1', 'David', 4, 'F5'),
  ('F2', 'Carol', 10, 'F5'),
  ('F3', 'Michael', 12, 'F5'),
  ('F4', 'Johnson', 36, ''),
  ('F5', 'Maryam', 40, 'F6'),
  ('F6', 'Stewart', 70, ''),
  ('F7', 'Rohan', 6, 'F4'),
  ('F8', 'Asha', 8, 'F4');
select * from employee; -- D1, D2, D10
select * from department; -- D1, D2, D3, D4
select * from manager;

select * from projects;
select * from family;


-- select  e.emp_name,d.dept_name from employee e join department d on e.dept_id=d.dept_id;

-- select e.emp_name,dept_name from employee e left join department d on e.dept_id=d.dept_id;
-- select e.emp_name,dept_name from employee e right join department d on e.dept_id=d.dept_id;

-- -- Fetch details of ALL emp, their manager, their department and the projects they work on.
-- select e.emp_name,d.dept_name ,m.manager_name,p.project_name from employee e left join department d on e.dept_id=d.dept_id
-- join manager m on m.manager_id=e.manager_id left join projects p on p.team_member_id=e.emp_id;


-- inner join
select e.emp_name,d.dept_name from employee e INNER JOIN department d on e.dept_id=d.dept_id;

-- left outer join
select e.emp_name,d.dept_name from employee e LEFT JOIN department d on e.dept_id=d.dept_id;

-- right outer join
select e.emp_name,d.dept_name from employee e RIGHT JOIN department d on e.dept_id=d.dept_id;

-- cross join
select e.emp_name,d.dept_id from employee e CROSS JOIN department d;
-- natural join
select  e.emp_name,d.dept_id  from employee e NATURAL JOIN department d;
-- self join
select child.name as child_name ,child.age as child_age , parent.name as parent_name ,parent.age as parent_age from family as child join family as parent on parent.member_id=child.parent_id;  