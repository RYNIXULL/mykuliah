# mykuliah — design system

> **tagline:** your schedule, simplified.

## 1. design direction

mykuliah menggunakan pendekatan **clean soft neumorphism**.

tujuan visual:

- sederhana
- modern
- ringan
- nyaman dilihat dalam waktu lama
- fokus pada informasi jadwal
- tidak terlihat seperti template bawaan flutter
- tidak menggunakan dekorasi berlebihan

neumorphism digunakan sebagai **aksen visual**, bukan diterapkan ke seluruh elemen.

prinsip utama:

> **soft surface + subtle depth + clear information hierarchy**

jangan membuat interface terlalu 3d. pengguna tetap harus langsung memahami jadwal tanpa terganggu efek visual.

---

# 2. visual language

## 2.1 karakter visual

interface harus terasa seperti:

- aplikasi personal productivity
- clean mobile dashboard
- soft tactile interface
- minimal academic companion
- modern dan premium

hindari:

- gradient berlebihan
- glassmorphism
- neon
- shadow terlalu gelap
- border tebal
- card terlalu banyak
- animasi berlebihan
- dekorasi yang tidak memiliki fungsi

---

# 3. color system

gunakan warna netral dan lembut.

```text
background
#EDEEEB

surface
#EDEEEB

surface elevated
#F1F2EF

text primary
#202124

text secondary
#6B6D70

text muted
#94969A

accent
#5F6368

accent soft
#DCDDD9

white highlight
#FFFFFF

shadow dark
#C9CAC7
```

background dan surface sengaja memiliki warna yang hampir sama.

perbedaan visual terutama berasal dari **shadow dan elevation**.

---

# 4. neumorphic shadow

gunakan dua arah shadow:

1. dark shadow untuk memberikan kedalaman
2. white highlight untuk memberikan efek raised surface

contoh:

```dart
boxShadow: [
  BoxShadow(
    color: Colors.black.withOpacity(0.10),
    blurRadius: 16,
    offset: const Offset(6, 6),
  ),
  const BoxShadow(
    color: Colors.white,
    blurRadius: 16,
    offset: Offset(-6, -6),
  ),
]
```

shadow harus selalu subtle.

jangan menggunakan shadow dengan opacity tinggi.

---

# 5. elevation levels

## level 0 — flat

digunakan untuk:

- background
- section label
- secondary text

tidak menggunakan shadow.

---

## level 1 — soft raised

digunakan untuk:

- schedule card
- summary card
- button

```text
blur: 12–16
offset: 4–6
opacity: ~0.08–0.10
```

---

## level 2 — prominent

digunakan secara terbatas untuk:

- active day
- primary action
- important summary

```text
blur: 16–20
offset: 6–8
opacity: ~0.10–0.12
```

jangan menggunakan level 2 pada semua card.

---

# 6. pressed state

neumorphism harus memiliki state interaksi.

normal:

```text
raised
```

ketika ditekan:

```text
pressed / inset
```

contoh konsep:

```text
normal

╭──────────────────╮
│      SENIN       │
╰──────────────────╯


pressed

╭──────────────────╮
│      SENIN       │
╰──────────────────╯
     inset
```

gunakan perubahan shadow atau elevation, bukan perubahan warna ekstrem.

---

# 7. typography

gunakan font sistem agar aplikasi tetap ringan.

prioritas:

```text
Inter
SF Pro / system font
Roboto
```

untuk flutter, gunakan default system typography jika tidak membutuhkan custom font.

## type scale

### display

```text
size: 30–32
weight: 700
line height: 1.15
```

digunakan untuk greeting / page title.

### heading

```text
size: 22–24
weight: 700
```

### title

```text
size: 17–18
weight: 600
```

digunakan untuk nama mata kuliah.

### body

```text
size: 14–15
weight: 400
```

### caption

```text
size: 11–12
weight: 500
```

digunakan untuk:

- jam
- ruangan
- dosen
- metadata

---

# 8. spacing system

gunakan kelipatan 4.

```text
4
8
12
16
20
24
32
40
48
```

aturan umum:

```text
screen horizontal padding
20–24

section spacing
24–32

card internal padding
16–20

element spacing
8–16
```

jangan membuat layout terlalu padat.

---

