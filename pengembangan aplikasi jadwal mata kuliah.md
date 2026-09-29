pengembangan aplikasi jadwal mata kuliah berbasis hari dan waktu menggunakan flutter dengan antarmuka claymorphism
1. judul

pengembangan aplikasi jadwal mata kuliah berbasis hari dan waktu menggunakan flutter dan dart dengan antarmuka claymorphism

2. latar belakang

jadwal mata kuliah merupakan salah satu informasi penting bagi mahasiswa dalam menjalankan kegiatan perkuliahan. informasi mengenai mata kuliah, waktu pelaksanaan, dosen, dan ruangan perlu diketahui agar mahasiswa dapat mengikuti kegiatan akademik sesuai dengan jadwal yang telah ditentukan.

dalam penggunaannya sehari-hari, informasi jadwal perkuliahan dapat tersimpan dalam berbagai bentuk, seperti dokumen, gambar, pesan percakapan, maupun informasi dari sistem akademik. mahasiswa terkadang perlu mencari kembali informasi tersebut ketika ingin mengetahui mata kuliah yang berlangsung pada hari atau waktu tertentu.

penggunaan perangkat smartphone dapat menjadi salah satu cara untuk menyediakan informasi jadwal secara lebih praktis. oleh karena itu, dikembangkan sebuah aplikasi android sederhana yang berfungsi untuk menampilkan jadwal mata kuliah berdasarkan hari dan waktu.

aplikasi ini dikembangkan menggunakan flutter sebagai framework dan dart sebagai bahasa pemrograman. untuk memberikan pengalaman penggunaan yang sederhana namun tetap memiliki tampilan modern, aplikasi menggunakan konsep desain claymorphism dengan karakteristik visual berupa warna putih dan off-white, sudut komponen yang membulat, serta penggunaan bayangan lembut untuk memberikan efek tiga dimensi.

aplikasi tidak dirancang sebagai sistem akademik yang kompleks, melainkan sebagai media sederhana untuk mengorganisasi dan menampilkan informasi jadwal perkuliahan secara terstruktur.

3. identifikasi masalah

berdasarkan latar belakang tersebut, permasalahan yang diidentifikasi adalah:

mahasiswa membutuhkan akses yang praktis terhadap informasi jadwal mata kuliah.
informasi jadwal yang tersimpan dalam berbagai bentuk dapat membutuhkan waktu untuk dicari kembali.
diperlukan media sederhana yang dapat menampilkan jadwal berdasarkan hari dan waktu.
diperlukan penerapan konsep pengembangan aplikasi mobile menggunakan dart dan flutter dalam bentuk proyek sederhana.
4. rumusan masalah

rumusan masalah yang digunakan dalam pengembangan aplikasi adalah:

bagaimana merancang aplikasi android yang dapat menampilkan jadwal mata kuliah berdasarkan hari dan waktu?
bagaimana mengimplementasikan data mata kuliah menggunakan bahasa pemrograman dart?
bagaimana merancang antarmuka aplikasi menggunakan konsep claymorphism agar tetap sederhana, bersih, dan modern?
bagaimana menguji fungsi utama aplikasi agar dapat berjalan sesuai kebutuhan?
5. tujuan

tujuan pengembangan aplikasi ini adalah:

menghasilkan aplikasi android sederhana untuk menampilkan jadwal mata kuliah.
mengimplementasikan bahasa pemrograman dart menggunakan framework flutter.
menyediakan informasi mata kuliah berdasarkan hari dan waktu.
menerapkan konsep desain ui claymorphism pada aplikasi mobile.
menerapkan proses analisis, perancangan, implementasi, dan pengujian aplikasi mobile.
6. manfaat
6.1 bagi mahasiswa
mempermudah melihat jadwal mata kuliah.
membantu mengetahui jadwal berdasarkan hari.
memberikan informasi waktu, ruangan, dan dosen secara terstruktur.
memberikan akses informasi jadwal melalui perangkat android.
6.2 bagi pengembang
memahami dasar pengembangan aplikasi android menggunakan flutter.
memahami penggunaan bahasa pemrograman dart.
memahami konsep widget dan state pada flutter.
menerapkan prinsip dasar perancangan ui mobile.
6.3 bagi pembelajaran

aplikasi menjadi bentuk implementasi materi pemrograman mobile, khususnya penggunaan dart, flutter, widget, list, navigasi, state, serta pengelolaan data sederhana.

