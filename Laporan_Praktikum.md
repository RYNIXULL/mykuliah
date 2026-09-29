# LAPORAN PRAKTIKUM
**Mata Kuliah:** Pemrograman Berbasis Mobile
**Program Studi:** Manajemen Informatika

---

## 1. IDENTITAS MAHASISWA
- **Nama**: M. Rayhan Zulkarnain
- **NPM / NIP**: 24781015
- **Kelas**: Manajemen Informatika A 5
- **Tahun Akademik**: 2026/2027 Ganjil
- **Proyek**: MyKuliah - Aplikasi Jadwal Mata Kuliah Minimalis

---

## 2. PENDAHULUAN
### 2.1 Latar Belakang
Mahasiswa sering kali kesulitan untuk secara cepat mengakses jadwal kuliah harian yang tersebar di dokumen atau portal akademik yang membutuhkan waktu muat (loading) cukup lama. Aplikasi **MyKuliah** dibangun sebagai solusi aplikasi mobile mandiri (*standalone*) yang menyajikan informasi jadwal harian secara real-time dan intuitif tanpa harus terhubung ke internet secara konstan.

### 2.2 Tujuan Praktikum
1. Mampu mengimplementasikan struktur dasar antarmuka pengguna (UI) menggunakan *framework* Flutter dan bahasa pemrograman Dart.
2. Mampu menerapkan konsep *Clean Soft Neumorphism* (bayangan dan manipulasi gradasi) tanpa bergantung pada *library*/pustaka antarmuka eksternal tambahan.
3. Mampu membangun *logic* berbasis waktu nyata (real-time) menggunakan fungsi `DateTime` pada Dart untuk memfilter jadwal dan menandai kelas yang sedang aktif.
4. Mampu menggunakan navigasi dasar (*routing*) antar layar/halaman dalam Flutter.

---

## 3. IMPLEMENTASI DAN HASIL PRAKTIKUM
### 3.1 Spesifikasi Teknis
- **Framework**: Flutter (Dart)
- **State Management**: Local State (`setState()`)
- **Arsitektur File**: Berbasis modular (models, data, screens, widgets, theme)
- **Dependencies Utama**: `intl` (Untuk pelokalan format waktu bahasa Indonesia)
- **Sumber Data**: Data lokal statis (mock data terisolasi)

### 3.2 Fitur yang Berhasil Dikembangkan
1. **Deteksi Hari Otomatis (Current Day Selection)**
   Aplikasi secara otomatis membaca tanggal dan jam dari sistem *smartphone* untuk menentukan hari aktif dan menyapa pengguna berdasarkan waktu (pagi/siang/sore/malam).
2. **Day Selector Interaktif**
   Komponen penyaring jadwal yang memungkinkan pengguna melompat ke hari lain (Senin - Jumat) dalam satu sentuhan tanpa adanya *refresh* memori halaman penuh.
3. **Indikator Kelas Aktif (Now Indicator)**
   Pemeriksaan logika antara waktu mulai dan selesai mata kuliah dibandingkan dengan jam perangkat. Mata kuliah yang sedang berlangsung akan menampilkan tanda (tag) berwarna hijau dengan tulisan "Sekarang".
4. **Desain Neumorphism Ringan**
   Penggunaan *Container* dengan manipulasi `LinearGradient` dan `BoxShadow` (double-drop shadow: bayangan gelap di kanan bawah dan sorotan terang di kiri atas) agar komponen seperti tombol dan kartu jadwal seolah-olah "timbul" dari layar latar.

### 3.3 Struktur Kode Utama
- `lib/main.dart` : Entry point untuk menjalankan aplikasi dan menginisialisasi pustaka `intl` untuk ID lokal.
- `lib/theme/app_theme.dart` : Sentralisasi sistem token UI (warna, jarak, dan bayangan Neumorphism) untuk konsistensi seluruh layar.
- `lib/data/jadwal_data.dart` : Repositori lokal berupa `List<MataKuliah>` dari jadwal nyata perkuliahan M. Rayhan Zulkarnain.
- `lib/screens/home_screen.dart` : Menangani antarmuka utama, interaksi filter hari, dan kalkulasi jadwal dinamis.

---

## 4. KESIMPULAN
Melalui praktikum ini, telah berhasil dibangun sebuah aplikasi *mobile* untuk manajemen jadwal kuliah menggunakan Flutter yang mengutamakan pendekatan UI yang bersih (*clean*) dan modular. Pengembangan dengan pendekatan arsitektur lokal sederhana (StatefulWidget konvensional) terbukti lebih dari cukup dan sangat optimal dalam menangani aplikasi berskala kecil hingga menengah yang tidak membutuhkan asinkronisitas aliran data yang berat.

---

## 5. RENCANA PENGEMBANGAN LEBIH LANJUT
Untuk meningkatkan skalabilitas dan fungsionalitas aplikasi di masa depan, berikut adalah beberapa rencana iterasi dan penambahan fitur yang dapat dilakukan:

1. **Integrasi Local Push Notifications**
   Menerapkan *library* seperti `flutter_local_notifications` untuk memunculkan notifikasi/peringatan (alarm) di layar kunci (lock screen) 15 menit sebelum sebuah mata kuliah dimulai.
2. **Sinkronisasi Data SIAKAD (API Integration)**
   Mengganti struktur data statis (`jadwal_data.dart`) dengan integrasi REST API secara langsung ke Sistem Informasi Akademik kampus, sehingga jadwal otomatis berubah setiap semester tanpa pembaruan (update) aplikasi secara manual.
3. **Manajemen Tugas dan Tenggat Waktu (To-Do List)**
   Menambahkan modul halaman baru tempat pengguna dapat mencatat tugas mandiri yang diberikan oleh dosen saat kelas berlangsung beserta pengingat batas waktu pengumpulan tugas (deadline).
4. **Tema Gelap (Dark Mode Neumorphism)**
   Meningkatkan sentralisasi `AppTheme` dengan variasi palet warna gelap (Dark Mode) untuk menghemat baterai ponsel (layar OLED) dan mengurangi ketegangan mata pengguna di malam hari, dengan menyesuaikan *elevation shadow* yang sesuai standar Neumorphism gelap.
5. **Caching & Local Storage**
   Menambahkan basis data lokal (*local database*) seperti SQLite, Hive, atau Shared Preferences agar ketika data API ditarik, jadwal dapat di-*cache* dan tetap bisa dibuka meski tanpa koneksi internet (Offline First Architecture).

---
*Laporan ini disusun sebagai pemenuhan luaran proyek pengembangan aplikasi Android pada mata kuliah Pemrograman Berbasis Mobile.*