# 9. border radius

gunakan rounded corner yang lembut.

```text
small
12

medium
16

card
20

large
24

pill
999
```

schedule card:

```text
20
```

day chip:

```text
999
```

summary card:

```text
24
```

---

# 10. app structure

aplikasi hanya membutuhkan dua screen utama.

```text
HomeScreen
    ↓
ScheduleCard
    ↓
DetailScreen
```

tidak perlu bottom navigation.

tidak perlu drawer.

tidak perlu tab navigation kompleks.

---

# 11. home screen

struktur:

```text
SafeArea
│
├── Header
│
├── TodaySummaryCard
│
├── DaySelector
│
├── ScheduleSection
│
└── ScheduleCard
```

---

# 12. header

header harus sederhana.

contoh:

```text
halo, rayhan

senin, 28 september
```

atau:

```text
jadwal kuliah

senin, 28 september
```

gunakan typography besar untuk judul.

tanggal menggunakan secondary text.

jangan menambahkan terlalu banyak icon.

---

# 13. today summary card

summary card memberikan informasi singkat mengenai hari yang dipilih.

contoh:

```text
┌──────────────────────────────┐
│                              │
│  jadwal hari ini             │
│                              │
│  3 mata kuliah               │
│  08:00 — 15:40               │
│                              │
└──────────────────────────────┘
```

gunakan neumorphic level 1.

radius:

```text
24
```

padding:

```text
20
```

---

# 14. day selector

day selector digunakan untuk berpindah hari.

hari:

```text
senin
selasa
rabu
kamis
jumat
```

gunakan horizontal scrolling jika diperlukan.

contoh:

```text
╭────────╮  ┌────────┐  ┌────────┐
│ SENIN  │  │ SELASA │  │  RABU  │
╰────────╯  └────────┘  └────────┘
```

hari aktif:

```text
raised / emphasized
```

hari tidak aktif:

```text
flat
```

jangan menggunakan warna berbeda terlalu mencolok.

---

# 15. schedule section

contoh:

```text
jadwal senin

3 mata kuliah
```

section title:

```text
size: 20
weight: 700
```

jumlah jadwal:

```text
size: 12
weight: 500
color: text secondary
```

---

# 16. schedule card

schedule card adalah komponen paling penting dalam aplikasi.

struktur:

```text
┌────────────────────────────────┐
│ 08:00 — 09:40                  │
│                                │
│ Pemrograman Mobile             │
│                                │
│ Lab Komputer 1                 │
│ Dr. Nama Dosen                 │
│                                │
│                         ›      │
└────────────────────────────────┘
```

hierarchy:

```text
time
↓
course name
↓
room + lecturer
```

nama mata kuliah harus menjadi elemen visual paling dominan.

---

# 17. current class indicator

jika waktu perangkat berada di antara jam mulai dan selesai mata kuliah, card dapat menunjukkan status:

```text
● sedang berlangsung
```

gunakan indikator kecil dan subtle.

contoh:

```text
08:00 — 09:40

Pemrograman Mobile

● sedang berlangsung
```

jangan menggunakan animasi berkedip.

---

# 18. empty state

jika hari tidak memiliki jadwal:

```text
tidak ada jadwal

hari ini kamu tidak memiliki
mata kuliah yang terjadwal.
```

tambahkan icon sederhana jika diperlukan.

jangan menggunakan ilustrasi besar.

---

# 19. detail screen

ketika schedule card ditekan, buka detail screen.

struktur:

```text
← detail mata kuliah

Pemrograman Mobile

08:00 — 09:40

Senin

Lab Komputer 1

Dr. Nama Dosen
```

detail screen tetap menggunakan visual language yang sama.

tidak perlu membuat halaman terlalu kompleks.

---

# 20. interaction

interaction harus ringan.

gunakan:

- `AnimatedContainer`
- `AnimatedSwitcher`
- `InkWell` atau `GestureDetector`
- page transition sederhana

hindari:

- parallax
- particle
- 3d animation
- animation yang terus berjalan
- efek berat

target:

> interaction terasa hidup tetapi tidak mengganggu.

---

# 21. transition

ketika membuka detail:

```text
fade + slight slide
```

durasi:

```text
200–300ms
```

ketika mengganti hari:

