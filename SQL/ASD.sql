create database job;

use job;

create table salaries (
id int auto_increment primary key,
amount int not null,
date varchar(30) not null
);

insert into salaries (amount, date) values (6000, '01-12-2021');

insert into salaries (amount, date) values (4000, '01-12-2021');

insert into salaries (amount, date) values (6000, '01-11-2021');

insert into salaries (amount, date) values (1000, '01-11-2021');

insert into salaries (amount, date) values (6000, '01-10-2021');

insert into salaries (amount, date) values (1000, '01-10-2021');

create table employees (
id int auto_increment primary key,
first_name varchar(30) not null,
last_name varchar(30) not null,
salary_id int not null,
foreign key (salary_id) references salaries (id)
);

insert into employees (first_name, last_name, salary_id) values ('Jack', 'Daniels', 1);

insert into employees (first_name, last_name, salary_id) values ('Josh', 'Brown', 3);

insert into employees (first_name, last_name, salary_id) values ('Brenda', 'Daniels', 5);

insert into employees (first_name, last_name, salary_id) values ('Megan', 'Brown', 2);

insert into employees (first_name, last_name, salary_id) values ('Klarissa', 'Fox', 4);

insert into employees (first_name, last_name, salary_id) values ('Richard', 'Jones', 6);

insert into employees (first_name, last_name, salary_id) values ('Melinda', 'Grace', 1);

insert into employees (first_name, last_name, salary_id) values ('Frost', 'Daniels', 3);

insert into employees (first_name, last_name, salary_id) values ('Taisha', 'Kler',5);

insert into employees (first_name, last_name, salary_id) values ('Sasha', 'Rotcher', 2);

insert into employees (first_name, last_name, salary_id) values ('Lena', 'Malik', 4);

insert into employees (first_name, last_name, salary_id) values ('Vanessa', 'Grey', 6);

insert into employees (first_name, last_name, salary_id) values ('John', 'Travolta', 2);

insert into employees (first_name, last_name, salary_id) values ('Larry', 'Guilford', 4);

insert into employees (first_name, last_name, salary_id) values ('Milton', 'Dihl', 6);

insert into employees (first_name, last_name, salary_id) values ('Mary', 'Simons', 1);

insert into employees (first_name, last_name, salary_id) values ('Kathy', 'Forb', 3);

insert into employees (first_name, last_name, salary_id) values ('Fred', 'Lee', 5);


create table salary_employee (
id int auto_increment primary key,
receive boolean,
salary_id int not null,
foreign key (salary_id) references salaries (id), 
employee_id int not null,
foreign key (employee_id) references employees (id)
);
 
 select * from salary_employee;
 
 insert into salary_employee (receive, salary_id, employee_id) values (1, 1, 1);
 
 insert into salary_employee (receive, salary_id, employee_id) values (1, 3, 1);
 
 insert into salary_employee (receive, salary_id, employee_id) values (1, 5, 1);
 
 insert into salary_employee (receive, salary_id, employee_id) values (1, 1, 7);
 
 insert into salary_employee (receive, salary_id, employee_id) values (1, 3, 7);
 
 insert into salary_employee (receive, salary_id, employee_id) values (1, 5, 7);
 
 insert into salary_employee (receive, salary_id, employee_id) values (1, 1, 4);
 
 insert into salary_employee (receive, salary_id, employee_id) values (1, 3, 4);
 
 insert into salary_employee (receive, salary_id, employee_id) values (1, 5, 4);
 
 insert into salary_employee (receive, salary_id, employee_id) values (1, 2, 10);
 
 insert into salary_employee (receive, salary_id, employee_id) values (1, 4, 10);
 
 insert into salary_employee (receive, salary_id, employee_id) values (1, 6, 10);
 
 insert into salary_employee (receive, salary_id, employee_id) values (1, 2, 14);
 
 insert into salary_employee (receive, salary_id, employee_id) values (1, 4, 14);
 
 insert into salary_employee (receive, salary_id, employee_id) values (1, 6, 14);
 
 insert into salary_employee (receive, salary_id, employee_id) values (1, 2, 17);
 
 insert into salary_employee (receive, salary_id, employee_id) values (1, 4, 17);
 
 insert into salary_employee (receive, salary_id, employee_id) values (1, 6, 17);
 
 select * from salary_employee;
 select * from salaries;
 
 select sum(amount) as lave, first_name, employees.id as id,
 employees.first_name as first_name,
 employees.last_name as last_name,
 salaries.amount as amount 
 from employees 
 left join salaries on employees.salary_id = salaries.id group by first_name having amount > 3000; 
 
 
 
 
 