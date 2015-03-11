
drop database if exists meblog;
create database meblog;

use meblog;

drop table if exists visitor;
create table visitor (
	id int(10) primary key auto_increment,
	ip_addr varchar(20) not null,
	agent varchar(20),
	count int(10),
	visit_date datetime not null,
	create_date datetime not null
)engine=innodb default charset=utf8 auto_increment=1;

-- 2015-01-18

drop table if exists message;
create table message (
	id int(10) primary key auto_increment,
	user_name varchar(20),
	email_addr varchar(20),
	content varchar(100),
	type varchar(1) not null default 'M',
	reply_msg_id int(10) default 0,
	create_date datetime not null
)engine=innodb default charset=utf8 auto_increment=1;


-- 2015-02-17

drop table if exists me_url;
create table me_url (
	id int(10) primary key auto_increment,
	type varchar(1) not null,
	name varchar(20),
	url varchar(100),
	create_date datetime not null
)engine=innodb default charset=utf8 auto_increment=1;


-- 2015-02-26

drop table if exists me_auth;
create table me_auth (
	id int(10) primary key auto_increment,
	type varchar(1) not null,
	username varchar(20),
	password varchar(50),
	create_date datetime not null
)engine=innodb default charset=utf8 auto_increment=1;

-- 2015-03-04

drop table if exists directory;
create table directory (
	id int(10) primary key auto_increment,
	type varchar(2) not null,
	name varchar(20) not null,
	link varchar(30) not null
)engine=innodb default charset=utf8 auto_increment=1;

-- 2015-03-06

drop table if exists article;
create table article (
	id int(10) primary key auto_increment,
	title varchar(50),
	introduction varchar(100),
	label varchar(50),
	dir_id int(10),
	create_date datetime not null
)engine=innodb default charset=utf8 auto_increment=1;

-- alter table me_url drop column article_id;
alter table me_url add column article_id int(10);

-- 2015-03-08
-- alter table message drop column ip_addr;
alter table message add column ip_addr varchar(20);

-- 2015-03-09
alter table directory add unique (type);







