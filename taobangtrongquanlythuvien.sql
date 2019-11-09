use quanlythuvien;

create table theloai
(
matheloai char(20) not null primary key,
tentheloai char(100)
);

create table sach
(
masach char(20) not null,
matheloai char(20) not null,
tensach char(255) not null,
nhaxuatban char(100) not null,
tacgia char(100) not null,
namxuatban date,
solantaiban int,
giathanh int,
hinhanh char(100),
primary key(masach),
foreign key(matheloai) references theloai(matheloai)
);

create table thesinhvien
(
mathe char(20) not null,
tensinhvien char(100) not null,
ngaysinh date,
diachi char(100),
email char(100),
sodienthoai char(15),
hinhanh char(100),
primary key(mathe)
);

create table danhsachmuon
(
mamuon char(20) not null,
mathe char(20) not null,
ngaymuon date,
ngaytra date,
primary key(mamuon),
foreign key(mathe) references thesinhvien(mathe)
);

create table chitietdanhsachmuon
(
madsmuon int not null auto_increment,
mamuon char(20) not null,
masach char(20) not null,
soluongsach int,
primary key(madsmuon),
foreign key(mamuon) references danhsachmuon(mamuon),
foreign key(masach) references sach(masach)
);


drop table sach,theloai,chitietdanhsachmuon,danhsachmuon,thesinhvien;