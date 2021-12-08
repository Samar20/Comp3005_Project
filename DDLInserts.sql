delete from handles;
delete from publishes;
delete from order_ISBN;
delete from owners;
delete from buys;
delete from inOrder;
delete from orders;
delete from book;
delete from publisher;
delete from users;

insert into users values ('10000', 'Indumini', 'indumini@me.com', '123-543-2345', 'password123', '123', 'Sesame Street', 'Ottawa', 'ON', 'K2H8A7', 'Canada', 5);
insert into users values ('10001', 'Samar', 'samar@me.com', '098-765-2343', 'password1234', '321', 'Sesame Street', 'Ottawa', 'ON', 'K2H8A8', 'Canada', 5);
insert into users values ('10002', 'John', 'john@gmail.com', '643-234-9088', 'john123', '33', 'King Street', 'Toronto', 'ON', 'M4T2T1', 'Canada', 1);
insert into users values ('10003', 'Samantha', 'samantha12@hotmail.com', '999-888-7777', 'samAntha12', '98', 'Jason Drive', 'Hamilton', 'ON', 'L0J9G7', 'Canada', 1);
insert into users values ('10004', 'Jackson', 'jackson323@gmail.com', '111-222-3333', 'jjokasd123s', '9128', 'Queen Street', 'Ottawa', 'ON', 'K1Y9F7', 'Canada', 4);
insert into users values ('10005', 'Jessica', 'jessjess@hotmail.com', '321-123-0000', 'jess1ca11', '777', 'Lucky Drive', 'Mississauga', 'ON', 'M4T7D6', 'Canada', 3);

insert into publisher values ('CHP', 'Cedar House Publishers', 'contact@cedarhousepub.com', '407', 'Eastview Drive', 'Friday Harbor', 'Washington', '24572', 'USA', '434-929-8002', 0321000021);
insert into publisher values ('SSC', 'Sound & Seas Co.,', 'contact@sound&seas.com', '123', 'Publisher Ave', 'Ottawa', 'Ontario', 'K19J7X', 'Canada', '613-123-5431', 2092944675);
insert into publisher values ('PP', 'Palimpsest Printing', 'contact@palimpsetprint.com', '432', 'welovesql street', 'Fremont', 'California', '93244', 'USA', '669-432-4325', 9432843295);
insert into publisher values ('ESP', 'Etaoin Shrdlu Press', 'contact@etaoinshrdlu.com', '321', 'book street', 'Toronto', 'Ontario', 'M3C0C3', 'Canada', '416-234-7645', 6543644098);

insert into book values ('989-28-3705-987-7', 'Alanna Saves the Day', 'Bernard', 'Hopf', 'Childrens', '188', '5', '8.99', '20', 'CHP', '8', 'Paperback');
insert into book values ('989-28-3705-592-3', 'Banana Slug and the Glass Half Full', 'Gloria', 'Green', 'Childrens', '12', '4.5', '6.99', '18', 'CHP', '7', 'Paperback');
insert into book values ('989-28-3705-583-1', 'Banana Slug and the Lost Cow', 'Hillary', 'Barnhardt', 'Childrens', '13', '4', '6.99', '23', 'CHP', '10', 'Board book');
insert into book values ('989-28-3705-966-2', 'Heliotrope Pajamas', 'Malin', 'Wolff', 'Childrens', '31', '4.9', '10.99', '35', 'CHP', '5', 'Paperback');

insert into book values ('989-28-79-27078-0', 'No More Lightning', 'Charles', 'Fenimore', 'Fiction', '192', '4.6', '23.99', '14', 'ESP', '15', 'Graphic');
insert into book values ('989-28-79-30536-9', 'Not to Gossip, But', 'Gloria', 'Green', 'Fiction', '311', '3.9', '8.99', '32', 'ESP', '3', 'Mass market paperback');
insert into book values ('989-28-79-52883-6', 'Post Alley', 'Burton', 'Malamud', 'Fiction', '384', '4', '27.99', '20', 'ESP', '10', 'Hardcover');


