SISTEM PRESENSI — ROLE + GEOFENCE
1. Jalankan supabase-geofence-migration.sql SEKALI di Supabase SQL Editor.
2. Ganti EMAIL_ADMIN pada baris SET ADMIN dengan email admin yang sudah dibuat, lalu jalankan baris INSERT-nya.
3. Buat akun mahasiswa di Authentication > Users.
4. Hubungkan akun mahasiswa ke NPM dengan baris SET MAHASISWA.
5. Buka login.html. Pilih Admin atau Mahasiswa.
6. Mahasiswa hanya membaca data sendiri. Absensi Hadir memakai GPS dan RPC server-side.
7. Titik UTI: -5.382060, 105.257840; radius 180 m.
8. Sistem menyimpan waktu, koordinat, akurasi, jarak, akun, dan status lokasi.
9. GPS browser tidak bisa dijamin anti-spoof 100%; sistem ini memperkuat validasi dengan RLS + pemeriksaan server-side.
