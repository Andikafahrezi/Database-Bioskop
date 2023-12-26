create database addustcorp

use addustcorp

create table pelanggan(
Id_Pelanggan int not null PRIMARY KEY,
Nama varchar(50) not null,
Alamat varchar(30) not null,
Jenis_Kelamin varchar(10) not null,
No_hp varchar(15) not null,
Email varchar(30) not null,
)

create table pemesanan(
Id_Pemesanan int PRIMARY KEY not null,
Id_Pelanggan int not null,
id_Tiket int not null,
Tanggal_Pemesanan date not null,
Jumlah int not null,
Total_Harga varchar(20) not null,
FOREIGN KEY (Id_Pelanggan) REFERENCES pelanggan(Id_Pelanggan),
FOREIGN KEY (Id_Tiket) REFERENCES tiket(Id_Tiket),
)

create table jadwal(
Id_Jadwal int PRIMARY KEY not null,
Id_Film int not null,
Tanggal date not null,
Jam_Mulai time not null,
Jam_Selesai time not null,
FOREIGN KEY (Id_Film) REFERENCES film(Id_Film),
)

create table tiket(
Id_Tiket int PRIMARY KEY not null,
Id_Jadwal int not null,
Id_Studio int not null,
Id_Kursi int not null,
Id_Film int not null,
Harga varchar(20) not null,
Stok int not null,
FOREIGN KEY (Id_Jadwal) REFERENCES jadwal(Id_Jadwal),
FOREIGN KEY (Id_Studio) REFERENCES studio(Id_Studio),
FOREIGN KEY (Id_Kursi) REFERENCES kursi(Id_Kursi),
FOREIGN KEY (Id_Film) REFERENCES film(Id_Film),
)


create table kursi(
Id_Kursi int not null PRIMARY KEY,
Id_Studio int not null,
No_Kursi int not null,
status_kursi varchar(20) not null,
FOREIGN KEY (Id_Studio) REFERENCES studio(Id_Studio),
)

create table studio(
Id_Studio int not null PRIMARY KEY,
Nama_Studio varchar(30) not null,
Id_Film int not null,
Kapasitas int not null,
FOREIGN KEY (Id_Film) REFERENCES film(Id_Film),
)

drop table pelanggan

create table film(
Id_Film int not null PRIMARY KEY,
Judul_Film varchar(50) not null,
)


insert into pelanggan(Id_Pelanggan, Nama, Alamat,Jenis_Kelamin,No_hp,Email) values
('1','Uzkenk Betot','Paya Bintaro','Laki-Laki','0875856876', 'Uzkenk5@gmail.com')

insert into pelanggan(Id_Pelanggan, Nama, Alamat,Jenis_Kelamin,No_hp,Email) values
('2','Asep Spakbor','Kemanggisan Bandung','Laki-Laki','081532434343', 'Asepselalu@gmail.com')

insert into pelanggan(Id_Pelanggan, Nama, Alamat,Jenis_Kelamin,No_hp,Email) values
('3','Dejan Sukri Stankovic','Semarang Utara','Laki-Laki','0813878078', 'Dejan234@gmail.com')

insert into pelanggan(Id_Pelanggan, Nama, Alamat,Jenis_Kelamin,No_hp,Email) values
('4','Budi Koevlink','Menteng Barat','Laki-Laki','081543324234', 'Budiinthesky@gmail.com')

insert into pelanggan(Id_Pelanggan, Nama, Alamat,Jenis_Kelamin,No_hp,Email) values
('5','Nathasha Rahma','Banguntapan Bantul','Perempuan','081579912403','natrahmaa@gmail.com')

insert into pelanggan(Id_Pelanggan, Nama, Alamat,Jenis_Kelamin,No_hp,Email) values
('6','Syakira Alya','Wirobrajan Yogyakarta','Perempuan','085231876421', 'syakiraa156@gmail.com')

insert into pelanggan(Id_Pelanggan, Nama, Alamat,Jenis_Kelamin,No_hp,Email) values
('7','Dafa Fauzan','Tempel Sleman','Laki-Laki','085231876421', 'fauzandaf376@gmail.com')

insert into pelanggan(Id_Pelanggan, Nama, Alamat,Jenis_Kelamin,No_hp,Email) values
('8','Ozora','New york','Perempuan','0342424224', 'Ozora@gmail.com')

insert into pelanggan(Id_Pelanggan, Nama, Alamat,Jenis_Kelamin,No_hp,Email) values
('9','Julia','Pondok Betung','Perempuan','085222342342', 'Julia6@gmail.com')

insert into pelanggan(Id_Pelanggan, Nama, Alamat,Jenis_Kelamin,No_hp,Email) values
('10','Kalvin Darmawan','Sudirman','Laki-Laki','08526667969', 'KD8739@gmail.com')

insert into pemesanan
(Id_Pemesanan, Id_Pelanggan,Id_Tiket,Tanggal_Pemesanan,Jumlah,Total_Harga)values('2005218713','1','6','2023-12-20','2','Rp80.000,00')

