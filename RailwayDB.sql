Enter password: ****
Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 8
Server version: 8.0.33 MySQL Community Server - GPL

Copyright (c) 2000, 2023, Oracle and/or its affiliates.

Oracle is a registered trademark of Oracle Corporation and/or its
affiliates. Other names may be trademarks of their respective
owners.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

mysql> create database railway_system;
Query OK, 1 row affected (0.29 sec)

mysql> use railway_system;
Database changed

mysql> create table user(
    -> user_id int primary key,
    -> password varchar(50) not null,
    -> email_id varchar(80) unique,
    -> phone_no varchar(15),
    -> address varchar(30),
    -> age int,
    -> gender varchar(2)
    -> );
Query OK, 0 rows affected (0.52 sec)

mysql> insert into user values(10020,"1234%%&","jayesh@gmail.com",9898221366,"Pune",32,"M");
Query OK, 1 row affected (0.03 sec)

mysql> insert into user values(10021,"3241%%&","Kiran@gmail.com",1525381696,"Delhi",39,"F");
Query OK, 1 row affected (0.01 sec)

mysql> insert into user values(10022,"8772@!","Om@gmail.com",7622351287,"Mumbai",29,"M");
Query OK, 1 row affected (0.01 sec)

mysql> insert into user values(10023,"9901$@","Lily@gmail.com",0999772187,"Pune",26,"F");
Query OK, 1 row affected (0.01 sec)

mysql> insert into user values(10024,"6725*%","Purabh@gmail.com",2539119365,"Banglore",46,"M");
Query OK, 1 row affected (0.01 sec)

mysql> select* from user;
+---------+----------+------------------+------------+----------+------+--------+
| user_id | password | email_id         | phone_no   | address  | age  | gender |
+---------+----------+------------------+------------+----------+------+--------+
|   10020 | 1234%%&  | jayesh@gmail.com | 9898221366 | Pune     |   32 | M      |
|   10021 | 3241%%&  | Kiran@gmail.com  | 1525381696 | Delhi    |   39 | F      |
|   10022 | 8772@!   | Om@gmail.com     | 7622351287 | Mumbai   |   29 | M      |
|   10023 | 9901$@   | Lily@gmail.com   | 999772187  | Pune     |   26 | F      |
|   10024 | 6725*%   | Purabh@gmail.com | 2539119365 | Banglore |   46 | M      |
+---------+----------+------------------+------------+----------+------+--------+
5 rows in set (0.00 sec)

mysql> create table passenger(
    -> passenger_id int primary key,
    -> name varchar(30) not null,
    -> age int,
    -> gender varchar(2),
    -> ticket_no int,
    -> train_no int
    -> );
Query OK, 0 rows affected (0.17 sec)

mysql> insert into passenger values(9000700,"Jayesh",32,"M",99030,20,"Seat_Sleeper");
Query OK, 1 row affected (0.01 sec)

mysql> insert into passenger values(9000705,"Purabh",46,"M",99050,20,"Seat_AC_tier1");
Query OK, 1 row affected (0.01 sec)

mysql> insert into passenger values(9000715,"Lily",26,"F",99040,40,"Seat_AC_tier3");
Query OK, 1 row affected (0.01 sec)

mysql> insert into passenger values(9000720,"Kiran",39,"F",99020,50,"Seat_Sleeper");
Query OK, 1 row affected (0.01 sec)

mysql> insert into passenger values(9000735,"Om",29,"M",99010,30,"Seat_tier2");
Query OK, 1 row affected (0.01 sec)

