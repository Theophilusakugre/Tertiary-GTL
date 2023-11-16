# Data definition language
# Create statement


# create object_type object_name;

create database tertiary;

use tertiary;

create table students (name varchar(20));


# alter statement 
# add 
# remove
# rename

# alter table students add column object_name datatype;

alter table students add column age int;

alter table students 
add column location varchar(50);

#rename object_type object_name to new_object_name
rename table students to stds ;


create table info (age int);


drop table info;

#truncate  object_type object_name

truncate table stds;







# Data Manipulation language

# select 
# select * from object_name;

select * from employees;

select * from employees.employees;

use employees;








# Data Types


create table students 
(country char(5),
name varchar(15),
age int);
/* 

Strings
"theo" 4 symbols
character char()
variable character varchar()
enum     enum('M','F')


Integers

tinyint
smallint 10000
mediumint
int    
bigint


decimal(p,s)
precision and scale
15.12345
grade decimal(7,5)
numeric(7,5)
12.2345677
float(7,5)


date
datetime




*/


/*
create table table_name 
(
col1 datatype constraints,
col2 datatype constraints
)
*/

create database sales;

use sales;
drop table sales;
create table sales
(purchase_no int auto_increment,
date_of_p date,
customer_id int,
item_code varchar(10),
primary key(purchase_no),
foreign key(customer_id) references customers(customer_id)) ;

create table customers 
(customer_id int auto_increment,
first_name varchar(50),
last_name varchar(50) null,
email varchar(150) not null,
no_of_compl int default 0,
primary key(customer_id),
unique key (email));

use employees;


# Select statement
# select col1, col4 from 
select emp_no,first_name 
from employees;

select * from employees;


# select where

select * from employees
where first_name='mark';

select emp_no,last_name,hire_date from employees
where hire_date > '2000-01-01';

select * from employees
where hire_date > '2000-01-01';



# select and 


select * from employees
where hire_date > '2000-01-01' and gender = 'F';


#select or

select * from employees
where hire_date > '2000-01-01' or gender = 'F';



#select in/not in


select * from employees
where first_name in ('mark','joshua','mike','nathan');


select * from employees
where first_name not in ('mark','joshua','mike','nathan');

# select  like/ not like


select * from employees 
where first_name like('mar%') and gender = 'F';

select * from employees 
where first_name not like('mar%');


select * from employees 
where first_name like('%ar%');

select * from employees 
where first_name like('mar_');


#select between and

select * from employees
where hire_date between '1999-09-01' and '2000-01-10';


select * from employees
where hire_date not between '1999-09-01' and '2000-01-10';


#is null /is not null


select * from employees
where first_name is not null;


select * from employees
where last_name is null;



# comparison

select * from employees
where first_name !='denis';


select * from employees
where hire_date > '2000-01-01';


#select distinct
select gender from employees;
select distinct gender from employees;




# data control language