insert into pemesanan
(Id_Pemesanan, Id_Pelanggan,Id_Tiket,Tanggal_Pemesanan,Jumlah,Total_Harga)values('2005218714','2','7','2023-12-20','3','Rp135.000,00')

insert into pemesanan
(Id_Pemesanan, Id_Pelanggan,Id_Tiket,Tanggal_Pemesanan,Jumlah,Total_Harga)values('2105218822','3','8','2023-12-21','3','Rp135.000,00')

insert into pemesanan
(Id_Pemesanan, Id_Pelanggan,Id_Tiket,Tanggal_Pemesanan,Jumlah,Total_Harga)values('2105218823','10','9','2023-12-21','5','Rp8.00.000,00')

insert into pemesanan
(Id_Pemesanan, Id_Pelanggan,Id_Tiket,Tanggal_Pemesanan,Jumlah,Total_Harga)values('2105218824','4','10','2023-12-21','2','Rp80.000,00')

insert into pemesanan
(Id_Pemesanan, Id_Pelanggan,Id_Tiket,Tanggal_Pemesanan,Jumlah,Total_Harga)values('2105218825','5','11','2023-12-21','3','Rp135.000,00')

insert into pemesanan
(Id_Pemesanan, Id_Pelanggan,Id_Tiket,Tanggal_Pemesanan,Jumlah,Total_Harga)values('2105218826','6','12','2023-12-21','1','Rp50.000,00')

insert into pemesanan
(Id_Pemesanan, Id_Pelanggan,Id_Tiket,Tanggal_Pemesanan,Jumlah,Total_Harga)values('2105218827','7','13','2023-12-21','3','Rp150.000,00')

insert into pemesanan
(Id_Pemesanan, Id_Pelanggan,Id_Tiket,Tanggal_Pemesanan,Jumlah,Total_Harga)values('2105218828','8','14','2023-12-21','5','Rp200.000,00')

insert into pemesanan
(Id_Pemesanan, Id_Pelanggan,Id_Tiket,Tanggal_Pemesanan,Jumlah,Total_Harga)values('2105218829','9','15','2023-12-21','5','Rp200.000,00')

insert into jadwal(Id_Jadwal, Id_Film,Tanggal,Jam_Mulai,Jam_Selesai)values('1','10','2021-05-20','12:45:00','14:55:00')
insert into jadwal(Id_Jadwal, Id_Film,Tanggal,Jam_Mulai,Jam_Selesai)values('2','9','2021-05-20','14:55:00','17:05:00')
insert into jadwal(Id_Jadwal, Id_Film,Tanggal,Jam_Mulai,Jam_Selesai)values('3','7','2021-05-21','12:30:00','14:40:00')
insert into jadwal(Id_Jadwal, Id_Film,Tanggal,Jam_Mulai,Jam_Selesai)values('4','4','2021-05-21','17:00:00','19:00:00')
insert into jadwal(Id_Jadwal, Id_Film,Tanggal,Jam_Mulai,Jam_Selesai)values('5','5','2021-05-21','17:00:00','19:00:00')
insert into jadwal(Id_Jadwal, Id_Film,Tanggal,Jam_Mulai,Jam_Selesai)values('6','3','2021-05-21','17:00:00','19:00:00')
insert into jadwal(Id_Jadwal, Id_Film,Tanggal,Jam_Mulai,Jam_Selesai)values('7','3','2021-05-21','17:00:00','19:00:00')
insert into jadwal(Id_Jadwal, Id_Film,Tanggal,Jam_Mulai,Jam_Selesai)values('8','2','2021-05-21','17:00:00','19:00:00')
insert into jadwal(Id_Jadwal, Id_Film,Tanggal,Jam_Mulai,Jam_Selesai)values('9','1','2021-05-21','17:00:00','19:00:00')
insert into jadwal(Id_Jadwal, Id_Film,Tanggal,Jam_Mulai,Jam_Selesai)values('10','4','2021-05-21','17:00:00','19:00:00')



insert into tiket(Id_Tiket,Id_jadwal,Id_Studio,Id_kursi,Id_Film,Harga,Stok)values('6','1','1','1','1','Rp40.000,00','100')
insert into tiket(Id_Tiket,Id_jadwal,Id_Studio,Id_kursi,Id_Film,Harga,Stok)values('7','2','2','4','10','Rp45.000,00','150')
insert into tiket(Id_Tiket,Id_jadwal,Id_Studio,Id_kursi,Id_Film,Harga,Stok)values('8','3','2','3','4','Rp45.000,00','220')
insert into tiket(Id_Tiket,Id_jadwal,Id_Studio,Id_kursi,Id_Film,Harga,Stok)values('9','4','6','7','7','Rp40.000,00','35')
insert into tiket(Id_Tiket,Id_jadwal,Id_Studio,Id_kursi,Id_Film,Harga,Stok)values('10','9','2','3','6','Rp60.000,00','350')
insert into tiket(Id_Tiket,Id_jadwal,Id_Studio,Id_kursi,Id_Film,Harga,Stok)values('11','9','7','3','5','Rp55.000,00','240')
insert into tiket(Id_Tiket,Id_jadwal,Id_Studio,Id_kursi,Id_Film,Harga,Stok)values('12','3','2','2','4','Rp50.000,00','300')
insert into tiket(Id_Tiket,Id_jadwal,Id_Studio,Id_kursi,Id_Film,Harga,Stok)values('13','3','5','6','8','Rp100.000,00','400')
insert into tiket(Id_Tiket,Id_jadwal,Id_Studio,Id_kursi,Id_Film,Harga,Stok)values('14','7','3','1','2','Rp40.000,00','30')
insert into tiket(Id_Tiket,Id_jadwal,Id_Studio,Id_kursi,Id_Film,Harga,Stok)values('15','3','3','8','9','Rp50.000,00','350')


