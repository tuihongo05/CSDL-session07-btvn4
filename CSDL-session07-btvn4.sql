CREATE DATABASE session07_btvn4;
USE session07_btvn4;

CREATE TABLE products(
	MaSanPham INT AUTO_INCREMENT PRIMARY KEY,
    TenSanPham VARCHAR(255) NOT NULL UNIQUE,
    LoaiSanPham VARCHAR(100) NOT NULL,
    GiaBan DECIMAL(10,2)
);

CREATE INDEX idx_loaisanpham_giaban
ON products(LoaiSanPham, GiaBan);

SHOW INDEX FROM products;