mysql> alter table passenger add Class varchar(20);
Query OK, 0 rows affected (0.35 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> select* from passenger;
+--------------+--------+------+--------+-----------+----------+---------------+
| passenger_id | name   | age  | gender | ticket_no | train_no | Class         |
+--------------+--------+------+--------+-----------+----------+---------------+
|      9000700 | Jayesh |   32 | M      |     99030 |       20 | Seat_Sleeper  |
|      9000705 | Purabh |   46 | M      |     99050 |       20 | Seat_AC_tier1 |
|      9000715 | Lily   |   26 | F      |     99040 |       40 | Seat_AC_tier3 |
|      9000720 | Kiran  |   39 | F      |     99020 |       50 | Seat_Sleeper  |
|      9000735 | Om     |   29 | M      |     99010 |       30 | Seat_tier2    |
+--------------+--------+------+--------+-----------+----------+---------------+
5 rows in set (0.00 sec)

mysql> create table station(
    -> station_code varchar(10) primary key,
    -> station_name varchar(50)
    -> );
Query OK, 0 rows affected (0.14 sec)

mysql> insert into station values("ALB", "Pune station");
Query OK, 1 row affected (0.02 sec)

mysql> insert into station values("CKK", "Chennai station");
Query OK, 1 row affected (0.01 sec)

mysql> insert into station values("KYM", "Banglore station");
Query OK, 1 row affected (0.01 sec)

mysql> insert into station values("GZB", "Ghaziabad station");
Query OK, 1 row affected (0.00 sec)

mysql> insert into station values("NDLS", "NewDelhi station");
Query OK, 1 row affected (0.00 sec)

mysql> insert into station values("MS", "Mumbai station");
Query OK, 1 row affected (0.00 sec)

mysql> select* from station;
+--------------+-------------------+
| station_code | station_name      |
+--------------+-------------------+
| ALB          | Pune station      |
| CKK          | Chennai station   |
| GZB          | Ghaziabad station |
| KYM          | Banglore station  |
| MS           | Mumbai station    |
| NDLS         | NewDelhi station  |
+--------------+-------------------+
6 rows in set (0.00 sec)

mysql> create table train(
    -> train_no int primary key,
    -> train_name varchar(50) unique,
    -> `Seat_Sleeper` int(4) NOT NULL,
    -> `Seat_AC_tier1` int(4) NOT NULL,
    -> `Seat_AC_tier2` int(4) NOT NULL,
    -> `Seat_AC_tier3` int(4) NOT NULL
    -> );
Query OK, 0 rows affected, 4 warnings (0.16 sec)

mysql> insert into train values(20,"Duranto",200,100,120,120);
Query OK, 1 row affected (0.01 sec)

mysql> insert into train values(30,"Chennai Express",200,100,130,130);
Query OK, 1 row affected (0.01 sec)

mysql> insert into train values(40,"Shadabti express",200,150,130,130);
Query OK, 1 row affected (0.00 sec)

mysql> insert into train values(50,"Delhi express",200,150,150,130);
Query OK, 1 row affected (0.01 sec)

mysql> insert into train values(60,"Kolkata express",200,150,150,120);
Query OK, 1 row affected (0.01 sec)

mysql> select* from train;
+----------+------------------+--------------+---------------+---------------+---------------+
| train_no | train_name       | Seat_Sleeper | Seat_AC_tier1 | Seat_AC_tier2 | Seat_AC_tier3 |
+----------+------------------+--------------+---------------+---------------+---------------+
|       20 | Duranto          |          200 |           100 |           120 |           120 |
|       30 | Chennai Express  |          200 |           100 |           130 |           130 |
|       40 | Shadabti express |          200 |           150 |           130 |           130 |
|       50 | Delhi express    |          200 |           150 |           150 |           130 |
|       60 | Kolkata express  |          200 |           150 |           150 |           120 |
+----------+------------------+--------------+---------------+---------------+---------------+
5 rows in set (0.00 sec)

mysql> create table ticket(
    -> ticket_no int(10) primary key auto_increment,
    -> train_no int not null,
    -> date_of_journey date not null,
    -> user_id int not null,
    -> KEY `user_id`(`user_id`),
    -> KEY `train_no`(`train_no`),
    -> CONSTRAINT `user_match` foreign key (user_id) references `user`(`user_id`) on delete cascade,
    -> CONSTRAINT `train_match` foreign key (train_no) references `train`(`train_no`) on update cascade
    -> );
Query OK, 0 rows affected, 1 warning (0.33 sec)

mysql> alter table ticket add column source varchar(10) AFTER train_no, add column dest varchar(10) AFTER source;
Query OK, 0 rows affected (0.33 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> alter table ticket add constraint t1 foreign key(source) references station(station_code), add constraint t2 foreign key(dest) references station(station_code);
Query OK, 0 rows affected (0.35 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> insert into ticket values(99010,30,"MS","CKK","23-06-21",10022);
Query OK, 1 row affected (0.04 sec)

mysql> insert into ticket values(99020,50,"NDLS","MS","23-07-11",10021);
Query OK, 1 row affected (0.01 sec)

mysql> insert into ticket values(99030,20,"ALB","NDLS","23-07-17",10020);
Query OK, 1 row affected (0.01 sec)

mysql> insert into ticket values(99040,40,"MS","GZB","23-08-27",10024);
Query OK, 1 row affected (0.01 sec)

mysql> insert into ticket values(99050,20,"ALB","KYM","23-08-09",10023);
Query OK, 1 row affected (0.00 sec)

mysql> select* from ticket;
+-----------+----------+--------+------+-----------------+---------+
| ticket_no | train_no | source | dest | date_of_journey | user_id |
+-----------+----------+--------+------+-----------------+---------+
|     99010 |       30 | MS     | CKK  | 2023-06-21      |   10022 |
|     99020 |       50 | NDLS   | MS   | 2023-07-11      |   10021 |
|     99030 |       20 | ALB    | NDLS | 2023-07-17      |   10020 |
|     99040 |       40 | MS     | GZB  | 2023-08-27      |   10024 |
|     99050 |       20 | ALB    | KYM  | 2023-08-09      |   10023 |
+-----------+----------+--------+------+-----------------+---------+
5 rows in set (0.00 sec)

mysql> create table stoppage(
    -> train_no int not null,
    -> station_code varchar(10) not null,
    -> arrival_time time default null,
    -> departure_time time default null,
    -> primary key(train_no, station_code),
    -> constraint `train_match1` foreign key (`train_no`) references `train`(`train_no`) on delete cascade on update cascade,
    -> constraint `station_match1` foreign key (`station_code`) references `station`(`station_code`) on delete cascade on update cascade
    -> );
Query OK, 0 rows affected (0.45 sec)

mysql> alter table stoppage add check(extract(hour from arrival_time)<24 and extract(hour from departure_time)<24);
Query OK, 0 rows affected (0.09 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> insert into stoppage values(20,"ALB",'22:15:00','22:50:00');
Query OK, 1 row affected (0.01 sec)

mysql> insert into stoppage values(50,"NDLS",'10:05:00','10:35:00');
Query OK, 1 row affected (0.01 sec)

mysql> insert into stoppage values(30,"CKK",'09:15:00','09:55:00');
Query OK, 1 row affected (0.01 sec)

mysql> insert into stoppage values(40,"GZB",'14:45:00','15:15:00');
Query OK, 1 row affected (0.01 sec)

mysql> insert into stoppage values(60,"ALB",'16:05:00','16:45:00');
Query OK, 1 row affected (0.01 sec)

mysql> select* from stoppage;
+----------+--------------+--------------+----------------+
| train_no | station_code | arrival_time | departure_time |
+----------+--------------+--------------+----------------+
|       20 | ALB          | 22:15:00     | 22:50:00       |
|       30 | CKK          | 09:15:00     | 09:55:00       |
|       40 | GZB          | 14:45:00     | 15:15:00       |
|       50 | NDLS         | 10:05:00     | 10:35:00       |
|       60 | ALB          | 16:05:00     | 16:45:00       |
+----------+--------------+--------------+----------------+
5 rows in set (0.00 sec)

mysql> alter table passenger add constraint p1 foreign key(train_no) references train(train_no);
Query OK, 0 rows affected (0.83 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> alter table passenger add constraint p2 foreign key(ticket_no) references ticket(ticket_no);
Query OK, 0 rows affected (0.57 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> delimiter //
mysql> create trigger t_cancellation
    -> before delete on ticket for each row
    -> begin
    -> set @train_no= old.train_no;
    -> set @ticket_no= old.ticket_no;
    -> set @Class =(select p.class from passenger p where p.ticket_no= @ticket_no);
    -> if @Class= Seat_AC_tier1 then update train set Seat_AC_tier1= Seat_AC_tier1+1 where train_no= @train_no;
    -> elseif @Class= Seat_Sleeper then update train set Seat_Sleeper = Seat_Sleeper+1 where train_no= @train_no;
    -> elseif @Class= Seat_AC_tier2 then update train set Seat_AC_tier2 = Seat_AC_tier2+1 where train_no= @train_no;
    -> elseif @Class= Seat_AC_tier3 then update train set Seat_AC_tier3 = Seat_AC_tier3+1 where train_no= @train_no;
    -> end if;
    -> END //
    -> delimiter ;
Query OK, 0 rows affected (0.03 sec)

mysql> delete from passenger where ticket_no=99010;
Query OK, 1 row affected (0.01 sec)

mysql> select* from passenger;
+--------------+--------+------+--------+-----------+----------+---------------+
| passenger_id | name   | age  | gender | ticket_no | train_no | Class         |
+--------------+--------+------+--------+-----------+----------+---------------+
|      9000700 | Jayesh |   32 | M      |     99030 |       20 | Seat_Sleeper  |
|      9000705 | Purabh |   46 | M      |     99050 |       20 | Seat_AC_tier1 |
|      9000715 | Lily   |   26 | F      |     99040 |       40 | Seat_AC_tier3 |
|      9000720 | Kiran  |   39 | F      |     99020 |       50 | Seat_Sleeper  |
+--------------+--------+------+--------+-----------+----------+---------------+
4 rows in set (0.00 sec)

/* Find the time at which last train  leaves New delhi station */
mysql> create view f(departure_time) as select departure_time from stoppage where station_code in(select station_code from station where station_name="NewDelhi station");
Query OK, 0 rows affected (0.02 sec)

mysql> select* from f;
+----------------+
| departure_time |
+----------------+
| 10:35:00       |
+----------------+
1 row in set (0.00 sec)

/* Find the number of seats in the selected class*/
mysql> select sum(Seat_Sleeper) from train where train_no=20;
+-------------------+
| sum(Seat_Sleeper) |
+-------------------+
|               200 |
+-------------------+
1 row in set (0.00 sec)

