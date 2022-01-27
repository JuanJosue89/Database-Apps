/* Delete Tables */
drop table if exists Member;
drop table if exists 'User';
drop table if exists Course;

/* Create Table User */
create table 'User' (
    user_id integer not null auto_increment,
    name varchar(128) unique,
    primary key(user_id)
) engine = innodb character set = utf8;

/* Create Table Course */
create table Course (
    course_id integer not null auto_increment,
    title varchar(128) unique,
    primary key(course_id)
) engine = innodb character set = utf8;

/*Create Table Member */
create table Member (
    user_id integer,
    course_id integer,
    role integer,

    constraint foreign key(user_id) references 'User'(user_id)
    on delete cascade on update cascade,
    constraint foreign key(course_id) references Course(course_id)
    on delete cascade on update cascade,
    
    primary key(user_id, course_id)
)engine = innodb character set = utf8;

/* Reset the Auto_Increment */
alter table 'User' auto_increment + 1;
alter table Course auto_increment + 1;

/* Insert Data on Table User*/
insert into 'User'(name) values('Taliesin');
insert into 'User'(name) values('Denver');
insert into 'User'(name) values('Juwairiyah');
insert into 'User'(name) values('Kainui');
insert into 'User'(name) values('Zoya');
insert into 'User'(name) values('Aisha');
insert into 'User'(name) values('Artemis');
insert into 'User'(name) values('Danna');
insert into 'User'(name) values('Dennis');
insert into 'User'(name) values('Tyler');
insert into 'User'(name) values('Kirstin');
insert into 'User'(name) values('Allisha');
insert into 'User'(name) values('Carra');
insert into 'User'(name) values('Idahosa');
insert into 'User'(name) values('Iliana');

/* Insert Data on Table Course */
insert into Course(title) values('si106');
insert into Course(title) values('si110');
insert into Course(title) values('si206');

/* Insert Data on Table Member */
insert into Member(user_id, course_id, role) values(1, 1, 1);
insert into Member(user_id, course_id, role) values(2, 1, 0);
insert into Member(user_id, course_id, role) values(3, 1, 0);
insert into Member(user_id, course_id, role) values(4, 1, 0);
insert into Member(user_id, course_id, role) values(5, 1, 0);
insert into Member(user_id, course_id, role) values(6, 2, 1);
insert into Member(user_id, course_id, role) values(7, 2, 0);
insert into Member(user_id, course_id, role) values(8, 2, 0);
insert into Member(user_id, course_id, role) values(9, 2, 0);
insert into Member(user_id, course_id, role) values(10, 2, 0);
insert into Member(user_id, course_id, role) values(11, 3, 1);
insert into Member(user_id, course_id, role) values(12, 3, 0);
insert into Member(user_id, course_id, role) values(13, 3, 0);
insert into Member(user_id, course_id, role) values(14, 3, 0);
insert into Member(user_id, course_id, role) values(15, 3, 0);

/* To see the data and the tables */
select 'User'.name, Course.title, Member.role
from 'User' join Course join Member
on 'User'.user_id = Member.user_id and Course.course_id = Member.course_id
order by Course.title, Member.role desc, User.name;