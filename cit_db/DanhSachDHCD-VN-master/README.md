# DanhSachDHCD-VN
Danh Sách các trường Đại Học,Cao Đẳng Việt Nam cập nhật 19/03/2019

## Nguồn
https://thituyensinh.vn/frontendTs/faces/LienHe?loai=truong

## Cách lấy 
chọn số bản ghi > tổng số bản ghi đang có sau đó
Bật F12 lên cho đoạn code js này vào.
```var truong = [];
$(".x11e tbody tr").each(function(index,item){
	truong.push ({
	code:$(item).find("td").eq(1).text(),
	name:$(item).find("td").eq(2).text()
})
})
console.log(truong)
