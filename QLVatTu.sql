use QLVatTU
go
create table Tb_LoaiVatTu
(
 MaLoaiVT varchar(50) primary key,
 TenLoaiVT nvarchar(100) 
)
go
--
Insert into Tb_LoaiVatTu values ('L1',N'TiVi');
Insert into Tb_LoaiVatTu values ('L2',N'Điện Thoại');
Insert into Tb_LoaiVatTu values ('L3',N'LapTop');
Insert into Tb_LoaiVatTu values ('L4',N'Tủ Lạnh');
Insert into Tb_LoaiVatTu values ('L5',N'Điều Hòa');
--

create table Tb_VatTu
( 
 MaVT varchar(50) primary key,
 MaLoaiVT varchar(50),
 TenVT nvarchar(100),
 MaNCC varchar (50),
 SoLuong int,
 Donvi nvarchar(100)
 )
 go  
 --
 Insert into Tb_VatTu values ('VT1','L1',N'Samsung Mobile','NCC1',1000,N'chiếc');
 Insert into Tb_VatTu values ('VT2','L2',N'Lexus','NCC2',100,N'chiếc');
 Insert into Tb_VatTu values ('VT3','L3',N'Nhật Bản','NCC3',2000,N'chiếc');
 Insert into Tb_VatTu values ('VT4','L4',N'Nga','NCC4',70,'chiếc');
 --
  

 create table Tb_NhaCungCap
 (
  MaNCC varchar(50) primary key,
  TenNCC nvarchar(100),
  SDT int,
  Diachi nvarchar(100)
 )
 go

 Insert into Tb_NhaCungCap values ('NCC1','SonTungAuto','0388877777',N'Đường Láng');
 Insert into Tb_NhaCungCap values ('NCC2','LexusTL','09783623',N'Nam Thăng Long');
 Insert into Tb_NhaCungCap values ('NCC3','Cellphones','0455466523',N'Hà đông');
 Insert into Tb_NhaCungCap values ('NCC4','TheGioiDiDong','0423565532',N'Cầu giấy');
 create table Tb_PhieuNhap
 (
  MaPhieu varchar(50) primary key,
  MaNguoiLap varchar(50),
  NgayLap datetime,
  SoLoaiVT int
 )
 go
 Insert into Tb_PhieuNhap values ('PN1','MN1','2021/04/22',N'14201');
 Insert into Tb_PhieuNhap values ('PN2','MN2','2021/02/23',N'31001');
 Insert into Tb_PhieuNhap values ('PN3','MN3','2021/03/14',N'27201');
 go
  create table Tb_PhieuXuat
 (
  MaPhieu varchar(50) primary key,
  MaNguoiLap varchar(50),
  NgayLap datetime,
  SoVT int,
  DiaChi nvarchar(50)
 )
 go
 --
  Insert into Tb_PhieuXuat values ('MP1','MN1','2021/04/22',N'14201',N'Mỹ Đức');
 Insert into Tb_PhieuXuat values ('MP2','MN2','2021/02/23',N'31001',N'Phủ Lý');
 Insert into Tb_PhieuXuat values ('MP3','MN3','2021/03/14',N'27201',N'Hà Nội');
 go
 create table Tb_ChiTietPhieuNhap
 (
   MaPhieu varchar(50)not null ,
   MaVT varchar(50)not null,
   Soluong int,
   Gia float,
  GhiChu nvarchar(100)
 )
 
 Insert into Tb_ChiTietPhieuNhap values ('PN1','VT1','12','14',N'Toi yeu anh Hung');
 Insert into Tb_ChiTietPhieuNhap values ('PN2','VT2','34','15.234',N'Nghia Mom');
 Insert into Tb_ChiTietPhieuNhap values ('PN3','VT3','45','12.5234',N'Xin Chao Moi Nguoi');
 create table Tb_ChiTietPhieuXuat
 (
  MaPhieu varchar(50)not null,
  MaVT varchar(50)not null,
  SoLuong int,
  Gia float,
  GhiChu nvarchar(100)
 )
 go
Insert into Tb_ChiTietPhieuXuat values ('MP1','VT1','12','2.32',N'Love all');
 Insert into Tb_ChiTietPhieuXuat values ('MP1','VT2','14','234',N'Hello ca nha');
 Insert into Tb_ChiTietPhieuXuat values ('MP1','VT3','35','1.234',N'HungDepTrai');
 Insert into Tb_ChiTietPhieuXuat values ('MP2','VT3','59','4',N'CuocSongMa');
 Insert into Tb_ChiTietPhieuXuat values ('MP3','VT3','58','1.4',N'Nghia Mom');
 create table Tb_NguoiDung
 (
  MaNguoiDung varchar(50) primary key,
  MatKhau nvarchar(100),
  Ten nvarchar(100)
 )
 go
 Insert into Tb_NguoiDung values ('MN1',N'14201',N'Đào Hùng');
 Insert into Tb_NguoiDung values ('MN2',N'31101',N'Nghĩa Nguyễn');
 Insert into Tb_NguoiDung values ('MN3',N'27201',N'Hoan Toro');