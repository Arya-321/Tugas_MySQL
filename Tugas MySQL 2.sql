1. SELECT kode, nama, harga_beli * stok as asset FROM produk WHERE harga_beli * stok > 20000000;

+------+------------------+-----------+
| kode | nama             | asset     |
+------+------------------+-----------+
| TV02 | Televisi 40 inch |  22000000 |
| K001 | Kulkas 2 pintu   |  21000000 |
| PC01 | PC Desktop HP    |  63000000 |
| AC01 | Notebook Acer    |  56000000 |
| LN01 | Notebook Lenovo  |  81000000 |
| L004 | Laptop HP        | 240000000 |
+------+------------------+-----------+

2. SELECT kode, nama, stok, min_stok, stok - min_stok as selisih_stok FROM produk;

+------+------------------+------+----------+--------------+
| kode | nama             | stok | min_stok | selisih_stok |
+------+------------------+------+----------+--------------+
| TV01 | Televisi 21 inch |    5 |        2 |            3 |
| TV02 | Televisi 40 inch |    4 |        2 |            2 |
| K001 | Kulkas 2 pintu   |    6 |        2 |            4 |
| M001 | Meja Makan       |    4 |        3 |            1 |
| TK01 | Teh Kotak        |    6 |       10 |           -4 |
| PC01 | PC Desktop HP    |    9 |        2 |            7 |
| TB01 | Teh Botol        |   53 |       10 |           43 |
| AC01 | Notebook Acer    |    7 |        2 |            5 |
| LN01 | Notebook Lenovo  |    9 |        2 |            7 |
| L004 | Laptop HP        |   20 |        5 |           15 |
+------+------------------+------+----------+--------------+

3.  SELECT sum(stok * harga_jual) as jumlah_asset FROM produk;
+--------------+
| jumlah_asset |
+--------------+
|    615593500 |
+--------------+

4. SELECT kode, nama, year(tgl_lahir) as tahun_lahir FROM pelanggan WHERE year(tgl_lahir) > 1980 AND year(tgl_lahir) < 1990;
+------+---------------+-------------+
| kode | nama          | tahun_lahir |
+------+---------------+-------------+
| C003 | Sekar Mirah   |        1983 |
| C004 | Swandaru Geni |        1981 |
| C005 | Pradabashu    |        1985 |
| C006 | Gayatri Dwi   |        1987 |
| C007 | Dewi Gyat     |        1988 |
+------+---------------+-------------+

5. SELECT kode, nama, year(tgl_lahir) as tahun_lahir FROM pelanggan WHERE year(tgl_lahir) = 1990;
+------+------------+-------------+
| kode | nama       | tahun_lahir |
+------+------------+-------------+
| C008 | Andre Haru |        1990 |
| C010 | Cassanndra |        1990 |
+------+------------+-------------+