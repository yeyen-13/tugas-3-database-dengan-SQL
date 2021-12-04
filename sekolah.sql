create database sekolah;

show databases;
use sekolah;
create table siswa(
id int auto_increment primary key,
nama varchar (30),
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

create table pembimbing(
id int auto_increment primary key,
nama varchar (15)
);

show tables;
insert into pembimbing
(nama)values("gay");

select * from pembimbing;

create table ekstrakulikuler(
id int auto_increment primary key,
nama varchar (30),
pembimbing_id int,
foreign key (pembimbing_id) references pembimbing(id)
);

show tables;

insert into ekstrakulikuler
(nama, pembimbing_id) value ("tenis meja",5);

select * from ekstrakulikuler;

select ekstrakulikuler.id,ekstrakulikuler.nama, pembimbing.nama as pembimbing
from ekstrakulikuler
left join pembimbing on ekstrakulikuler.pembimbing_id = pembimbing.id;

create table ambil_ekstrakulikuler(
id int auto_increment primary key,
siswa_id int,
ekstrakulikuler_id int,
foreign key (siswa_id) references siswa(id),
foreign key (ekstrakulikuler_id) references ekstrakulikuler(id)
);

insert into ambil_ekstrakulikuler
(siswa_id, ekstrakulikuler_id ) values (4,4);

select * from ambil_ekstrakulikuler;

select siswa.id , siswa.nama, siswa.kelas, ekstrakulikuler.nama as ekstrakulikuler
from ambil_ekstrakulikuler
join siswa on ambil_ekstrakulikuler. siswa_id = siswa.id
join ekstrakulikuler on  ambil_ekstrakulikuler.ekstrakulikuler_id = ekstrakulikuler.id
;






drop table ekstrakulikuler;
drop table ambil_ekstrakulikuler;
show tables;

