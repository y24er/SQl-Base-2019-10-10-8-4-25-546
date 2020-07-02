create table student(
id varchar2(6) not null,
name varchar2(20)  not null,
age number(3) not null,
sex varchar2(6) not null,
constraint pk_student_id primary key(id)
);



insert into student values(('001','张三',18,'男');
insert into student values('002','李四',20,'女');

create table subject(
id char(4) not null,
subject varchar2(30) not null,
teacher varchar2(30) not null,
description varchar2(100),
constraint pk_subject_id primary key(id)
);

insert into subject values('1001','语文','王老师','本次开始比较简单');
insert into subject values('1002','数学','刘老师','本次考试比较难');

create table score(
id number(4) not null,
student_id varchar2(6) not null,
subject_id varchar2(4) not null,
score number(4,1) default 0,
constraint pk_score_id primary key(id),
constraint fk_score_student_on_studentId foreign key(student_id) references student(id),
constraint fk_score_subject_on_subjectId foreign key(subject_id) references subject(id)
);

insert into score(student_id,subject_id,score)  values('001','1001',80);
insert into score(student_id,subject_id,score)  values('002','1002',60);
insert into score(student_id,subject_id,score)  values('001','1001',70);
insert into score(student_id,subject_id,score)  values('002','1002',60.5);

