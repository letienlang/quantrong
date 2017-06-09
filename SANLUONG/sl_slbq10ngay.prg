Close Databases
USE &FSoLieu
Set Order To Ngay
Total On Ngay TO Tam
Use Tam
Locate For Ngay=DenNgay
Skip -9
If !Bof()
	Sum Tong Next 10 To XX
	BQKho10Ngay=XX/10
Else
	BQKho10Ngay=0
ENDIF
