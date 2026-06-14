## Log Analysis

# Log Analysis

## Command untuk melihat isi log

Untuk melihat isi file log secara penuh:

cat logs/app.log

Untuk melihat bagian akhir file log:

tail -n 5 logs/app.log

Untuk membaca file log yang panjang:

less logs/app.log

## Command untuk mencari error

Untuk mencari baris yang mengandung kata ERROR:

grep "ERROR" logs/app.log

Untuk mencari baris yang mengandung kata WARNING:

grep "WARNING" logs/app.log

Untuk mencari kata error tanpa memperhatikan huruf besar atau kecil:

grep -i "error" logs/app.log

## Command untuk membaca log real-time

Untuk membaca log secara real-time:

tail -f logs/app.log

Command ini berguna untuk memantau log yang terus bertambah saat aplikasi sedang berjalan.

## Contoh error yang ditemukan dari app.log

Setelah menjalankan command:

grep "ERROR" logs/app.log

Ditemukan error berikut:

ERROR: Failed to connect to payment service
ERROR: Database timeout

Penjelasan error:

1. Failed to connect to payment service berarti aplikasi gagal terhubung ke service pembayaran.
2. Database timeout berarti aplikasi terlalu lama menunggu response dari database.

Kemungkinan penyebab:

- service tujuan sedang mati
- koneksi jaringan bermasalah
- database sedang lambat
- konfigurasi database atau service salah
- server terlalu sibuk

Langkah pengecekan awal:

- cek apakah aplikasi masih berjalan
- cek koneksi database
- cek konfigurasi environment
- cek service yang dituju
- baca log tambahan menggunakan tail -f logs/app.log