```text
schedule content
→ AnimatedSwitcher
```

durasi:

```text
200ms
```

---

# 22. iconography

gunakan icon yang sederhana.

prefer:

```text
Icons.calendar_today
Icons.access_time
Icons.location_on
Icons.person_outline
Icons.arrow_forward
Icons.arrow_back
```

jangan menggunakan icon sebagai dekorasi semata.

setiap icon harus memiliki fungsi atau membantu scanning informasi.

---

# 23. responsive layout

target utama:

```text
android phone
```

tetapi layout harus tetap aman pada:

- small phone
- large phone
- tablet

gunakan:

```dart
MediaQuery
LayoutBuilder
SafeArea
```

hindari hardcoded width yang dapat menyebabkan overflow.

---

# 24. accessibility

pastikan:

- contrast cukup
- text tidak terlalu kecil
- touch target minimal sekitar 44–48 logical pixels
- informasi tidak hanya dibedakan melalui warna
- card dapat ditekan dengan mudah
- tidak ada text yang terpotong

---

# 25. component design

komponen utama:

```text
AppTheme
AppScaffold

HomeHeader
TodaySummaryCard

DaySelector
DayChip

ScheduleSection
ScheduleCard
ScheduleMetadata

EmptySchedule

DetailScreen
DetailCard
```

buat komponen reusable tetapi jangan melakukan over-engineering.

---

# 26. design tokens

contoh implementasi:

```dart
class AppColors {
  static const background = Color(0xFFEDEEEB);
  static const surface = Color(0xFFEDEEEB);

  static const textPrimary = Color(0xFF202124);
  static const textSecondary = Color(0xFF6B6D70);
  static const textMuted = Color(0xFF94969A);

  static const accent = Color(0xFF5F6368);
  static const accentSoft = Color(0xFFDCDDD9);

  static const highlight = Color(0xFFFFFFFF);
  static const shadow = Color(0xFFC9CAC7);
}
```

spacing:

```dart
class AppSpacing {
  static const xs = 4.0;
  static const sm = 8.0;
  static const md = 16.0;
  static const lg = 24.0;
  static const xl = 32.0;
  static const xxl = 48.0;
}
```

radius:

```dart
class AppRadius {
  static const sm = 12.0;
  static const md = 16.0;
  static const lg = 20.0;
  static const xl = 24.0;
  static const pill = 999.0;
}
```

---

# 27. flutter implementation rules

gunakan:

```text
dart
flutter
material
```

gunakan null safety.

hindari dependency eksternal kecuali benar-benar diperlukan.

tidak perlu:

```text
firebase
supabase
mysql
api
backend
authentication
state management library
```

untuk scope aplikasi ini.

gunakan state management sederhana seperti:

```dart
setState()
```

karena kebutuhan aplikasi masih kecil.

---

# 28. visual quality checklist

sebelum dianggap selesai, pastikan:

- [ ] background tidak putih murni
- [ ] neumorphism terlihat tetapi subtle
- [ ] tidak ada shadow terlalu gelap
- [ ] card tidak terlalu banyak
- [ ] hierarchy typography jelas
- [ ] jadwal mudah discan
- [ ] day selector mudah digunakan
- [ ] active day terlihat jelas
- [ ] current class indicator tidak mengganggu
- [ ] empty state tersedia
- [ ] detail screen konsisten
- [ ] tidak ada overflow
- [ ] responsive pada berbagai ukuran layar
- [ ] touch target nyaman
- [ ] tidak ada animasi berlebihan

---

# 29. design philosophy

mykuliah bukan aplikasi akademik yang kompleks.

aplikasi ini hanya memiliki satu tujuan utama:

> **membantu mahasiswa mengetahui jadwal kuliahnya dengan cepat.**

karena itu, setiap keputusan desain harus menjawab pertanyaan:

> “apakah ini membuat pengguna lebih cepat memahami jadwal?”

jika tidak, jangan ditambahkan.

---

# 30. final visual direction

```text
MYKULIAH
│
├── clean
├── soft
├── minimal
├── tactile
├── neumorphic
├── readable
└── lightweight
```

**keyword visual:**

> clean soft neumorphism + minimal productivity app + modern student dashboard + subtle depth + white/gray surface + tactile interaction
