use quanlythuvien;
select * from sach;

select a.tensach,b.tentheloai as tentheloai
from sach as a
inner join theloai as b on a.matheloai = b.matheloai
where tentheloai ='sách tin học';

select * from thesinhvien;


select * from chitietdanhsachmuon;

delete from chitietdanhsachmuon
where madsmuon = '1';


select a.mamuon,a.masach,a.soluongsach, b.ngaymuon
from chitietdanhsachmuon as a
inner join danhsachmuon as b
on a.mamuon = b.mamuon
group by b.ngaymuon <= '2019-11-08';

select a.mathe
from thesinhvien as a
inner join danhsachmuon as b
on a.mathe = b.mathe
where b.ngaytra >'2019-11-08';

select * from danhsachmuon;