7. nama dan konsep aplikasi

nama sementara aplikasi:

mykuliah

tagline:

your schedule, simplified.

konsep utama aplikasi adalah menyediakan jadwal kuliah dalam bentuk yang sederhana.

pengguna tidak perlu melakukan proses login atau konfigurasi yang rumit. ketika aplikasi dibuka, pengguna langsung dapat melihat jadwal perkuliahan.

8. konsep ui dan ux

aplikasi menggunakan gaya visual:

clean white claymorphism

karakter visual yang digunakan:

background putih/off-white
card berbentuk rounded
shadow lembut
efek emboss sederhana
tombol berbentuk pill
tipografi minimalis
icon sederhana
spacing yang lega
tidak menggunakan elemen visual berlebihan

contoh palet:

elemen	warna
background	#f5f5f2
card	#ffffff
text utama	#202020
text sekunder	#777777
border	#eeeeee
shadow	soft neutral

warna dapat disesuaikan kembali pada tahap implementasi selama tetap mempertahankan karakter putih, clean, dan claymorphism.

9. fitur aplikasi
9.1 dashboard

halaman utama menjadi pusat informasi jadwal.

informasi yang ditampilkan:

greeting sederhana
tanggal saat ini
hari saat ini
jumlah mata kuliah hari ini
daftar mata kuliah

contoh konsep:

┌─────────────────────────────────┐
│                                 │
│  good afternoon, rayhan         │
│  monday, 29 september            │
│                                 │
│  ┌───────────────────────────┐  │
│  │  today                    │  │
│  │  2 classes               │  │
│  └───────────────────────────┘  │
│                                 │
│  today's schedule               │
│                                 │
│  ┌───────────────────────────┐  │
│  │ 08:00                     │  │
│  │ pemrograman mobile        │  │
│  │ lab komputer 1            │  │
│  └───────────────────────────┘  │
│                                 │
│  ┌───────────────────────────┐  │
│  │ 10:00                     │  │
│  │ basis data                │  │
│  │ ruang 204                 │  │
│  └───────────────────────────┘  │
│                                 │
└─────────────────────────────────┘
10. pemilihan hari

aplikasi menyediakan navigasi hari:

sen  sel  rab  kam  jum

hari yang aktif diberikan tampilan clay/raised sehingga pengguna dapat mengetahui hari yang sedang dipilih.

ketika pengguna memilih hari, daftar mata kuliah akan diperbarui sesuai dengan hari tersebut.

11. kartu mata kuliah

setiap mata kuliah ditampilkan dalam bentuk clay card.

informasi:

08:00 - 09:40

pemrograman mobile

lab komputer 1
nama dosen

card menggunakan:

rounded corner
soft shadow
padding yang cukup
hierarchy typography
icon sederhana

pengguna dapat menekan card untuk melihat informasi lebih lengkap.

12. halaman detail

halaman detail menampilkan:

pemrograman mobile

senin

08:00 — 09:40

ruangan
lab komputer 1

dosen
nama dosen

dilengkapi tombol kembali dengan gaya claymorphism.

13. data aplikasi

aplikasi menggunakan data lokal karena kebutuhan aplikasi relatif sederhana.

struktur data:

mata kuliah
│
├── id
├── nama
├── hari
├── jam mulai
├── jam selesai
├── ruangan
└── dosen

contoh:

class MataKuliah {
  final int id;
  final String nama;
  final String hari;
  final String jamMulai;
  final String jamSelesai;
  final String ruangan;
  final String dosen;

  MataKuliah({
    required this.id,
    required this.nama,
    required this.hari,
    required this.jamMulai,
    required this.jamSelesai,
    required this.ruangan,
    required this.dosen,
  });
}
14. teknologi
teknologi	fungsi
flutter	framework aplikasi mobile
dart	bahasa pemrograman
android studio / vscode	development environment
material icons	ikon aplikasi
local data	sumber data jadwal
android	platform target
teknologi yang tidak digunakan

untuk menjaga scope tetap sederhana, aplikasi tidak menggunakan:

firebase
mysql
api
backend
authentication
cloud database
server
15. struktur project

struktur project yang digunakan:

lib/
│
├── main.dart
│
├── models/
│   └── mata_kuliah.dart
│
├── data/
│   └── jadwal_data.dart
│
├── screens/
│   ├── home_screen.dart
│   └── detail_screen.dart
│
├── widgets/
│   ├── day_selector.dart
│   ├── schedule_card.dart
│   └── clay_button.dart
│
└── theme/
    └── app_theme.dart

