--1)Создать таблицу employees
--- id. serial,  primary key,
--- employee_name. Varchar(50), not null

create table employees(
	id serial primary key,
	employee_name varchar(50) not null)

--2)Наполнить таблицу employee 70 строками.
	
insert into employees(employee_name)
values
('Ronald Mcquay'),
('Leo Kirkley'),
('Rebecca Gray'),
('Stella James'),
('Lisa Paniagua'),
('Tama Colindres'),
('Rick Ford'),
('Mark Morin'),
('John Jablonski'),
('June Riley'),
('Mary Gunn'),
('Mary Hambright'),
('Opal Morgan'),
('Linda Manfredi'),
('Raymond Dellinger'),
('Patsy Norman'),
('Dorothy Dodd'),
('Walter Hagins'),
('George Richter'),
('Brandy Lieb'),
('Hugh Streicher'),
('Ron Savage'),
('Mark Martinez'),
('Scott Watson'),
('Stephanie Gaffney'),
('Eunice Wason'),
('Robert Mccleskey'),
('Anna Robinson'),
('Robert Miller'),
('Gladys Schiavone'),
('Betty Kubik'),
('Janet Adkinson'),
('Ruth Robinson'),
('Lori Cockfield'),
('Margaret Arrington'),
('Ermelinda Field'),
('Tina Hopes'),
('Mary Ereaux'),
('James Papen'),
('Nancy Laramore'),
('Joann Salazar'),
('Kimberly Roberts'),
('Robert Lunsford'),
('Kim Anderson'),
('Dante Brooks'),
('Gladys Desilva'),
('Peggy Campuzano'),
('Roberta Cormier'),
('William Castellanos'),
('Ada Lamb'),
('Susan Mcgowan'),
('Shane Wilson'),
('Jerry Bethea'),
('Wayne Love'),
('Mario Ashland'),
('Lucas Cantu'),
('Hunter Fitzpatrick'),
('Phil Stine'),
('Mark Finley'),
('Darla Bodi'),
('Rachael Truitt'),
('Jeremy Kenny'),
('Jason Johnston'),
('Gregory Johnsen'),
('Arthur Walker'),
('Muriel Kirchner'),
('Gertie Friedman'),
('Maria Connelly'),
('Barbara Pryce'),
('Gina Gallegos')

--3)Создать таблицу salary
--- id. Serial  primary key,
--- monthly_salary. Int, not null

create table salary(
	id serial primary key,
	monthly_salary int not null)

--4)Наполнить таблицу salary 15 строками:
	
insert into salary(monthly_salary)
values
(1000),
(1100),
(1200),
(1300),
(1400),
(1500),
(1600),
(1700),
(1800),
(1900),
(2000),
(2100),
(2200),
(2300),
(2400),
(2500)

--5)Создать таблицу employee_salary
--- id. Serial  primary key,
--- employee_id. Int, not null, unique
--- salary_id. Int, not null

create table employee_salary(
	id serial primary key,
	employee_id int unique not null,
	salary_id int not null)

--6)Наполнить таблицу employee_salary 40 строками:
--- в 10 строк из 40 вставить несуществующие employee_id
	
insert into employee_salary(employee_id,salary_id)
values
(62, 1), 
(6, 11), 
(51, 4), 
(9, 13), 
(32, 3), 
(48, 11), 
(59, 13), 
(26, 8), 
(47, 5), 
(65, 13), 
(43, 7), 
(14, 13), 
(30, 3), 
(31, 2), 
(23, 8), 
(11, 3), 
(25, 1), 
(54, 12), 
(56, 10), 
(70, 2), 
(57, 12), 
(37, 11), 
(1, 2), 
(13, 1), 
(45, 15), 
(53, 9), 
(49, 10), 
(35, 8), 
(36, 15), 
(40, 9), 
(71, 7), 
(72, 3), 
(73, 14), 
(74, 5), 
(75, 5), 
(76, 6), 
(77, 7), 
(78, 14), 
(79, 12), 
(80, 2)

--7)Создать таблицу roles
--- id. Serial  primary key,
--- role_name. int, not null, unique

create table roles(
	id serial primary key,
	role_name int unique not null)

--8)Поменять тип столба role_name с int на varchar(30)
	
alter table roles alter column role_name type varchar(30)

--9)Наполнить таблицу roles 20 строками:

insert into roles(role_name)
values
('Junior Python developer'),
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

--10)Создать таблицу roles_employee
-- - id. Serial  primary key,
-- - employee_id. Int, not null, unique (внешний ключ для таблицы employees, поле id)
-- - role_id. Int, not null (внешний ключ для таблицы roles, поле id)

create table roles_employee(
	id serial primary key,
	employee_id int unique not null,
	role_id int not null,
	foreign key (employee_id)
		references employees(id),
	foreign key (role_id)
		references roles(id))
	
--11)Наполнить таблицу roles_employee 40 строками:
	
insert into roles_employee(employee_id,role_id)
values
(14, 7),
(65, 6),
(16, 5),
(2, 1),
(4, 8),
(23, 6),
(51, 6),
(29, 19),
(67, 15),
(28, 12),
(70, 9),
(61, 8),
(1, 2),
(56, 18),
(12, 10),
(66, 12),
(36, 8),
(22, 17),
(62, 6),
(52, 8),
(43, 2),
(47, 19),
(3, 5),
(38, 9),
(30, 12),
(63, 7),
(44, 7),
(24, 9),
(10, 20),
(7, 7),
(50, 19),
(55, 3),
(54, 3),
(8, 3),
(46, 9),
(40, 10),
(41, 6),
(64, 1),
(37, 16),
(57, 17)
-- 1.ааппап