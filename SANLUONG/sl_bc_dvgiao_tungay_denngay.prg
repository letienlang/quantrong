*Tinh so lieu bao cao
Close Databases
Use SL_BaoCao_Giao In 0 Alia BC
Select BC
Copy Structure To BCNam
Copy Structure To BCThang
Copy Structure To BCNgay
Use BCNam In 0 Alias BCNam
Use BCThang In 0 Alias BCThang
Use BCNgay In 0 Alias BCNgay

Use &FSoLieu Orde DVGiao In 0 Alia SoLieu


Use &FDVGiao Orde Ma In 0 Alias Tam
Select Tam
Copy To DVGiao
Use
Use DVGiao In 0 Alias DVGiao
Select DVGiao
Sum KeHoach To TongKeHoach
Append Blank
Replace Ma With '***', TenDV1 With 'T�ng c�ng',KeHoach With TongKeHoach
Index On Ma Tag Ma
******* TAO FILE LUY KE TU DAU NAM DEN NGAY BAO CAO : BCNam
Select SoLieu
*Tao tong cac don vi cap 2
Set Filter To Ngay<=DenNgay
Set Order To DVGiao
Total On DVGiao To Tam1
*Tao tong cap 1 cho cac don vi co cap 2
Set Filter To Ngay<=DenNgay And Right(DVGiao,1)#'*'
Set Order To DVGiao1
Total On Left(DVGiao,2) To Tam2
*Tao tong toan Cong ty
Set Filter To Ngay<=DenNgay
Set Order To X
Total On X To Tam3
*Dua solieu vao file bao cao
Use Tam1 In 0
Select Tam1
Replace All HLNuoc With 0,HLDong With 0,HLChen With 0,HLDay With 0
Use
Use Tam2 In 0
Select Tam2
Replace All HLNuoc With 0,HLDong With 0,HLChen With 0,HLDay With 0,DVGiao With Left(DVGiao,2)+'*'
Use
Use Tam3 In 0
Select Tam3
Replace All HLNuoc With 0,HLDong With 0,HLChen With 0,HLDay With 0,DVGiao With '***'
Use

Select BCNam
Append From Tam1
Append From Tam2
Append From Tam3
Replace All LKNuoc With Nuoc
Replace All LKDong With Dong
Replace All LKChen With Chen
Replace All LKDay With Day

Replace All LKKhoNuoc With KhoNuoc
Replace All LKKhoDong With KhoDong
Replace All LKKhoChen With KhoChen
Replace All LKKhoDay With KhoDay
Replace All LKTong With Tong

Replace All LKHLNuoc With LKKhoNuoc*100/LKNuoc For LKNuoc#0
Replace All LKHLDong With LKKhoDong*100/LKDong For LKDong#0
Replace All LKHLChen With LKKhoChen*100/LKChen For LKChen#0
Replace All LKHLDay With LKKhoDay*100/LKDay For LKDay#0

Replace All Nuoc With 0
Replace All Dong With 0
Replace All Chen With 0
Replace All Day With 0

Replace All KhoNuoc With 0
Replace All KhoDong With 0
Replace All KhoChen With 0
Replace All KhoDay With 0
Replace All Tong With 0

******* TAO FILE LUY KE TU DAU THANG DEN NGAY BAO CAO : BCThang
Select SoLieu
DauThang=Ctod('01/'+Transform(Month(DenNgay))+'/'+MNam)
*Tao tong cac don vi cap 2
Set Filter To Between(Ngay,DauThang,DenNgay)
Set Order To DVGiao
Total On DVGiao To Tam1
*Tao tong cap 1 cho cac don vi co cap 2
Set Filter To Between(Ngay,DauThang,DenNgay) And Right(DVGiao,1)#'*'
Set Order To DVGiao1
Total On Left(DVGiao,2) To Tam2
*Tao tong toan Cong ty
Set Filter To Between(Ngay,DauThang,DenNgay)
Set Order To X
Total On X To Tam3
*Dua solieu vao file bao cao
Use Tam1 In 0
Select Tam1
Replace All HLNuoc With 0,HLDong With 0,HLChen With 0,HLDay With 0
Use
Use Tam2 In 0
Select Tam2
Replace All HLNuoc With 0,HLDong With 0,HLChen With 0,HLDay With 0,DVGiao With Left(DVGiao,2)+'*'
Use
Use Tam3 In 0
Select Tam3
Replace All HLNuoc With 0,HLDong With 0,HLChen With 0,HLDay With 0,DVGiao With '***'
Use

