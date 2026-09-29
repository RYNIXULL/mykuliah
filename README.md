# MyKuliah

MyKuliah adalah aplikasi Android minimalis untuk memonitor jadwal mata kuliah mahasiswa secara praktis. Dibangun dengan pendekatan desain **Clean Soft Neumorphism**, aplikasi ini menawarkan pengalaman antarmuka yang modern, bersih, cerah, dan lembut tanpa elemen yang berlebihan.

## Fitur Utama

- **Cek Jadwal Otomatis**: Membuka hari aktif secara otomatis berdasarkan waktu perangkat (tanggal & hari saat ini).
- **Day Selector Navigasi Cepat**: Beralih ke jadwal hari lain (Senin - Jumat) hanya dengan satu sentuhan ringan tanpa perpindahan halaman yang lambat.
- **Indikator Kelas Aktif**: Tanda "Sekarang" (Now) akan muncul secara dinamis di jadwal mata kuliah yang jamnya sedang berlangsung.
- **Ringkasan Harian (Today Summary)**: Menampilkan total kelas dan tanggal hari ini secara instan di bagian atas.
- **Detail Mata Kuliah**: Sentuh kartu jadwal untuk melihat detail lengkap tentang mata kuliah, waktu, ruangan, dan dosen.
- **Empty State Elegan**: Tampilan khusus yang ramah saat tidak ada kelas yang dijadwalkan (misalnya di akhir pekan).

## Konsep Desain (Clean Soft Neumorphism)

Antarmuka dibangun secara 100% native menggunakan Flutter (tanpa package UI eksternal tambahan) dengan mempertahankan prinsip:
- **Warna Cerah & Bersih**: Background putih sedikit abu (`#EBEBE6`) dengan komponen yang membaur.
- **Gaya 3D Lembut (Tactile)**: Tampilan card dirender dengan double-drop shadow halus (putih terang di kiri atas, bayangan tipis di kanan bawah) untuk mengesankan bentuk material asli yang timbul/tenggelam.
- **Tipografi Rapi**: Hierarki font yang jelas untuk keterbacaan tinggi.

## Tech Stack

- **Framework**: [Flutter](https://flutter.dev/) (Dart)
- **Desain UI**: Material + Kustom `AppTheme` (Neumorphism / Claymorphism)
- **Manajemen State**: Local State (`setState`) murni yang sangat lightweight.
- **Data**: Data lokal statis (Tanpa Backend/API).
- **Package Tambahan**: `intl` (Untuk format tanggal bahasa Indonesia).

## Cara Menjalankan

1. Pastikan Anda telah menginstal [Flutter SDK](https://docs.flutter.dev/get-started/install).
2. Kloning repositori ini:
   ```bash
   git clone https://github.com/RYNIXULL/mykuliah.git
   ```
3. Masuk ke direktori proyek:
   ```bash
   cd mykuliah
   ```
4. Unduh semua dependensi:
   ```bash
   flutter pub get
   ```
5. Jalankan aplikasi (baik di Emulator Android, real device, maupun Web):
   ```bash
   flutter run
   ```

## Struktur Folder

```text
lib/
├── data/
│   └── jadwal_data.dart        # Data dummy & jadwal statis mahasiswa
├── models/
│   └── mata_kuliah.dart        # Model data jadwal
├── screens/
│   ├── detail_screen.dart      # Tampilan detail jadwal
│   └── home_screen.dart        # Tampilan layar utama
├── theme/
│   └── app_theme.dart          # Terpusat: Warna, Tipografi, Gradasi, dan Shadow
├── widgets/
│   ├── clay_button.dart        # Tombol kembali dengan gaya Neumorphism 
│   ├── day_selector.dart       # Komponen filter horizontal hari
│   ├── schedule_card.dart      # Komponen kartu jadwal dengan efek 3D
│   └── today_summary_card.dart # Kartu ringkasan jumlah kelas hari ini
└── main.dart                   # Entry point (inisialisasi lokalisasi intl)
```

## Pengembang

Dikembangkan sebagai tugas / project kuliah menggunakan standar praktik pengembangan kode yang bersih, minim kebergantungan (dependencies), dan modern.
