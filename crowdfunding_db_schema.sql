-- drop tables if they exist

drop table if exists contracts;
drop table if exists category;
drop table if exists subcategory;
drop table if exists campaign;

-- creating the 'contact' table and setting primary key

Create table contacts (
	contact_id int NOT NULL,
	first_name varchar (100) NOT NULL,
	last_name varchar (100) NOT NULL,
	email varchar (100) NOT NULL,
		primary key (contact_id)
	);
	
-- creating the 'category' table and setting primary key

Create table category (
	category_id char (4) NOT NULL,
	category varchar (100) NOT NULL,
		primary key (category_id)
	);
	
-- creating the 'subcategory' table and setting primary key

Create table subcategory (
	subcategory_id varchar (100) NOT NULL,
	subcategory varchar (100) NOT NULL,
		primary key (subcategory_id)
	);
	
-- creating the 'campaign' table and setting the primary key

Create table campaign (
	cf_id int NOT NULL,
	contact_id int NOT NULL,
	company_name varchar (100) NOT NULL,
	description varchar (100) NOT NULL,
	goal int NOT NULL,
	pledged int NOT NULL,
	outcome varchar (100) NOT NULL,
	backers_count int NOT NULL,
	country char (2) NOT NULL,
	currency char (3) NOT NULL,
	launched_date date NOT NULL,
	end_date date NOT NULL,
	category_id varchar (100) NOT NULL,
	subcategory_id varchar (100) NOT NULL,
		primary key (cf_id),
		foreign key (contact_id) references contacts(contact_id),
		foreign key (category_id) references category(category_id),
		foreign key (subcategory_id) references subcategory(subcategory_id)
	);
	
select * from contacts;
select * from category;
select * from subcategory;
select * from campaign; 
	