insert into book values ('989-28-654-2017-5', 'Inconvenient Confessions: a memoir', 'Oliver', 'Lowry', 'Memoir', '337', '4', '29.99', '26', 'PP', '11', 'Paperback');
insert into book values ('989-28-654-7965-4', 'We''re Sisters and We Kinda Like Each Other', 'Patricia', 'Hazzard', 'Memoir', '288', '3', '29.99', '30', 'PP', '10.5', 'Hardcover');
insert into book values ('989-28-654-3899-6', 'Who Did You Think You Were Kidding?', 'Philip', 'Antrimn', 'Memoir', '207', '5', '29.99', '20', 'PP', '15.0', 'Hardcover');

insert into book values ('989-28-79-82749-6', '9803 North Millworks Road', 'Carolyn', 'Segal', 'Mystery', '384', '2', '22.99', '50', 'ESP', '16', 'Hardcover');
insert into book values ('989-28-79-82125-8', 'The Winchcombe Railway Museum Heist', 'Carolyn', 'Segal', 'Mystery', '293', '4', '22.99', '20', 'ESP', '12', 'Hardcover');
insert into book values ('989-28-79-22562-9', 'Zero over Twelve', 'Burton', 'Malamud', 'Mystery', '356', '3.5', '20.99', '28', 'ESP', '13.45', 'Hardcover');

insert into book values ('989-28-654-2620-7', 'Nothing But Capers', 'Abraham', 'Stackhouse', 'Nonfiction', '390', '4', '32.99', '40', 'PP', '17.30', 'Hardcover');
insert into book values ('989-28-654-6507-7', 'Say it with Snap!', 'John W.', 'Spanogle', 'Nonfiction', '387', '2', '15.99', '20', 'PP', '4.5', 'Paperback');
insert into book values ('989-28-654-8573-0', 'The Elephant House', 'John W.', 'Spanogle', 'Nonfiction', '598', '3', '23.99', '30', 'PP', '8.9', 'Paperback');

insert into book values ('989-28-229-0197-6', 'The Scent of Oranges', 'Lynne', 'Danticat', 'Romance', '255', '5', '9.5', '20', 'SSC', '5.6', 'Mass market paperback');
insert into book values ('989-28-229-1404-4', 'The Seawitch Sings', 'Lynne', 'Danticat', 'Romance', '381', '1', '9.5', '21', 'SSC', '7.4', 'Mass market paperback');
insert into book values ('989-28-229-6632-6', 'Whither Thou Goest', 'Lynne', 'Danticat', 'Romance', '423', '3', '9.5', '36', 'SSC', '8', 'Mass market paperback');

insert into book values ('989-28-79-69359-6', 'Concerning Prophecy', 'Grace', 'Harrison', 'SciFi/Fantasy', '706', '3', '21.5', '32', 'ESP', '3.0', 'Hardcover');
insert into book values ('989-28-79-44730-', 'Dust on the Rim', 'Kathy', 'Yglesias', 'SciFi/Fantasy', '575', '1', '8.99', '40', 'ESP', '15.0', 'Mass market paperback');
insert into book values ('989-28-79-40897-8', 'Portmeirion', 'Bianca', 'Thompson', 'SciFi/Fantasy', '656', '4', '21.50', '32', 'ESP', '6.5', 'Hardcover');


insert into book values ('989-28-3705-633-3', 'It''s Never Just a Glass', 'Leonard', 'Nabokov', 'Young Adult', '222', '1', '19.99', '30', 'CHP', '3.5', 'Hardcover');
insert into book values ('989-28-79-14379-4', 'Quiddity and Quoddity', 'Jill', 'Hergesheimer', 'Young Adult', '373', '2', '11.99', '42', 'ESP', '2.0', 'Trade paperback');
insert into book values ('989-28-79-03683-6', 'The Spark and The Ashe', 'Ursula', 'Karénine', 'Young Adult', '340', '4', '18.50', '35', 'ESP', '4.5', 'Hardcover');

