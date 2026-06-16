# PostgreSQL Basic

## Apa itu PostgreSQL?

PostgreSQL adalah relational database management system yang digunakan untuk menyimpan dan mengelola data secara terstruktur.

Data di PostgreSQL disimpan dalam database, schema, table, row, dan column.

## Command Service PostgreSQL

Menjalankan PostgreSQL:

sudo service postgresql start

Cek status PostgreSQL:

sudo service postgresql status

Restart PostgreSQL:

sudo service postgresql restart

Stop PostgreSQL:

sudo service postgresql stop

## Masuk ke PostgreSQL

Masuk sebagai user postgres:

sudo -u postgres psql

Keluar dari psql:

\q

## Command Dasar psql

Melihat daftar database:

\l

Masuk ke database:

\c nama_database

Melihat daftar table:

\dt

Melihat struktur table:

\d nama_table

Melihat daftar user:

\du

Keluar dari psql:

\q

## Membuat Database

Contoh:

CREATE DATABASE dmx_pallet_db;

Masuk ke database:

\c dmx_pallet_db

## Membuat Table

Contoh:

CREATE TABLE pallets (
  id SERIAL PRIMARY KEY,
  code VARCHAR(50) UNIQUE NOT NULL,
  status VARCHAR(20) NOT NULL DEFAULT 'available',
  location VARCHAR(100),
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

## INSERT

INSERT digunakan untuk menambahkan data.

Contoh:

INSERT INTO pallets (code, status, location)
VALUES ('PLT-001', 'available', 'Jakarta');

## SELECT

SELECT digunakan untuk melihat data.

Contoh:

SELECT * FROM pallets;

SELECT * FROM pallets
WHERE status = 'available';

## UPDATE

UPDATE digunakan untuk mengubah data.

Contoh:

UPDATE pallets
SET status = 'available'
WHERE code = 'PLT-003';

Penting: gunakan WHERE agar tidak mengubah semua data.

## DELETE

DELETE digunakan untuk menghapus data.

Contoh:

DELETE FROM pallets
WHERE code = 'PLT-004';

Penting: gunakan WHERE agar tidak menghapus semua data.

## Kesimpulan

Hari ini saya belajar setup PostgreSQL, membuat database, membuat table, menambahkan data, membaca data, mengubah data, dan menghapus data.

Command SQL utama yang dipelajari:

- CREATE DATABASE
- CREATE TABLE
- INSERT INTO
- SELECT
- WHERE
- ORDER BY
- LIMIT
- UPDATE
- DELETE
