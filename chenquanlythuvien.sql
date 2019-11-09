use quanlythuvien;


insert into theloai(matheloai, tentheloai)
values('theloai1','sách tin học');
insert into theloai(matheloai, tentheloai)
values('theloai2','sách triết học');
insert into theloai(matheloai, tentheloai)
values('theloai3','sách kế toán');
insert into theloai(matheloai, tentheloai)
values('theloai4','sách xây dựng');
insert into theloai(matheloai, tentheloai)
values('theloai5','sách tiếng anh');

insert into sach(masach, matheloai, tensach, nhaxuatban, tacgia, namxuatban, solantaiban, giathanh, hinhanh)
values('sach1','theloai1','ngôn ngữ java','nguyễn an','tacgia1','1977-01-02',1,30000,'anh1');
insert into sach(masach, matheloai, tensach, nhaxuatban, tacgia, namxuatban, solantaiban, giathanh, hinhanh)
values('sach2','theloai1','ngôn ngữ php','mai thu','tacgia2','1977-03-04',2,40000,'anh2');
insert into sach(masach, matheloai, tensach, nhaxuatban, tacgia, namxuatban, solantaiban, giathanh, hinhanh)
values('sach3','theloai2','triết học','an tiến','tacgia3','1979-08-07',20,50000,'anh3');
insert into sach(masach, matheloai, tensach, nhaxuatban, tacgia, namxuatban, solantaiban, giathanh, hinhanh)
values('sach4','theloai2','mác -lê nin','hoàng thủy','tacgia4','1999-12-01',3,90000,'anh4');
insert into sach(masach, matheloai, tensach, nhaxuatban, tacgia, namxuatban, solantaiban, giathanh, hinhanh)
values('sach5','theloai3','doanh thu doanh nghiệp','lung linh','tacgia5','1992-10-10',10,100000,'anh5');


insert into thesinhvien(mathe, tensinhvien, ngaysinh, diachi, email, sodienthoai, hinhanh)
values('the1','tạ văn công','1994-11-08','phúc thọ, hà nội','tavancong1994@gmail.com','0942199723','hình ảnh của công');
insert into thesinhvien(mathe, tensinhvien, ngaysinh, diachi, email, sodienthoai, hinhanh)
values('the2','nguyên đạt','1995-01-01','nam từ liêm, hà nội','nguyendat@gmail.com','0347937483','hình ảnh của đạt');
insert into thesinhvien(mathe, tensinhvien, ngaysinh, diachi, email, sodienthoai, hinhanh)
values('the3','Tố hưu','1992-03-02','cầu giấy, hà nội','tohuu@gmail.com','012345678','hình ảnh của hưu');
insert into thesinhvien(mathe, tensinhvien, ngaysinh, diachi, email, sodienthoai, hinhanh)
values('the4','thị huyền','1990-04-04','thanh xuân, hà nội','thihuyen@gmail.com','098765432','hình ảnh của huyền');
insert into thesinhvien(mathe, tensinhvien, ngaysinh, diachi, email, sodienthoai, hinhanh)
values('the5','trang mun','1997-06-06','minh khai, hà nội','trangmun@gmail.com','022334455','hình ảnh của trang');
  
insert into danhsachmuon(mamuon, mathe, ngaymuon, ngaytra)
values('muon1','the1','2019-11-01','2019-12-01');
insert into danhsachmuon(mamuon, mathe, ngaymuon, ngaytra)
values('muon2','the1','2019-11-02','2019-12-02');
insert into danhsachmuon(mamuon, mathe, ngaymuon, ngaytra)
values('muon3','the2','2019-11-03','2019-12-03');
insert into danhsachmuon(mamuon, mathe, ngaymuon, ngaytra)
values('muon4','the2','2019-11-09','2019-11-30');
insert into danhsachmuon(mamuon, mathe, ngaymuon, ngaytra)
values('muon5','the3','2019-11-17','2019-11-20');
insert into danhsachmuon(mamuon, mathe, ngaymuon, ngaytra)
values('muon6','the4','2019-10-19','2019-11-11');

insert into chitietdanhsachmuon(mamuon, masach, soluongsach)
values('muon1','sach1',1);
insert into chitietdanhsachmuon(mamuon, masach, soluongsach)
values('muon1','sach2',2);
insert into chitietdanhsachmuon(mamuon, masach, soluongsach)
values('muon1','sach3',3);
insert into chitietdanhsachmuon(mamuon, masach, soluongsach)
values('muon2','sach1',4);
insert into chitietdanhsachmuon(mamuon, masach, soluongsach)
values('muon2','sach4',5);
insert into chitietdanhsachmuon(mamuon, masach, soluongsach)
values('muon2','sach5',6);
insert into chitietdanhsachmuon(mamuon, masach, soluongsach)
values('muon3','sach1',7);
insert into chitietdanhsachmuon(mamuon, masach, soluongsach)
values('muon3','sach2',8);
insert into chitietdanhsachmuon(mamuon, masach, soluongsach)
values('muon3','sach3',9);
insert into chitietdanhsachmuon(mamuon, masach, soluongsach)
values('muon4','sach2',10);
insert into chitietdanhsachmuon(mamuon, masach, soluongsach)
values('muon5','sach1',1);


update sach set namxuatban ='1997-01-02' where masach = 'sach1';
update sach set namxuatban ='1990-04-03' where masach = 'sach2';
update sach set namxuatban ='1999-08-07' where masach = 'sach3';
update sach set namxuatban ='1998-12-01' where masach = 'sach4';
update sach set namxuatban ='1992-10-10' where masach = 'sach5';


update danhsachmuon set ngaymuon ='2019-10-01', ngaytra ='2019-11-10'  where mamuon = 'muon1';
update danhsachmuon set ngaymuon ='2019-10-02', ngaytra ='2019-11-09'  where mamuon = 'muon2';
update danhsachmuon set ngaymuon ='2019-10-03', ngaytra ='2019-11-03'  where mamuon = 'muon3';
update danhsachmuon set ngaymuon ='2019-11-04', ngaytra ='2019-11-17'  where mamuon = 'muon4';
update danhsachmuon set ngaymuon ='2019-11-08', ngaytra ='2019-11-30'  where mamuon = 'muon5';
update danhsachmuon set ngaymuon ='2019-11-08', ngaytra ='2019-11-30'  where mamuon = 'muon6';

select * from danhsachmuon;

update thesinhvien set ngaysinh ='1994-11-08' where mathe = 'the1';
update thesinhvien set ngaysinh ='1995-01-01' where mathe = 'the2';
update thesinhvien set ngaysinh ='1992-03-02' where mathe = 'the3';
update thesinhvien set ngaysinh ='1990-04-04' where mathe = 'the4';
update thesinhvien set ngaysinh ='1997-06-06' where mathe = 'the5';