insert into orders values ('107020-1','10000','2193-01-02','11.00','1','Shipped');
insert into orders values ('107020-10','10001','2193-01-02','26.00','1','Shipped');
insert into orders values ('107020-11','10002','2193-01-02','32.00','1','Shipped');
insert into orders values ('107020-12','10003','2193-01-02','25.00','1','Shipped');
insert into orders values ('107020-13','10004','2193-01-02','35.00','1','Shipped');
insert into orders values ('107020-14','10005','2193-01-02','11.50','1','Shipped');
insert into orders values ('107020-15','10000','2193-01-02','23.50','1','Shipped');
insert into orders values ('107020-16','10001','2193-01-02','22.00','1','Shipped');
insert into orders values ('107020-17','10002','2193-01-02','14.00','1','Shipped');
insert into orders values ('107020-18','10003','2193-01-02','20.50','1','Shipped');
insert into orders values ('107050-2232','10004','2193-02-01','23.50','1','Shipped');
insert into orders values ('107050-2233','10005','2193-02-01','26.00','1','Shipped');
insert into orders values ('107050-2234','10000','2193-02-01','18.00','1','Shipped');
insert into orders values ('107050-2235','10001','2193-02-01','11.50','1','Shipped');
insert into orders values ('107050-2236','10002','2193-02-01','11.50','1','Shipped');
insert into orders values ('107050-2237','10003','2193-02-01','11.50','1','Shipped');
insert into orders values ('107050-2238','10004','2193-02-01','11.50','1','Shipped');
insert into orders values ('107050-2239','10005','2193-02-01','11.50','1','Shipped');
insert into orders values ('107050-2240','10000','2193-02-01','25.00','1','Shipped');
insert into orders values ('107050-2241','10001','2193-02-01','11.50','1','Shipped');
insert into orders values ('107078-4183','10002','2193-03-01','32.00','1','Pending Shipment');
insert into orders values ('107078-4184','10003','2193-03-01','9.00','1','Pending Shipment');
insert into orders values ('107078-4185','10004','2193-03-01','9.00','1','Pending Shipment');
insert into orders values ('107078-4186','10005','2193-03-01','13.00','1','Pending Shipment');
insert into orders values ('107078-4187','10002','2193-03-01','32.00','1','Pending Shipment');
insert into orders values ('107078-4188','10004','2193-03-01','11.00','1','Pending Shipment');


insert into inOrder values('107020-1','989-28-3705-987-7');
insert into inOrder values('107020-10','989-28-79-27078-0');
insert into inOrder values('107020-11','989-28-654-2017-5');
insert into inOrder values('107020-12','989-28-79-82749-6');
insert into inOrder values('107020-13','989-28-654-2620-7');
insert into inOrder values('107020-14','989-28-229-0197-6');
insert into inOrder values('107020-15','989-28-79-69359-6');
insert into inOrder values('107020-16','989-28-3705-633-3');
insert into inOrder values('107020-17','989-28-79-14379-4');
insert into inOrder values('107020-18','989-28-79-03683-6');
insert into inOrder values('107050-2232','989-28-79-40897-8');
insert into inOrder values('107050-2233','989-28-654-8573-0');
insert into inOrder values('107050-2234','989-28-654-6507-7');
insert into inOrder values('107050-2235','989-28-229-1404-4');
insert into inOrder values('107050-2236','989-28-229-1404-4');
insert into inOrder values('107050-2237','989-28-229-6632-6');
insert into inOrder values('107050-2238','989-28-79-22562-9');
insert into inOrder values('107050-2239','989-28-229-1404-4');
insert into inOrder values('107050-2240','989-28-79-82125-8');
insert into inOrder values('107050-2241','989-28-229-6632-6');
insert into inOrder values('107078-4183','989-28-654-3899-6');
insert into inOrder values('107078-4184','989-28-3705-592-3');
insert into inOrder values('107078-4185','989-28-3705-583-1');
insert into inOrder values('107078-4186','989-28-3705-966-2');
insert into inOrder values('107078-4187','989-28-654-7965-4');
insert into inOrder values('107078-4188','989-28-79-30536-9');




