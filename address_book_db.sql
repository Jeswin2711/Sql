create database address_book;
use address_book;
create table address_book_table (id int primary key auto_increment, first_name varchar(20), last_name varchar(20), address varchar(20), city varchar(10), state varchar(10), zip bigint(6), phone_number bigint(10) unique not null, email varchar(25) unique);
insert into address_book_table (first_name, last_name, address, city , state , zip , phone_number , email) values ("Jeswin","J","No.37,Krish Street","Perundurai","TamilNadu",638052,8937792743,'jeswin@gmail.com');
insert into address_book_table (first_name, last_name, address, city , state , zip , phone_number , email) values ("Joy","J","No.34,Krish Street","Perundurai","TamilNadu",638052,6783975929,'joy@gmail.com');
insert into address_book_table (first_name, last_name, address, city , state , zip , phone_number , email) values ("Sugu","Suji","Madurai Street","Madurai","TamilNadu",638034,6738837583,'sug.suji@gmail.com');
insert into address_book_table (first_name, last_name, address, city , state , zip , phone_number , email) values ("Abi","santhanam","No.333 , Ji Street","Coimbatore","TamilNadu",657392,7584795629,'abines.hhh@gmail.com');
insert into address_book_table (first_name, last_name, address, city , state , zip , phone_number , email) values ("gopi","jegan","viktat nagar","Karur","TamilNadu",698042,7876572846,'kar.jeg32@gmail.com');
select * from address_book_table;
update address_book_table set city = "Ingur" where first_name = "Joy";
select * from address_book_table;
delete from address_book_table where first_name = "gopi";
select * from address_book_table;
update address_book_table set city = "Perundurai" where first_name = "Joy";
select * from address_book_table;
select * from address_book_table where city = "Perundurai";
select city , count(city) from address_book_table group by city;
select * from address_book_table order by city asc;
alter table address_book_table add column contact_type varchar(20);
select * from address_book_table;
insert into address_book_table (first_name, last_name, address, city , state , zip , phone_number , email , contact_type) values ("Gowtham","Surya","D/no 47 , VijiColony","Erode","TamilNadu",645738,8957922749,'gowth.sur54@gmail.com','Professional');
insert into address_book_table (first_name, last_name, address, city , state , zip , phone_number , email, contact_type) values ("Diva","Rames","88,Kree Street","Chenni","TamilNadu",678392,9856329742,'diva.r999@gmail.com','Friends');
insert into address_book_table (first_name, last_name, address, city , state , zip , phone_number , email, contact_type) values ("Arun","Rahu","No.10,AmithStreet","Ellai","TamilNadu",628051,6543216785,'rahul.ar123@gmail.com','Professional');
update address_book_table set contact_type = "Family" where first_name = "Jeswin";
update address_book_table set contact_type = "Family" where first_name = "Joy";
update address_book_table set contact_type = "Friends" where first_name = "Sugu";
update address_book_table set contact_type = "Professional" where first_name = "Abi";
select * from address_book_table;
select contact_type , count(contact_type) from address_book_table group by contact_type;
update address_book_table set contact_type = "Friends", contact_type = "Family" where first_name = 'Gowtham';