struktur dibuat modular tetapi tetap sederhana sehingga mudah dipahami dalam konteks tugas kuliah.

16. alur aplikasi
             aplikasi dibuka
                    │
                    ▼
             ┌─────────────┐
             │   dashboard │
             └──────┬──────┘
                    │
                    ▼
             sistem membaca
             hari saat ini
                    │
                    ▼
          menampilkan jadwal
             hari tersebut
                    │
              ┌─────┴─────┐
              │           │
              ▼           ▼
        pilih hari    pilih mata
                      kuliah
              │           │
              ▼           ▼
        jadwal hari   detail mata
        tersebut      kuliah
17. metode pengembangan

metode yang digunakan adalah waterfall dengan tahapan:

analisis kebutuhan
        ↓
perancangan
        ↓
implementasi
        ↓
pengujian
        ↓
evaluasi
17.1 analisis kebutuhan

menentukan kebutuhan aplikasi dan data yang diperlukan.

17.2 perancangan

merancang:

struktur data
ui/ux
navigasi
komponen aplikasi
17.3 implementasi

mengimplementasikan rancangan menggunakan flutter dan dart.

17.4 pengujian

menguji fungsi aplikasi menggunakan perangkat atau emulator android.

17.5 evaluasi

memperbaiki kesalahan yang ditemukan selama proses pengujian.

18. pengujian

metode pengujian yang digunakan adalah black box testing.

no	fitur	skenario pengujian	hasil yang diharapkan
1	aplikasi	membuka aplikasi	dashboard tampil
2	jadwal	membuka dashboard	jadwal hari ini tampil
3	pemilihan hari	memilih senin	jadwal senin tampil
4	pemilihan hari	memilih selasa	jadwal selasa tampil
5	detail	menekan card mata kuliah	detail tampil
6	navigasi	menekan tombol kembali	kembali ke dashboard
7	jadwal kosong	memilih hari tanpa jadwal	informasi tidak ada jadwal tampil
19. batasan pengembangan

untuk menjaga aplikasi tetap sesuai dengan kebutuhan tugas, batasan yang ditetapkan adalah:

aplikasi ditujukan untuk platform android.
aplikasi dikembangkan menggunakan flutter dan dart.
data mata kuliah disimpan secara lokal.
aplikasi tidak memiliki sistem login.
aplikasi tidak menggunakan backend.
aplikasi tidak terhubung dengan sistem akademik kampus.
pengguna tidak dapat melakukan sinkronisasi dengan server.
perubahan data jadwal dilakukan melalui data aplikasi.
fitur notifikasi tidak menjadi bagian utama aplikasi.
aplikasi berfokus pada fungsi menampilkan jadwal berdasarkan hari dan waktu.
20. hasil yang diharapkan

hasil akhir pengembangan adalah aplikasi android mykuliah yang mampu:

menampilkan hari dan tanggal.
mendeteksi hari saat aplikasi dibuka.
menampilkan jadwal mata kuliah hari tersebut.
memungkinkan pengguna memilih hari lain.
menampilkan waktu perkuliahan.
menampilkan ruangan.
menampilkan dosen.
menampilkan detail mata kuliah.
memberikan informasi ketika tidak terdapat jadwal.
menggunakan antarmuka clean white claymorphism.
berjalan pada perangkat android.
21. timeline pengerjaan
kegiatan	minggu 1	minggu 2
analisis kebutuhan	✓	
perancangan ui/ux	✓	
perancangan data	✓	
setup flutter	✓	
implementasi dashboard		✓
implementasi filter hari		✓
implementasi detail		✓
penerapan claymorphism		✓
black box testing		✓
debugging		✓
finalisasi		✓
22. scope akhir aplikasi

supaya tidak melebar, versi tugas kuliah ini cukup memiliki 2 halaman utama:

┌─────────────────┐
│    dashboard    │
│                 │
│  hari / tanggal │
│  pilih hari     │
│  jadwal kuliah  │
└────────┬────────┘
         │
         ▼
┌─────────────────┐
│  detail jadwal  │
│                 │
│  nama matkul    │
│  hari           │
│  jam            │
│  ruangan        │
│  dosen          │
└─────────────────┘

dengan begitu, aplikasi tetap sederhana secara fungsi, tetapi secara visual bisa terlihat jauh lebih polished karena claymorphism-nya.