insert into kursi(Id_Kursi,Id_Studio,No_Kursi,status_kursi)values('1','9','0021','tersedia')
insert into kursi(Id_Kursi,Id_Studio,No_Kursi,status_kursi)values('2','10','0052','tidak tersedia')
insert into kursi(Id_Kursi,Id_Studio,No_Kursi,status_kursi)values('3','1','0034','tersedia')
insert into kursi(Id_Kursi,Id_Studio,No_Kursi,status_kursi)values('4','2','0060','tidak tersedia')
insert into kursi(Id_Kursi,Id_Studio,No_Kursi,status_kursi)values('5','3','0034','tersedia')
insert into kursi(Id_Kursi,Id_Studio,No_Kursi,status_kursi)values('6','4','0060','tidak tersedia')
insert into kursi(Id_Kursi,Id_Studio,No_Kursi,status_kursi)values('7','5','0034','tersedia')
insert into kursi(Id_Kursi,Id_Studio,No_Kursi,status_kursi)values('8','6','0034','tersedia')
insert into kursi(Id_Kursi,Id_Studio,No_Kursi,status_kursi)values('9','7','0034','tersedia')
insert into kursi(Id_Kursi,Id_Studio,No_Kursi,status_kursi)values('10','8','0060','tidak tersedia')

insert into studio(Id_Studio,Nama_Studio,Id_Film,Kapasitas)values('1','Starium','7','30')
insert into studio(Id_Studio,Nama_Studio,Id_Film,Kapasitas)values('2','Real 3d','9', '48')
insert into studio(Id_Studio,Nama_Studio,Id_Film,Kapasitas)values('3','Dolby 3d','10','50')
insert into studio(Id_Studio,Nama_Studio,Id_Film,Kapasitas)values('4','Aquarium','8','28')
insert into studio(Id_Studio,Nama_Studio,Id_Film,Kapasitas)values('5','Studio one','1','20')
insert into studio(Id_Studio,Nama_Studio,Id_Film,Kapasitas)values('6','Stark','2','38')
insert into studio(Id_Studio,Nama_Studio,Id_Film,Kapasitas)values('7','Bloom','3','58')
insert into studio(Id_Studio,Nama_Studio,Id_Film,Kapasitas)values('8','Galaxy','4','88')
insert into studio(Id_Studio,Nama_Studio,Id_Film,Kapasitas)values('9','Venus','5','38')
insert into studio(Id_Studio,Nama_Studio,Id_Film,Kapasitas)values('10','Astreum','6','28')

insert into film(Id_Film,Judul_Film)values('1','Maleficent')
insert into film(Id_Film,Judul_Film)values('2','Age of ultron')
insert into film(Id_Film,Judul_Film)values('3','Susana')
insert into film(Id_Film,Judul_Film)values('4','Joker')
insert into film(Id_Film,Judul_Film)values('5','Guardian Of Galaxy')
insert into film(Id_Film,Judul_Film)values('6','Insidious')
insert into film(Id_Film,Judul_Film)values('7','The Conjuring')
insert into film(Id_Film,Judul_Film)values('8','Starwars II')
insert into film(Id_Film,Judul_Film)values('9','Fast and Furious 7')
insert into film(Id_Film,Judul_Film)values('10','The meg')


select pemesanan.Id_Pemesanan, pemesanan.Tanggal_Pemesanan,pemesanan.Jumlah,tiket.Harga, pemesanan.Total_Harga,pelanggan.Nama from pemesanan
inner join tiket on pemesanan.Id_Tiket = tiket.Id_Tiket
inner join pelanggan on pemesanan.Id_Pelanggan = pelanggan.Id_Pelanggan

select studio.Nama_Studio, film.Judul_Film from studio
inner join film on studio.Id_Film = film.Id_Film




select tiket.Id_Tiket, jadwal.Tanggal, studio.Nama_Studio,studio.Kapasitas, film.Judul_Film from tiket
inner join jadwal on tiket.Id_Jadwal = jadwal.Id_Jadwal
inner join studio on tiket.Id_Studio = studio.Id_Studio
inner join film on tiket.Id_Film = film.Id_Film


create procedure CariKursi_dikafff
@Ketersediaankursii varchar (15)
as
begin
select * from kursi where status_kursi= @Ketersediaankursii
end

exec CariKursi_dikafff 'tersedia'

select * from film
USE addustcorp
SELECT name FROM sys.tables

update film
SET Judul_Film = 'Spiderman III'
where Id_Film='3'