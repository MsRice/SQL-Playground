INSERT INTO dojos (name) values ("Dojo1"), ("Dojo2"),("Dojo3");

delete from dojos where name in ( "Dojo1" , "Dojo2", "Dojo3");

INSERT INTO dojos (name) values ("Another_Dojo1"), ("Another_Dojo2"),("Another_Dojo3");

insert into students (name ,dojo_id) 
values ("Rice" , 4) ,("John" , 4),("Will" , 4);

insert into students (name ,dojo_id) 
values ("Josh" , 5) ,("Jake" , 5),("Ashleigh" , 5);

insert into students (name ,dojo_id) 
values ("Autum" , 6) ,("Brenda" , 6),("Barry" , 6);

select * from students
where dojo_id = 4;

select * from students
where dojo_id = 6;

select * from students
order by id desc
limit 1;

select * from students
join dojos on dojos.id = students.dojo_id
where students.id =6;

select * from students
join dojos on dojos.id = students.dojo_id