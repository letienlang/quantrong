CLOSE DATA
	use SL_SOLIEU2006
	index on DVGiao tag DVGiao
	index on left(DVGiao,2) tag DVGiao1
	index on DVGiao+dtoc(Ngay) tag Giao_Ngay
	index on DVNhan tag DVNhan
	index on DVNhan+dtoc(Ngay) tag Nhan_Ngay
	index on Ngay tag Ngay
	index on DVGiao+DVNhan+dtoc(Ngay) tag DVGN_Ngay
	index on X tag X

	use SL_DVGIAO2006
	index on Ma tag Ma
	index on left(Ma,2) tag MaC1
	
	use SL_DVNHAN2006
	index on Ma tag Ma

	use SL_DCSANXUAT2006
	index on Ngay tag Ngay
	index on Ma tag Ma