Select BCThang
Append From Tam1
Append From Tam2
Append From Tam3
Replace All ThNuoc With Nuoc
Replace All ThDong With Dong
Replace All ThChen With Chen
Replace All ThDay With Day

Replace All ThKhoNuoc With KhoNuoc
Replace All ThKhoDong With KhoDong
Replace All ThKhoChen With KhoChen
Replace All ThKhoDay With KhoDay
Replace All ThTong With Tong

Replace All ThHLNuoc With ThKhoNuoc*100/ThNuoc For ThNuoc#0
Replace All ThHLDong With ThKhoDong*100/ThDong For ThDong#0
Replace All ThHLChen With ThKhoChen*100/ThChen For ThChen#0
Replace All ThHLDay With ThKhoDay*100/ThDay For ThDay#0

Replace All Nuoc With 0
Replace All Dong With 0
Replace All Chen With 0
Replace All Day With 0

Replace All KhoNuoc With 0
Replace All KhoDong With 0
Replace All KhoChen With 0
Replace All KhoDay With 0
Replace All Tong With 0

******* TAO FILE TONGHOP TU NGAY-DEN NGAY BAO CAO : BCNgay
Select SoLieu
*Tao tong cac don vi cap 2
Set Order To DVGiao
Set Filter To Between(Ngay,TuNgay,DenNgay)
Go Top
MLat=Lat
Total On DVGiao To Tam1
*Tao tong cap 1 cho cac don vi co cap 2
Set Filter To Between(Ngay,TuNgay,DenNgay) And Right(DVGiao,1)#'*'
Set Order To DVGiao1
Total On Left(DVGiao,2) To Tam2
*Tao tong toan Cong ty
Set Filter To Between(Ngay,TuNgay,DenNgay)
Set Order To X
Total On X To Tam3
*Dua solieu vao file bao cao
Use Tam1 In 0
Select Tam1
Replace All HLNuoc With 0,HLDong With 0,HLChen With 0,HLDay With 0
Use
Use Tam2 In 0
Select Tam2
Replace All HLNuoc With 0,HLDong With 0,HLChen With 0,HLDay With 0,DVGiao With Left(DVGiao,2)+'*'
Use
Use Tam3 In 0
Select Tam3
Replace All HLNuoc With 0,HLDong With 0,HLChen With 0,HLDay With 0,DVGiao With '***'
Use

Select BCNgay
Append From Tam1
Append From Tam2
Append From Tam3

Replace All HLNuoc With KhoNuoc*100/Nuoc For Nuoc#0
Replace All HLDong With KhoDong*100/Dong For Dong#0
Replace All HLChen With KhoChen*100/Chen For Chen#0
Replace All HLDay With KhoDay*100/Day For Day#0

* DUA SO LIEU VAO FILE BAO CAO
Select BCNam
Append From BCThang
Append From BCNgay
Index On DVGiao To Tam
Total On DVGiao To Tam
Select BC
Zap
Append From Tam
Set Relation To DVGiao Into DVGiao
Replace All tendvg1 With DVGiao.TenDV1,tendvg2 With DVGiao.TenDV2,KeHoach With DVGiao.KeHoach
Replace All TyLe With Tong/(10*KeHoach),ThTyLe With ThTong/(10*KeHoach),LKTyLe With LKTong/(10*KeHoach) For KeHoach#0
LOCATE FOR DVGiao='***'
MKNuoc=KhoNuoc
MKDong=KhoDong
MKChen=KhoChen
MKDay=KhoDay
KhoNuocThang=ThKhoNuoc
KhoDongThang=ThKhoDong
KhoChenThang=ThKhoChen
KhoDayThang=ThKhoDay
KhoNuocNam=LKKhoNuoc
KhoDongNam=LKKhoDong
KhoChenNam=LKKhoChen
KhoDayNam=LKKhoDay

SoRecord=Reccount()
Go Top
