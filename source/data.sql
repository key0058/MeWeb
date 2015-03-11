

-- insert into visitor (ip_addr, session_id, agent, visit_date) values ('192.168.0.1', 'xxxxxx', 'chrome', now());

-- insert into me_url (type, name, url, create_date) values ('R', 'Baidu', 'http://www.baidu.com', now());
-- insert into me_url (type, name, url, create_date) values ('R', 'Sina', 'http://www.sina.com', now());

insert into me_url (type, name, url, create_date) values ('F', 'Google+@E', 'https://plus.google.com/105377235918777629297/', now());
insert into me_url (type, name, url, create_date) values ('F', 'Twitter@key0058', 'https://twitter.com/key0058', now());

-- insert into me_auth (type, username, password, create_date) values ('R', '陈香彬', password('123456'), now());
-- insert into me_auth (type, username, password, create_date) values ('F', '48', password('123456'), now());
insert into me_auth (type, username, password, create_date) values ('A', 'chenxiangbin', password('123456'), now());

insert into directory (type, name, link) values ("H", "HTML5", "article.jsp?dirH");
insert into directory (type, name, link) values ("A", "Android", "article.jsp?dirA");
insert into directory (type, name, link) values ("I", "iOS", "article.jsp?dirI");

update directory set link = 'dirH/article' where name = 'HTML5';
update directory set link = 'dirA/article' where name = 'Android';
update directory set link = 'dirI/article' where name = 'iOS';

insert into article (title, introduction, label, dir_id, create_date) values ('Test HTML5 title', 'No introduction', 'good', 1, now());
insert into article (title, introduction, label, dir_id, create_date) values ('Test HTML6 title', 'No introduction', 'good,test', 1, now());

insert into me_url (type, name, url, article_id, create_date) values ('P', 'testImage', 'http://xxxxxx.image', 1, now());
insert into me_url (type, name, url, article_id, create_date) values ('A', 'testLink1', 'http://xxxxxx.txt', 1, now());
insert into me_url (type, name, url, article_id, create_date) values ('A', 'testLink2', 'http://xxxxxx.txt', 1, now());
insert into me_url (type, name, url, article_id, create_date) values ('A', 'testLinktestLink1', 'http://xxxxxx.txt', 1, now());
insert into me_url (type, name, url, article_id, create_date) values ('A', 'testLinktestLink1', 'http://xxxxxx.txt', 1, now());

update me_url set url = 'http://t.cn/Rwn9EjV' where type = 'P' and article_id = 1;

-- Other

desc visitor;
desc message;
desc me_url;
desc me_auth;
desc directory;
desc article;
select * from visitor;
select * from message order by id;
select * from me_url order by id;
select * from me_auth;
select * from directory order by id;
select * from article order by id;