insert into buys values('107020-1','10000');
insert into buys values('107020-10','10001');
insert into buys values('107020-11','10002');
insert into buys values('107020-12','10003');
insert into buys values('107020-13','10004');
insert into buys values('107020-14','10005');
insert into buys values('107020-15','10000');
insert into buys values('107020-16','10001');
insert into buys values('107020-17','10002');
insert into buys values('107020-18','10003');

insert into buys values('107050-2232','10004');
insert into buys values('107050-2233','10005');
insert into buys values('107050-2234','10000');
insert into buys values('107050-2235','10001');
insert into buys values('107050-2236','10002');
insert into buys values('107050-2237','10003');
insert into buys values('107050-2238','10004');
insert into buys values('107050-2239','10005');
insert into buys values('107050-2240','10000');
insert into buys values('107050-2241','10001');

insert into buys values('107078-4183','10002');
insert into buys values('107078-4184','10003');
insert into buys values('107078-4185','10004');
insert into buys values('107078-4186','10005');
insert into buys values('107078-4187','10002');
insert into buys values('107078-4188','10004');

insert into publishes values ('989-28-3705-987-7', 'CHP');
insert into publishes values ('989-28-3705-592-3', 'CHP');
insert into publishes values ('989-28-3705-583-1', 'CHP');
insert into publishes values ('989-28-3705-966-2', 'CHP');
insert into publishes values ('989-28-79-27078-0', 'ESP');
insert into publishes values ('989-28-79-30536-9', 'ESP');
insert into publishes values ('989-28-79-52883-6', 'ESP');
insert into publishes values ('989-28-654-2017-5', 'PP');
insert into publishes values ('989-28-654-7965-4', 'PP');
insert into publishes values ('989-28-654-3899-6', 'PP');
insert into publishes values ('989-28-79-82749-6', 'ESP');
insert into publishes values ('989-28-79-82125-8', 'ESP');
insert into publishes values ('989-28-79-22562-9', 'ESP');
insert into publishes values ('989-28-654-2620-7', 'PP');
insert into publishes values ('989-28-654-6507-7', 'PP');
insert into publishes values ('989-28-654-8573-0', 'PP');
insert into publishes values ('989-28-229-0197-6', 'SSC');
insert into publishes values ('989-28-229-1404-4', 'SSC');
insert into publishes values ('989-28-229-6632-6', 'SSC');
insert into publishes values ('989-28-79-69359-6', 'ESP');
insert into publishes values ('989-28-79-44730-', 'ESP');
insert into publishes values ('989-28-79-40897-8', 'ESP');
insert into publishes values ('989-28-3705-633-3', 'CHP');
insert into publishes values ('989-28-79-14379-4', 'ESP');
insert into publishes values ('989-28-79-03683-6', 'ESP');


insert into owners values ('00000', 'LookInnaAdmin', 'admin@lookinna.com', '123-456-7890', 'password', '222', 'Bookstore Street', 'Ottawa', 'ON', 'K3T0V8', 'Canada', 50000.00);


