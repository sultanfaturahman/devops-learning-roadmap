# Process and Service

## Apa itu process?

Process adalah program yang sedang berjalan di sistem operasi.

Contoh process:
- bash
- sleep
- nginx
- node
- postgres

Process memiliki PID atau Process ID. PID digunakan untuk mengenali dan mengelola process tertentu.

## Apa itu service?

Service adalah program yang berjalan di background dan biasanya dikelola oleh sistem.

Contoh service:
- nginx
- postgresql
- mysql
- ssh
- docker

Service bisa dijalankan, dihentikan, direstart, dan dicek statusnya.

## Apa bedanya process dan service?

Process adalah program yang sedang berjalan.

Service adalah process yang dikelola oleh sistem agar bisa berjalan sebagai layanan background.

Contohnya, nginx berjalan sebagai process, tetapi juga bisa dikelola sebagai service menggunakan command service.

## Command untuk melihat process

Untuk melihat semua process:

ps aux

Untuk mencari process tertentu:

ps aux | grep nginx

Untuk melihat process secara real-time:

top

## Command untuk menghentikan process

Untuk menghentikan process berdasarkan PID:

kill PID

Contoh:

kill 12345

## Command untuk mengelola service

Menjalankan service:

sudo service nginx start

Menghentikan service:

sudo service nginx stop

Restart service:

sudo service nginx restart

Cek status service:

sudo service nginx status

## Cara membaca log Nginx

Melihat access log:

sudo tail -n 20 /var/log/nginx/access.log

Melihat error log:

sudo tail -n 20 /var/log/nginx/error.log

Membaca access log secara real-time:

sudo tail -f /var/log/nginx/access.log

## Kesimpulan

Process adalah program yang sedang berjalan.

Service adalah process yang berjalan sebagai layanan background dan dapat dikelola dengan command service.

Dalam troubleshooting server, langkah awal yang biasa dilakukan adalah mengecek apakah service berjalan, mengecek process, lalu membaca log untuk menemukan error.
