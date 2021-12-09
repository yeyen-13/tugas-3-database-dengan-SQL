create database Sekolah;
show databases;
use Sekolah;
create table siswa(
id int auto_increment primary key,
nama varchar(20),
kelas int
);
show tables;
insert into siswa
(nama, kelas)values
("yeyen", 1),
("himawari", 2),
("mitsuki", 3),
("kaguya", 4),
("orocimaru", 5);

select * from siswa;
create table ekstrakulikuler(
id int auto_increment primary key,
nama varchar (30),
pembimbing  varchar (20)
);

show tables;
insert into ekstrakulikuler
(nama, pembimbing) value 
("tenis meja","naruto"),
("tenis bulutangkis","hinata"),
("tenis menari","ani"),
("tenis sepak_bola","budi"),
("tenis karate","rara"),
("tenis badminton","aldus");

select * from ekstrakulikuler;

create table ambil_ekstrakulikuler(
id int auto_increment primary key,
siswa_id int,
ekstrakulikuler_id int,
foreign key (siswa_id) references siswa(id),
foreign key (ekstrakulikuler_id) references ekstrakulikuler(id)
);

insert into ambil_ekstrakulikuler
(siswa_id, ekstrakulikuler_id ) values 
(1,1),
(1,2),
(2,2),
(3,3),
(3,5),
(4,4),
(4,6),
(5,4);

select * from ambil_ekstrakulikuler;

select siswa.id , siswa.nama, siswa.kelas, ekstrakulikuler.nama as ekstrakulikuler,ekstrakulikuler.pembimbing
from ambil_ekstrakulikuler
join siswa on ambil_ekstrakulikuler. siswa_id = siswa.id
join ekstrakulikuler on  ambil_ekstrakulikuler.ekstrakulikuler_id = ekstrakulikuler.id
;


