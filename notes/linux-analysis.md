cat > notes/log-analysis.md <<'EOF'
# log Analysis

## Command untuk melihat isi log

untuk melihat isi file log secara penuh

cat logs/app.log

untuk melihat bagian akhir file log 

tail -n 5 logs/app.log

untuk membaca file log yang panjang

less logs/app.log

## command untuk mencari error

untuk mencari baris yang mengandung kata ERROR:

grep "ERROR" logs/app.log

untuk mencari baris yang mengandung kata WARNING:

grep "WARNING" logs/app.log

untuk mencari kata error tanpa memperhatikan huruf besar atau kecil:

grep -i "error" logs/app.log

## Command untuk membaca log real-time:

tail -f logs/app.log

command ini berguna untuk memantau log yang ters bertambah saat aplikasi sedang berjalan

## Contoh error yang ditemukan dari app.log

setelah menjalankan comman:

ditermukan error berikut:

ERROR: Failed to connect to payment service
ERROR: Database timeout

Penjelasan Error:

1. Failed to connect payment service berarti aplikasi gagal terhubung ke service payment
2. Database Timeout berarti aplikasi terlalu lama menunggu response dari database.

kemungkinan penyebab:

- service tujuan sedang mati
- koneksi jaringan bermasalah
- database sednag lambat
- konfigurasi database atau service salah
- server terlalu sibuk

langkah pengecekan awal:

-cek apakah aplikasi masih berjalan
- cek koneksi database
- cek konfiugarsi environment
- cek service yang dituju
- baca log tambahan menggunakan tail -f EOF
