insert into users(first_name,last_name) 
values ('Alex', 'Danvers'),('Kara', 'Danvers'),('Oliver', 'Queen'),('Ava', 'Sharpe'),('Sara', 'Lance'),('Laurel', 'Lance');

insert into friendships (user_id ,friend_id)
values (1,2),(1,4),(1,6);

insert into friendships (user_id ,friend_id)
values (2,1),(2,3),(2,5);

insert into friendships (user_id ,friend_id)
values (3,2),(3,5);

insert into friendships (user_id ,friend_id)
values (4,3);

insert into friendships (user_id ,friend_id)
values (5,2),(5,6);

insert into friendships (user_id ,friend_id)
values (6,2),(6,3);

select users.first_name , users.last_name  , users2.first_name as friend_first_name , users2.last_name as friend_last_name from users
join friendships on user_id = users.id
left join users as users2 on friend_id = users2.id;

select users.first_name , users.last_name  , users2.first_name as friend_first_name , users2.last_name as friend_last_name from users
join friendships on user_id = users.id
left join users as users2 on friend_id = users2.id
where users.id = 1;

select users.first_name , users.last_name  , count(users2.first_name) as friend_count from users
join friendships on user_id = users.id
left join users as users2 on friend_id = users2.id
group by users.id;

select users.first_name , users.last_name  , count(users2.first_name) as friend_count from users
join friendships on user_id = users.id
left join users as users2 on friend_id = users2.id
group by users.id
order by friend_count desc
limit 1;


select users.first_name, users.last_name ,users2.first_name as friend_first_name from users
join friendships on user_id = users.id
left join users as users2 on friend_id = users2.id
where users.id = (
select users.id from users
group by users.last_name
order by users.last_name
limit 3, 1
);





