/*
	Objective 1
*/

create table if not exists user (
	user_id INT,
	user_name VARCHAR(50)
);
create table if not exists booking (
	user_id INT,
	booking_id VARCHAR(40)
);

/*
	dummy data for table user
*/
insert into user (user_id, user_name) values (1, 'Errol Chiddy');
insert into user (user_id, user_name) values (2, 'Ambros Lidstone');
insert into user (user_id, user_name) values (3, 'Thaxter Rolingson');
insert into user (user_id, user_name) values (4, 'Beverlie Dallon');
insert into user (user_id, user_name) values (5, 'Mano Dashwood');
insert into user (user_id, user_name) values (6, 'Lari Matuszewski');
insert into user (user_id, user_name) values (7, 'Ike Varnam');
insert into user (user_id, user_name) values (8, 'Rebekkah Beneteau');
insert into user (user_id, user_name) values (9, 'Vidovic Averay');
insert into user (user_id, user_name) values (10, 'Kissiah Scholling');

/* 
	dummy data for table user
	- users with prime numbered ids have less than 3 bookings
	- user_id==1 and 10 has no bookings
*/
insert into booking (user_id, booking_id) values (2, 'd8d0487d-a74a-44ff-9688-5cec406fb274');
insert into booking (user_id, booking_id) values (2, '7353d01e-c68c-42bf-b581-d5ec0626b417');
insert into booking (user_id, booking_id) values (3, '9293da3b-3fae-45c8-a79f-10ec9f0449c8');
insert into booking (user_id, booking_id) values (4, '59a8573d-73ad-461d-9022-38697810ab40');
insert into booking (user_id, booking_id) values (4, '10d491ee-a15d-4c0c-af1a-79299d716487');
insert into booking (user_id, booking_id) values (4, '2bc71d88-195e-4c88-afd5-68e08390e58e');
insert into booking (user_id, booking_id) values (4, '8c1e15e0-f41c-436d-8de2-146b227bd805');
insert into booking (user_id, booking_id) values (5, '27fecbd7-12c2-47a3-8d07-8861a5d66c96');
insert into booking (user_id, booking_id) values (5, '92dd0d72-96ed-4339-a2b5-5c8f303fa5b4');
insert into booking (user_id, booking_id) values (6, 'e7424f9d-4b60-4265-a313-95ab67ca9ef2');
insert into booking (user_id, booking_id) values (6, 'ef733b2a-5091-4a88-9dc6-bd4c322afd65');
insert into booking (user_id, booking_id) values (6, 'dc95d88b-a6b6-44c1-ad35-41ac89e3d276');
insert into booking (user_id, booking_id) values (6, 'f8e97290-d8bb-464f-8c0a-92f31fdc7e4c');
insert into booking (user_id, booking_id) values (6, '70d4f5eb-f5aa-4a0f-8820-c2a2836badd0');
insert into booking (user_id, booking_id) values (7, '6347d21a-22f5-449c-a4cc-6ae6ff7e025d');
insert into booking (user_id, booking_id) values (8, '3fc9d26f-920e-412d-a26b-8624c8d902af');
insert into booking (user_id, booking_id) values (8, '0382654a-34bf-4fcd-a53c-3740fc71e6e9');
insert into booking (user_id, booking_id) values (8, '9ba7a3cb-244a-4027-b88c-b703a4413c18');
insert into booking (user_id, booking_id) values (8, 'f1caf0e1-1c55-406d-bc5e-4d04349151c3');
insert into booking (user_id, booking_id) values (8, 'eb43614b-1805-4ccd-9b3f-611b5de0a393');
insert into booking (user_id, booking_id) values (9, 'c7e7eea7-e99c-47d7-a646-695ab9497d10');
insert into booking (user_id, booking_id) values (9, '1bee4b88-f2d1-47a5-89a1-3c4911c81aa4');
insert into booking (user_id, booking_id) values (9, 'd4fc72ac-d406-4e4f-9f37-1f8110f0be9a');
