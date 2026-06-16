# Git Basic

## Apa itu Git?

Git adalah version control system yang digunakan untuk menyimpan riwayat perubahan file atau code.

Git membantu developer melihat perubahan, membuat commit, bekerja dengan branch, dan mengembalikan perubahan jika dibutuhkan.

## Apa itu repository?

Repository adalah folder project yang sudah dikelola oleh Git.

Repository menyimpan file project dan riwayat commit.

## Apa itu commit?

Commit adalah snapshot atau titik penyimpanan perubahan.

Commit biasanya memiliki pesan agar perubahan mudah dipahami.

Contoh:

git commit -m "add linux notes"

## Apa itu staging area?

Staging area adalah tempat sementara untuk file yang akan dimasukkan ke commit.

Alurnya:

1. Edit file
2. git add .
3. git commit -m "message"

## Command Git Basic

Melihat versi Git:

git --version

Membuat repository Git:

git init

Melihat status file:

git status

Menambahkan semua file ke staging area:

git add .

Menambahkan file tertentu:

git add README.md

Membuat commit:

git commit -m "message"

Melihat riwayat commit:

git log

Melihat riwayat commit secara singkat:

git log --oneline

Melihat perubahan file:

git diff

## Kesimpulan

Git digunakan untuk mencatat perubahan project.

Command yang paling sering digunakan adalah:

git status
git add .
git commit -m "message"
git log --oneline
git diff

Latihan push branch ke github dan membuat pull request
