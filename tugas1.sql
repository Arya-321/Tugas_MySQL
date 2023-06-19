1. CREATE TABLE produk(
    id INT PRIMARY KEY AUTO_INCREMENT,
    nama varchar(45) not null,
    stok integer default 0,
    min_stok integer default 0,
    harga double default 0
);

2. CREATE TABLE pesanan_items (
    id integer auto_increment primary key,
    produk_id integer,
    pesanan_id integer,
    qty integer default 0,
    harga double default 0,
    FOREIGN KEY (produk_id) REFERENCES produk(id),
    FOREIGN KEY (pesanan_id) REFERENCES pesanan(id)
);

3. CREATE TABLE vendor (
    id integer auto_increment primary key,
    nomor varchar(4),
    nama varchar(40) not null,
    kota varchar(30),
    kontak varchar(30)l
);

4. CREATE TABLE pembelian (
    id integer auto_increment primary key,
    tanggal varchar(45),
    nomor varchar(10),
    produk_id integer,
    jumlah integer,
    harga double default 0,
    vendor_id integer,
    FOREIGN KEY (produk_id) REFERENCES produk(id),
    FOREIGN KEY (vendor_id) REFERENCES vendor(id)
);

5. ALTER TABLE ADD alamat VARCHAR(40);

6. ALTER TABLE pelanggan CHANGE nama nama_pelanggan;

7. ALTTER TABLE pelanggan CHANGE nama_pelanggan nama_pelanggan VARCHAR(50)