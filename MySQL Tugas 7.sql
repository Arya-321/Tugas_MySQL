DELIMITER $$
CREATE PROCEDURE inputPelanggan(
    kode VARCHAR(10),
    nama VARCHAR(45),
    jk CHAR(1),
    tgl_lahir DATE,
    email VARCHAR(30),
    kartu_id INT(1)    
)
BEGIN
    INSERT INTO pelanggan (kode, nama, jk, tmp_lahir, email, kartu_id) VALUES (kode, nama, jk, tmp_lahir, email, kartu_id);
END $$
DELIMITER ;

DELIMITER $$
CREATE PROCEDURE showPelanggan( )
BEGIN
    SELECT * FROM pelanggan;
END $$
DELIMITER ;
call showPelanggan;

DELIMITER $$
CREATE PROCEDURE inputProduk(
    kode VARCHAR(10),
    nama VARCHAR(45),
    harga_jual DOUBLE,
    harga_beli DOUBLE,
    stok INT,
    min_stok INT,
    jenis_Produk_id INT    
)
BEGIN
    INSERT INTO pelanggan (kode, nama, harga_jual, harga_beli, stok, min_stok, jenis_produk_id) VALUES (kode, nama, harga_jual, harga_beli, stok, min_stok, jenis_produk_id);
END $$
DELIMITER ;

DELIMITER $$
CREATE PROCEDURE showProduk( )
BEGIN
    SELECT * FROM produk;
END $$
DELIMITER ;

call showProduk;

DELIMITER $$
CREATE PROCEDURE totalPesanan( )
BEGIN
    DECLARE totalPesan INT DEFAULT 0;
    SELECT COUNT(*) INTO totalPesan FROM pesanan;
    SELECT totalPesan;
END $$
DELIMITER ;

CREATE VIEW pesanan_produk_vw AS
    SELECT pesanan.id, pesanan.tanggal, pesanan.total, pelanggan.kode, pelanggan.nama, pelanggan.email
    FROM pesanan 
    INNER JOIN pelanggan ON pesanan.pelanggan_id = pelanggan.id 






Hasil nya :

call showPelanggan;
+----+------+---------------+------+------------+------------+----------------------+----------+
| id | kode | nama          | jk   | tmp_lahir  | tgl_lahir  | email                | kartu_id |
+----+------+---------------+------+------------+------------+----------------------+----------+
|  1 | C001 | Agung Sedayu  | L    | Solo       | 2010-01-01 | sedayu@gmail.com     |        1 |
|  2 | C002 | Pandan Wangi  | P    | Yogyakarta | 1950-01-01 | wangi@gmail.com      |        2 |
|  3 | C003 | Sekar Mirah   | P    | Kediri     | 1983-02-20 | mirah@yahoo.com      |        1 |
|  4 | C004 | Swandaru Geni | L    | Kediri     | 1981-01-04 | swandaru@yahoo.com   |        4 |
|  5 | C005 | Pradabashu    | L    | Pati       | 1985-04-02 | prada85@gmail.com    |        2 |
|  6 | C006 | Gayatri Dwi   | P    | Jakarta    | 1987-11-28 | gaya87@gmail.com     |        1 |
|  7 | C007 | Dewi Gyat     | P    | Jakarta    | 1988-12-01 | giyat@gmail.com      |        1 |
|  8 | C008 | Andre Haru    | L    | Surabaya   | 1990-07-15 | andre.haru@gmail.com |        4 |
|  9 | C009 | Ahmad Hasan   | L    | Surabaya   | 1992-10-15 | ahasan@gmail.com     |        4 |
| 10 | C010 | Cassanndra    | P    | Belfast    | 1990-11-20 | casa90@gmail.com     |        1 |
+----+------+---------------+------+------------+------------+----------------------+----------+



call showProduk;
+----+------+------------------+------------+------------+------+----------+-----------------+
| id | kode | nama             | harga_beli | harga_jual | stok | min_stok | jenis_produk_id |
+----+------+------------------+------------+------------+------+----------+-----------------+
|  1 | TV01 | Televisi 21 inch |    3500000 |    5040000 |    5 |        2 |               1 |
|  2 | TV02 | Televisi 40 inch |    5500000 |    7440000 |    4 |        2 |               1 |
|  3 | K001 | Kulkas 2 pintu   |    3500000 |    4680000 |    6 |        2 |               1 |
|  4 | M001 | Meja Makan       |     500000 |     600000 |    4 |        3 |               2 |
|  5 | TK01 | Teh Kotak        |       3000 |       3500 |    6 |       10 |               4 |
|  6 | PC01 | PC Desktop HP    |    7000000 |    9600000 |    9 |        2 |               5 |
|  7 | TB01 | Teh Botol        |       2000 |       2500 |   53 |       10 |               4 |
|  8 | AC01 | Notebook Acer    |    8000000 |   10800000 |    7 |        2 |               5 |
|  9 | LN01 | Notebook Lenovo  |    9000000 |   12000000 |    9 |        2 |               5 |
| 10 | L004 | Laptop HP        |   12000000 |   13000000 |   20 |        5 |               5 |
+----+------+------------------+------------+------------+------+----------+-----------------+

 SELECT pesanan.id, pesanan.tanggal, pesanan.total, pelanggan.kode, pelanggan.nama, pelanggan.email
    FROM pesanan 
    INNER JOIN pelanggan ON pesanan.pelanggan_id = pelanggan.id 
 
  

select * from pesanan_produk_vw;

+----+------------+---------+------+---------------+----------------------+
| id | tanggal    | total   | kode | nama          | email                |
+----+------------+---------+------+---------------+----------------------+
|  1 | 2015-11-04 | 9720000 | C001 | Agung Sedayu  | sedayu@gmail.com     |
|  2 | 2015-11-04 |   17500 | C003 | Sekar Mirah   | mirah@yahoo.com      |
|  3 | 2015-11-04 |       0 | C006 | Gayatri Dwi   | gaya87@gmail.com     |
|  4 | 2015-11-04 |       0 | C007 | Dewi Gyat     | giyat@gmail.com      |
|  5 | 2015-11-04 |       0 | C010 | Cassanndra    | casa90@gmail.com     |
|  6 | 2015-11-04 |       0 | C002 | Pandan Wangi  | wangi@gmail.com      |
|  7 | 2015-11-04 |       0 | C005 | Pradabashu    | prada85@gmail.com    |
|  8 | 2015-11-04 |       0 | C004 | Swandaru Geni | swandaru@yahoo.com   |
|  9 | 2015-11-04 |       0 | C008 | Andre Haru    | andre.haru@gmail.com |
| 10 | 2015-11-04 |       0 | C009 | Ahmad Hasan   | ahasan@gmail.com     |
+----+------------+---------+------+---------------+----------------------+

