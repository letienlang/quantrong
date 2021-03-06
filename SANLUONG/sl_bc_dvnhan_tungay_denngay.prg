close databases

use SL_BaoCao_Nhan in 0 alia BC
select BC
copy structure to BCNam
copy structure to BCThang
copy structure to BCNgay
use BCNam in 0 alias BCNam
use BCThang in 0 alias BCThang
use BCNgay in 0 alias BCNgay

use &FSoLieu orde DVNhan in 0 alia SoLieu

use &FDVNhan orde Ma in 0 alias Tam
select Tam
copy to DVNhan
use
use DVNhan in 0 alias DVNhan
select DVNhan
append blank
replace Ma with '***', TenDV1 with 'T�ng c�ng'
index on Ma tag Ma

use &FDCSanXuat orde Ma in 0 alias DCSX
select DCSX
set filter to Ngay=DenNgay

******* TAO FILE LUY KE TU DAU NAM DEN NGAY BAO CAO : BCNam
select SoLieu
*Tao tong cac don vi
set filter to Ngay<=DenNgay
set order to DVNhan
total on DVNhan to Tam1
*Tao tong toan Cong ty
set filter to Ngay<=DenNgay
set order to X
total on X to Tam3
*Dua solieu vao file bao cao
use Tam1 in 0
select Tam1
replace all HLNuoc with 0,HLDong with 0,HLChen with 0,HLDay with 0
use
use Tam3 in 0
select Tam3
replace all HLNuoc with 0,HLDong with 0,HLChen with 0,HLDay with 0,DVNhan with '***'
use

select BCNam
append from Tam1
append from Tam3
replace all LKNuoc with Nuoc
replace all LKDong with Dong
replace all LKChen with Chen
replace all LKDay with day

replace all LKKhoNuoc with KhoNuoc
replace all LKKhoDong with KhoDong
replace all LKKhoChen with KhoChen
replace all LKKhoDay with KhoDay
replace all LKTong with Tong

replace all LKHLNuoc with LKKhoNuoc*100/LKNuoc for LKNuoc#0
replace all LKHLDong with LKKhoDong*100/LKDong for LKDong#0
replace all LKHLChen with LKKhoChen*100/LKChen for LKChen#0
replace all LKHLDay with LKKhoDay*100/LKDay for LKDay#0

replace all Nuoc with 0
replace all Dong with 0
replace all Chen with 0
replace all day with 0

replace all KhoNuoc with 0
replace all KhoDong with 0
replace all KhoChen with 0
replace all KhoDay with 0
replace all Tong with 0

******* TAO FILE LUY KE TU DAU THANG DEN NGAY BAO CAO : BCThang
select SoLieu
DauThang=ctod('01/'+transform(month(DenNgay))+'/'+MNam)
*Tao tong cac don vi
set filter to between(Ngay,DauThang,DenNgay)
set order to DVNhan
total on DVNhan to Tam1
*Tao tong toan Cong ty
set filter to between(Ngay,DauThang,DenNgay)
set order to X
total on X to Tam3
*Dua solieu vao file bao cao
use Tam1 in 0
select Tam1
replace all HLNuoc with 0,HLDong with 0,HLChen with 0,HLDay with 0
use
use Tam3 in 0
select Tam3
replace all HLNuoc with 0,HLDong with 0,HLChen with 0,HLDay with 0,DVNhan with '***'
use

select BCThang
append from Tam1
append from Tam3
replace all ThNuoc with Nuoc
replace all ThDong with Dong
replace all ThChen with Chen
replace all ThDay with day

replace all ThKhoNuoc with KhoNuoc
replace all ThKhoDong with KhoDong
replace all ThKhoChen with KhoChen
replace all ThKhoDay with KhoDay
replace all ThTong with Tong

replace all ThHLNuoc with ThKhoNuoc*100/ThNuoc for ThNuoc#0
replace all ThHLDong with ThKhoDong*100/ThDong for ThDong#0
replace all ThHLChen with ThKhoChen*100/ThChen for ThChen#0
replace all ThHLDay with ThKhoDay*100/ThDay for ThDay#0

replace all Nuoc with 0
replace all Dong with 0
replace all Chen with 0
replace all day with 0

replace all KhoNuoc with 0
replace all KhoDong with 0
replace all KhoChen with 0
replace all KhoDay with 0
replace all Tong with 0

******* TAO FILE TONGHOP TU NGAY-DEN NGAY BAO CAO : BCNgay
select SoLieu
*Tao tong cac don vi cap 2
set order to DVNhan
set filter to between(Ngay,TuNgay,DenNgay)
total on DVNhan to Tam1
*Tao tong toan Cong ty
set filter to between(Ngay,TuNgay,DenNgay)
set order to X
total on X to Tam3
*Dua solieu vao file bao cao
use Tam1 in 0
select Tam1
replace all HLNuoc with 0,HLDong with 0,HLChen with 0,HLDay with 0
use
use Tam3 in 0
select Tam3
replace all HLNuoc with 0,HLDong with 0,HLChen with 0,HLDay with 0,DVNhan with '***'
use

select BCNgay
append from Tam1
append from Tam3

replace all HLNuoc with KhoNuoc*100/Nuoc for Nuoc#0
replace all HLDong with KhoDong*100/Dong for Dong#0
replace all HLChen with KhoChen*100/Chen for Chen#0
replace all HLDay with KhoDay*100/day for day#0

* DUA SO LIEU VAO FILE BAO CAO
select BCNam
append from BCThang
append from BCNgay
index on DVNhan to Tam
total on DVNhan to Tam
select BC
zap
append from Tam
set relation to DVNhan into DVNhan
replace all TenDVNhan with DVNhan.TenDV1

set relation to DVNhan into DCSX
replace all ChatLuong with DCSX.ChatLuong,DanhDong with DCSX.DanhDong,Acid with DCSX.Acid,SanXuat with DCSX.SanXuat
replace all Acid with Acid*1000/KhoNuoc for KhoNuoc#0
SoRecord=reccount()