insert into handles values ('107020-1','00000');
insert into handles values ('107020-10','00000');
insert into handles values ('107020-11','00000');
insert into handles values ('107020-12','00000');
insert into handles values ('107020-13','00000');
insert into handles values ('107020-14','00000');
insert into handles values ('107020-15','00000');
insert into handles values ('107020-16','00000');
insert into handles values ('107020-17','00000');
insert into handles values ('107020-18','00000');
insert into handles values ('107050-2232','00000');
insert into handles values ('107050-2233','00000');
insert into handles values ('107050-2234','00000');
insert into handles values ('107050-2235','00000');
insert into handles values ('107050-2236','00000');
insert into handles values ('107050-2237','00000');
insert into handles values ('107050-2238','00000');
insert into handles values ('107050-2239','00000');
insert into handles values ('107050-2240','00000');
insert into handles values ('107050-2241','00000');
insert into handles values ('107078-4183','00000');
insert into handles values ('107078-4184','00000');
insert into handles values ('107078-4185','00000');
insert into handles values ('107078-4186','00000');
insert into handles values ('107078-4187','00000');
insert into handles values ('107078-4188','00000');


insert into addresses values ('107020-1','10000','123','Sesame St','Ottawa','Ontario','K1T5F3','Canada');
insert into addresses values ('107020-10','10001','231','Owl Lane','Kingston','Ontario','K1T5FS3','Canada');
insert into addresses values ('107020-11','10002','12','Joke St','Hamilton','Ontario','K125F3','Canada');
insert into addresses values ('107020-12','10003','3','DMS Ave','Toronto','Ontario','K4T5F3','Canada');
insert into addresses values ('107020-13','10004','65','Comp Dr','Los Angeles','California','97263','USA');
insert into addresses values ('107020-14','10005','346','Art St','New York','New York','78990','USA');
insert into addresses values ('107020-15','10006','654','Arch St',' Chicago','Illinois','67893','USA');
insert into addresses values ('107020-16','10007','876','Carleton Dr','Vancouver','British Columbia','K2HJ3J','Canada');
insert into addresses values ('107020-17','10008','6543','OttawaU St','Stratford','Ontario','K2B8D7','Canada');
insert into addresses values ('107020-18','10009','765', 'King St','Ajax','Ontario','H8G7F6','Canada');
insert into addresses values ('107050-2232','10010','54','Queen St','Pickering','Ontario','HD8B87','Canada');
insert into addresses values ('107050-2233','10011','5','Prince St','Metcalfe','Ontario','J8B78S','Canada');
insert into addresses values ('107050-2234','10012','876','Princess Way','Greely','Ontario','J3N5H6','Canada');
insert into addresses values ('107050-2235','10013','976','Elizabeth Dr','Cornwall','Ontario','D3F3G4','Canada');
insert into addresses values ('107050-2236','10014','204','House Rd','Smith Falls','Ontario','Q1W2E3','Canada');
insert into addresses values ('107050-2237','10015','1755','Main St','Perth','Ontario','W2E3R4','Canada');
insert into addresses values ('107050-2238','10016','235','Road St','Winchester','Ontario','E3R4T5','Canada');
insert into addresses values ('107050-2239','10017','6543','Meghan Way','Kenora','Ontario','R4T5Y6','Canada');
insert into addresses values ('107050-2240','10018','2365','Bank St','London','Ontario','T5Y6U7','Canada');
insert into addresses values ('107050-2241','10019','743','Young St','Mississauga','Ontario','Y6U7I8','Canada');
insert into addresses values ('107078-4183','10020','624','Dawn Crt','Oshawa','Ontario','E3R4Y6','Canada');
insert into addresses values ('107078-4184','10021','999','Spongebob Way','Ottawa','Ontario','T5I8O9','Canada');
insert into addresses values ('107078-4185','10022','113','Patrick Pvt','Ottawa','Ontario','W2R4T5','Canada');
insert into addresses values ('107078-4186','10023','174','Squidward Ave','Montreal','Quebec','O9I8U7','Canada');
insert into addresses values ('107078-4187','10024','3','Holly Ave','Montreal','Quebec','U7Y6T5','Canada');
insert into addresses values ('107078-4188','10025','5','Science St','Montreal','Quebec','T5R4R3','Canada');

-- waiting for ORDER to complete Handles 



