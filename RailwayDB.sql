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

mysql> use railway system;
ERROR 1049 (42000): Unknown database 'railway'
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

mysql> create table passenger(
    -> passenger_id int primary key,
    -> name varchar(30) not null,
    -> age int,
    -> gender varchar(2),
    -> ticket_no int,
    -> train_no int
    -> );
Query OK, 0 rows affected (0.17 sec)

mysql> create table station(
    -> station_code varchar(10) primary key,
    -> station_name varchar(50)
    -> );
Query OK, 0 rows affected (0.14 sec)

mysql> create table train(
    -> train_no int primary key,
    -> train_name varchar(50) unique,
    -> `Seat_Sleeper` int(4) NOT NULL,
    -> `Seat_AC_tier1` int(4) NOT NULL,
    -> `Seat_AC_tier2` int(4) NOT NULL,
    -> `Seat_AC_tier3` int(4) NOT NULL
    -> );
Query OK, 0 rows affected, 4 warnings (0.16 sec)

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

mysql> alter table passenger add constraint p1 foreign key(train_no) references train(train_no);
Query OK, 0 rows affected (0.83 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> alter table passenger add constraint p2 foreign key(ticket_no) references ticket(ticket_no);
Query OK, 0 rows affected (0.57 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> alter table ticket add column source varchar(10) AFTER train_no, add column dest varchar(10) AFTER source;
Query OK, 0 rows affected (0.33 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> alter table ticket add constraint t1 foreign key(source) references station(station_code), add constraint t2 foreign key(dest) references station(station_code);
Query OK, 0 rows affected (0.35 sec)
Records: 0  Duplicates: 0  Warnings: 0

