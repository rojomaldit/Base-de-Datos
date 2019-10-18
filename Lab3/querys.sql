-- EJ 1
drop view if exists N;
create view N as (
    select * from takes
    where takes.grade = "F"
);

-- EJ 3
drop table if exists map_note;
create table map_note(letter varchar(3), num int);
insert into map_note values('A', '10');
insert into map_note values('B', '8');
insert into map_note values('C', '6');
insert into map_note values('D', '4');
insert into map_note values('F', '0');

-- select * from map_note;

select avg(num) as a, ID
	from takes join map_note 
	on grade = letter
    group by ID;

-- EJ 4
drop view if exists C;
create view C as (
	select s.room_number, s.year, s.semester
	from section as s join classroom as c
	on s.room_number = c.room_number 
	and s.building = c.building
);
select * from section as s join C
where s.room_number != C.room_number
and s.semester = C.semester
and s.year = C.year;

-- EJ 5
drop view if exists facultad;
create view facultad as (
	select ID, name as nombre, dept_name as departamento 
    from instructor
);
select * from facultad;

-- EJ 6
drop view if exists CSinstructors;
create view CSinstructors as (
	select * from instructor 
    where dept_name LIKE "Comp. Sci.%"
);
select * from CSinstructors;

-- EJ 7
create function semester_t (id int)
returns table (ID int, semester varchar(20))
return ( select ID, semester from takes where takes.ID = id);

drop procedure if exists myProcedure;

create procedure myProcedure(id int)
   select semester from takes where id = takes.Id;


call myProcedure(99977);

 
create trigger up_cred
after insert on takes
for each row
update student s, course c set s.tot_cred = s.tot_cred + c.credits
where s.ID = NEW.ID AND c.course_id = NEW.course_id;
 


create function sumita (a int, b int)
returns int
	return a + b;

select sumita(ID, 1) from R;

ssh -l lcaballero788 -L 3307:172.18.7.140:3306 -N -f mail.famaf.unc.edu.ar
 mysql -h 127.0.0.1 -P 3307 -u umysql_g6 -p


