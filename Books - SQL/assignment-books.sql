use books_schema;

INSERT INTO users (‏first_name, last_name) VALUES ('Jan‏e', 'Amsden'),('Emily' , 'Dixon'),('Theodore' , 'Dostoevsky'),('William' , 'Shapiro'),('Lao' , 'Xiu');

INSERT INTO books (title ,num_of_pages) 
VALUES ('C Sharp', 356),('Java', 214),('Python', 394),('PHP', 221),('Ruby', 525600);


UPDATE books
SET title = "C#"
WHERE title = 'C Sharp';

update users
set ‏first_name = 'Bill'
where users.id = 4;

insert into books_has_users (book_id,user_id)
values (1, 1) , (2,1);

insert into books_has_users (book_id,user_id)
values (1, 2) , (2,2),(3,2);

insert into books_has_users (book_id,user_id)
values (1, 3) , (2,3),(3,3) ,(4,3);

insert into books_has_users (book_id,user_id)
values (1, 4) , (2,4),(3,4) ,(4,4),(5,4);

select users.‏first_name 
from users 
join books_has_users on user_id = users.id
join books on book_id = books.id
where books.id = 3;

delete users from users
join books_has_users on user_id=users.id
join books on book_id = books.id
where books.id = 3
limit 1;

insert into books_has_users (
book_id , user_id)
value (2,5);

select title ,user_id from books
left join books_has_users on book_id = books.id
where user_id = 3;

select ‏first_name from users
join books_has_users on user_id = users.id
join books on book_id = books.id
where book_id = 5;


