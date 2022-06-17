/*SQL_DDL Homework
Task: https://docs.google.com/document/d/1FbW6HRhK36-mjP8i9rCk1764koh1NuuwBhkBF6TJKXY/edit
*/

create table employees(
	id serial primary key,
	employee_name varchar(50) not null
	);
	
select * from employees;

insert into employees(employee_name)
values ('Wyatt Romero'),
('Denzel Villanueva'),
('Eliana Woodard'),
('Lilly Petersen'),
('Michael Forbes'),
('Erik Dorsey'),
('Pamela Huerta'),
('Laura Aguirre'),
('Yahir Wiley'),
('Kadence Willis'),
('Ainsley Daugherty'),
('Corinne Jones'),
('Evelyn Mcdowell'),
('Evelyn Whitehead'),
('Simon Henderson'),
('Darren Mccarthy'),
('Mauricio Maddox'),
('Kale Nixon'),
('Denisse Hatfield'),
('Axel Pope'),
('Jamie Booth'),
('Raymond Morris'),
('Audrina Henson'),
('Jovan Hoffman'),
('Marcelo Barnes'),
('Gretchen Lynch'),
('Kaitlyn Gould'),
('Ryder Underwood'),
('Gracie Landry'),
('Dania Stevenson'),
('Jacqueline Hayden'),
('Mariam Hebert'),
('Tianna Mcneil'),
('Jaylah Houston'),
('Elian Abbott'),
('Diana Cruz'),
('Donavan Harding'),
('Kasey Mcmillan'),
('Ainsley Richmond'),
('Athena Singleton'),
('Mohamed Stephenson'),
('Sydnee Duffy'),
('Jaiden Fields'),
('Shea Price'),
('Myles Mclean'),
('Tobias Holmes'),
('Kadyn Bass'),
('Maci Morrison'),
('Lola Waters'),
('Christian Duarte'),
('Daphne Munoz'),
('Ross Phillips'),
('Charles Strickland'),
('Lainey Osborn'),
('Elle Sawyer'),
('Jocelynn Vance'),
('Katelynn Ibarra'),
('Cristofer Bradford'),
('Ryleigh Sosa'),
('Leah Hamilton'),
('Ayla Franco'),
('Jacqueline Horton'),
('Roman Luna'),
('Tobias Cohen'),
('Roman Stafford'),
('Uriel Mitchell'),
('Carmelo Wu'),
('Clinton Patterson'),
('Andre Dawson'),
('Isaac Ayers');

--drop table salary cascade;

create table salary(
	id serial primary key,
	monthly_salary int not null
);

select * from salary;

insert into salary(monthly_salary)
values (1000),
		(1100),
		(1200),
		(1300),
		(1400),
		(1500),
		(1600),
		(1700),
		(1800),
		(1900),
		(2000);
		(2100),
		(2200),
		(2300),
		(2400),
		(2500);

create table employee_salary (
	id serial primary key,
	employee_id int not null unique,
	salary_id int not null
);

select * from employee_salary;

insert into employee_salary(employee_id, salary_id)
values (1,1),
		(2,1),
		(3,1),
		(4,1),
		(5,2),
		(6,2),
		(7,2),
		(8,3),
		(9,3),
		(10,3), /*10th*/
		(15,16),
		(16,15),
		(17,14),
		(18,13),
		(19,12),
		(20,11),
		(21,10),
		(22,12),
		(23,13),
		(24,14), /*20th*/
		(30,8),
		(31,16),
		(32,5),
		(42,4),
		(52,3),
		(62,2),
		(28,11),
		(44,12),
		(58,14),
		(61,15),/*30th*/
		(77,8),
		(88,16),
		(99,5),
		(140,4),
		(152,3),
		(262,2),
		(128,11),
		(344,12),
		(658,14),
		(261,15); /*40th*/
		
		
create table roles(
	id serial primary key,
	role_name int unique not null
);

select * from roles;

alter table roles alter column role_name type varchar(30);

insert into roles(role_name) 
values ('Junior Python developer'),
		('Middle Python developer'),
		('Senior Python developer'),
		('Junior Java developer'),
		('Middle Java developer'),
		('Senior Java developer'),
		('Junior JavaScript developer'),
		('Middle JavaScript developer'),
		('Senior JavaScript developer'),
		('Junior Manual QA engineer'),
		('Middle Manual QA engineer'),
		('Senior Manual QA engineer'),
		('Project Manager'),
		('Designer'),
		('HR'),
		('CEO'),
		('Sales manager'),
		('Junior Automation QA engineer'),
		('Middle Automation QA engineer'),
		('Senior Automation QA engineer')
		;
		
create table roles_employee (
	id serial primary key,
	employee_id int not null unique,
	role_id int not null,
	foreign key(employee_id)
		references employees(id),
	foreign key(role_id)
		references roles(id)
);

select * from roles_employee; 

insert into roles_employee(employee_id, role_id)
values (1,1),
		(2,1),
		(3,2),
		(4,2),
		(5,3),
		(6,13),
		(7,4),
		(8,4),
		(9,5),
		(10,5), /*10th*/
		(15,6),
		(16,14),
		(17,7),
		(18,7),
		(19,8),
		(20,8),
		(21,9),
		(22,15),
		(23,10),
		(24,10), /*20th*/
		(30,11),
		(31,11),
		(32,12),
		(42,16),
		(52,17),
		(62,17),
		(28,17),
		(44,13),
		(58,13),
		(61,15),/*30th*/
		(50,8),
		(51,17),
		(63,17),
		(64,18),
		(65,18),
		(66,19),
		(70,19),
		(11,20),
		(12,20),
		(13,20); /*40th*/