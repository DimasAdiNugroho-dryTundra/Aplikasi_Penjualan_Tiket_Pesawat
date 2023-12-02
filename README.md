# Aplikasi Penjualan Tiket Pesawat

Project aplikasi ini dibuat untuk memenuhi tugas akhir mata kuliah **Pemrograman Visual 3**.

## Pembuat Aplikasi

**Nama**: Dimas Adi Nugroho </br>
**NPM**: 2110010139 </br>
**Kelas**: 5M Reguler Pagi Banjarmasin

## Deskripsi Aplikasi

Pembuatan Aplikasi ini didasari karena pada sebuah biro perjalanan swasta tidak memiliki sistem pembuatan laporan penjualan secara otomatis sehingga mengurangi efektifitas dan efisiensi, seperti keterlambatan dalam pelaporan, kesalahan manusia, dan biaya tenaga kerja tambahan. Pembuatan aplikasi ini tidak akan mempertimbangkan aspek-aspek lain yang mungkin terkait dengan efisiensi dan efektivitas operasional biro perjalanan, seperti manajemen stok, manajemen keuangan, atau aspek pemasaran.

## Database

**Nama Database**: aplikasi_penjualan_tiket_pesawat.sql

## Forms

Aplikasi ini berisikan beberapa form diantaranya:

1. **Login**, berfungsi untuk mengakses aplikasi sebagai user/pengguna.
2. **Pendaftaran**, berfungsi untuk mendaftarkan user/pengguna baru.
3. **MainMenu**, berfungsi untuk mengakses form lain setelah berhasil login.
4. **Transaksi**, berfungsi untuk mengatur data transaksi dan melihat laporan data transaksi.
5. **Cetak Tiket**, berfungsi untuk memilih tiket mana yang akan dicetak setelah melakukan transaksi.
6. **Data Maskapai**, berfungsi berfungsi untuk mengatur data maskapai dan melihat laporan daftar maskapai.
7. **Data Pelanggan**, berfungsi untuk mengatur data pelanggan dan melihat laporan daftar pelanggan.
8. **Data Pengguna**, berfungsi untuk mengatur data pengguna dan melihat laporan daftar pengguna.
9. **Connection**, form ini tidak dapat diakses di dalam aplikasi dan hanya berfungsi untuk menempatkan komponen yang menghubungkan aplikasi dengan database dan komponen untuk laporan.

## Laporan

User/Pengguna dapat melihat dan mencetak **6 laporan** yang ada dalam aplikasi, yaitu sebagai berikut:

1. **Laporan Daftar Pengguna**: Berisikan informasi daftar pengguna yang terdaftar dalam sistem.
2. **Laporan Daftar Pelanggan**: Berisikan informasi daftar pelanggan yang terdaftar dalam sistem.
3. **Laporan Daftar Maskapai**: Berisikan informasi daftar pelanggan yang terdaftar dalam sistem.
4. **Laporan Data Transaksi**: Berisikan informasi data transaksi yang telah dilakukan.
5. **Laporan Penjualan Tiket Pesawat**: Berisikan informasi penjualan tiket pesawat yang didalamnya berisikan informasi dari seluruh hasil transaksi yang telah dilakukan, kemudian dilakukan perhitungan _harga jual * harga jumlah - harga pokok * jumlah_ untuk mendapatkan hasil untung telah didapatkan yang kemudian akan dijumlahkan seluruh hasil tersebut sehingga didapatkan **total untung**.
6. **Laporan Tiket Pesawat**: Berisikan informasi tiket pesawat yang dimiliki oleh pelanggan dari hasil transaksi yang telah dilakukan.
