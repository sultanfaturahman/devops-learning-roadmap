# Week 1 Review

## Materi yang sudah dipelajari

Pada minggu 1, saya mempelajari dasar Linux, permission, shell script, log analysis, process, service, curl, Nginx, Git, branch, GitHub, dan pull request.

## Linux Basic

Command yang dipelajari:

- pwd
- ls
- ls -la
- cd
- mkdir
- touch
- cat
- cp
- mv
- rm
- nano
- tree

Linux basic digunakan untuk navigasi folder, membuat file, membaca file, mengedit file, menyalin file, memindahkan file, dan menghapus file.

## File Permission

Permission dasar di Linux:

- read atau r
- write atau w
- execute atau x

Contoh:

chmod 755 script.sh

Artinya owner bisa read, write, dan execute. Group dan others bisa read dan execute.

chmod 644 file.txt

Artinya owner bisa read dan write. Group dan others hanya bisa read.

## Shell Script

Script Bash menggunakan shebang:

#!/bin/bash

Script membutuhkan execute permission agar bisa dijalankan dengan:

./script.sh

## Log Analysis

Command yang digunakan:

cat logs/app.log
head -n 5 logs/app.log
tail -n 5 logs/app.log
tail -f logs/app.log
grep "ERROR" logs/app.log

Log analysis digunakan untuk mencari error, warning, timeout, failed connection, dan masalah lain pada aplikasi.

## Process dan Service

Process adalah program yang sedang berjalan.

Service adalah program yang berjalan di background dan bisa dikelola oleh sistem.

Command yang dipelajari:

ps aux
ps aux | grep nginx
kill PID
top
sudo service nginx start
sudo service nginx status
sudo service nginx stop
sudo service nginx restart

## Curl dan Nginx

Curl digunakan untuk mengetes apakah website, API, atau service bisa diakses dari terminal.

Contoh:

curl http://localhost
curl -I http://localhost

Nginx digunakan sebagai web server dan reverse proxy.

Konsep penting:

User -> Nginx -> Backend App

## Git Basic

Git digunakan untuk menyimpan riwayat perubahan file atau code.

Command yang dipelajari:

git init
git status
git add .
git commit -m "message"
git log --oneline
git diff

## Git Branch dan GitHub

Branch digunakan untuk mengerjakan perubahan secara terpisah dari main.

Command yang dipelajari:

git branch
git checkout -b nama-branch
git checkout main
git merge nama-branch
git branch -d nama-branch
git remote -v
git push -u origin main
git pull origin main

## Pull Request

Pull request adalah permintaan untuk menggabungkan perubahan dari satu branch ke branch lain.

Alur kerja:

1. Buat branch
2. Ubah file
3. Commit
4. Push branch ke GitHub
5. Buat pull request
6. Merge pull request
7. Pull update ke local

## Kesimpulan

Minggu 1 memberi fondasi awal untuk belajar Infrastructure dan DevOps.

Saya sudah memahami dasar penggunaan Linux terminal, membaca log, mengelola process dan service, menggunakan Nginx, serta menggunakan Git dan GitHub untuk version control.
