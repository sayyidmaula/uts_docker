# 📘 Tugas Mata Kuliah MBD

| Keterangan  | Data                       |
| ----------- | -------------------------- |
| Nama        | *Sayyid Maula Rafsanjani*    |
| NIM         | *1237050126*     |
| Mata Kuliah | Manajemen Basis Data (MBD) |

---

## 🛠️ Stack / Tools yang Digunakan

| Tools       | Fungsi                                                |
| ----------- | ----------------------------------------------------- |
| **Docker**  | Menjalankan database PostgreSQL dalam container       |
| **SQL**     | Bahasa untuk membuat schema, tabel, dan perintah CRUD |
| **DBeaver** | GUI client untuk mengelola PostgreSQL                 |

---

## 📦 Deskripsi Project

Project ini merupakan pengembangan schema database `SALAM` yang berisi tabel `mahasiswas` dengan beberapa constraint (PRIMARY KEY, UNIQUE, dan CHECK). Selain itu dibuat juga beberapa user dan role untuk demonstrasi penggunaan hak akses berbeda pada sebuah skema database PostgreSQL.

---

## 🚀 Cara Menjalankan PostgreSQL via Docker

```bash
docker run --name postgres-mbd -e POSTGRES_PASSWORD=postgres -p 5432:5432 -d postgres
```
