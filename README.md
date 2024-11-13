Nama: Arya Raditya Kusuma
NPM: 2306215816
Kelas: PBP F

# Tugas 8

## Apa kegunaan const di Flutter? Jelaskan apa keuntungan ketika menggunakan const pada kode Flutter. Kapan sebaiknya kita menggunakan const, dan kapan sebaiknya tidak digunakan?

Di Flutter, kata kunci const digunakan untuk membuat nilai atau widget yang tidak akan berubah selama aplikasi berjalan. Dengan menggunakan const, Flutter bisa lebih cepat karena tidak perlu membuat ulang hal-hal tersebut setiap kali layar diperbarui. Misalnya, teks atau ikon yang selalu sama bisa dibuat const sehingga aplikasi menjadi lebih efisien dan hemat memori. const sebaiknya digunakan untuk bagian yang tetap dan tidak berubah, tapi sebaiknya tidak digunakan untuk hal-hal yang datanya bisa berubah saat aplikasi digunakan.

## Jelaskan dan bandingkan penggunaan Column dan Row pada Flutter. Berikan contoh implementasi dari masing-masing layout widget ini!

Column dan Row adalah widget layout dasar di Flutter yang digunakan untuk menata widget secara vertikal dan horizontal. Column menyusun widget secara vertikal (dari atas ke bawah), cocok untuk konten seperti form atau daftar item, sementara Row menyusun widget secara horizontal (dari kiri ke kanan), ideal untuk elemen seperti tombol atau kartu informasi yang diletakkan berdampingan.

Contoh implementasi column:
```dart
child: Column(
  children: [
    Text(
      title,
      style: const TextStyle(fontWeight: FontWeight.bold),
    ),
    const SizedBox(height: 8.0),
    Text(content),
  ],
)
```

Contoh implementasi row:
```dart
Row(
  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  children: [
    InfoCard(title: 'NPM', content: npm),
    InfoCard(title: 'Name', content: name),
    InfoCard(title: 'Class', content: className),
  ],
)
```

## Sebutkan apa saja elemen input yang kamu gunakan pada halaman form yang kamu buat pada tugas kali ini. Apakah terdapat elemen input Flutter lain yang tidak kamu gunakan pada tugas ini? Jelaskan!

Elemen input Flutter yang digunakan meliputi tiga buah TextFormField. Yang pertama untuk memasukkan Nama Produk (_name), dengan validasi agar input tidak kosong dan tidak lebih dari 64 karakter. Yang kedua adalah TextFormField untuk memasukkan Jumlah Produk (_amount), dengan pengaturan keyboardType: TextInputType.number agar hanya angka yang dapat dimasukkan, serta validasi untuk memastikan angka yang dimasukkan valid dan tidak negatif. Yang ketiga adalah TextFormField untuk Deskripsi Produk (_description), yang juga memiliki validasi agar tidak kosong dan tidak lebih dari 256 karakter. Selain itu, terdapat ElevatedButton untuk mengirimkan form, yang akan menampilkan AlertDialog sebagai feedback jika produk berhasil disimpan. Beberapa elemen input Flutter lain yang tidak digunakan dalam form ini antara lain adalah Checkbox, Radio, DropdownButton, Switch, DatePicker, TimePicker, dan Slider, yang bisa digunakan jika form membutuhkan pilihan opsi, tanggal, atau rentang nilai lain.

## Bagaimana cara kamu mengatur tema (theme) dalam aplikasi Flutter agar aplikasi yang dibuat konsisten?Apakah kamu mengimplementasikan tema pada aplikasi yang kamu buat?

Untuk mengatur tema (theme) dalam aplikasi Flutter agar tetap konsisten, saya menggunakan ThemeData di dalam widget MaterialApp. Dalam contoh kode di atas, tema aplikasi ditetapkan dengan cara mengonfigurasi primaryColor, secondary color, dan palet warna utama menggunakan ColorScheme. Saya membuat palet warna khusus dengan mendefinisikan MaterialColor yang berisi berbagai shade dari warna utama, misalnya biru dengan kode hex 0xFF42A5F5 yang saya gunakan sebagai primaryColor. Saya juga mengonfigurasi colorScheme dengan menggunakan ColorScheme.fromSwatch untuk menetapkan warna utama (primarySwatch) dan warna sekunder (secondary). Hal ini membantu menjaga konsistensi tampilan aplikasi dengan menggunakan palet warna yang sudah ditentukan di seluruh aplikasi, sehingga setiap elemen UI yang menggunakan warna utama dan sekunder akan memiliki keseragaman visual. Pada aplikasi yang saya buat, tema ini sudah diimplementasikan dengan mengonfigurasi tema di bagian MaterialApp agar seluruh elemen di aplikasi mengikuti warna yang konsisten sesuai dengan palet yang sudah disiapkan.

## Bagaimana cara kamu menangani navigasi dalam aplikasi dengan banyak halaman pada Flutter?

Untuk menangani navigasi dalam aplikasi Flutter dengan banyak halaman, saya biasanya menggunakan beberapa pendekatan untuk memudahkan pengelolaan rute antar halaman. Salah satunya adalah dengan memanfaatkan Navigator dan MaterialPageRoute untuk berpindah antar halaman secara dinamis. Dalam hal ini, saya juga mengimplementasikan Left Drawer, yang berfungsi sebagai menu samping dengan opsi navigasi ke berbagai halaman aplikasi. Dengan menggunakan Drawer, pengguna dapat dengan mudah memilih halaman yang diinginkan tanpa perlu menggunakan tombol kembali atau navigasi yang lebih rumit. Setiap item di dalam Drawer mengarah ke halaman yang berbeda menggunakan Navigator.push, yang memastikan perpindahan antar halaman berjalan mulus. Dengan cara ini, aplikasi menjadi lebih terstruktur dan mudah dinavigasi, terutama saat aplikasi berkembang dan jumlah halamannya semakin banyak.

# Tugas 7

## Jelaskan apa yang dimaksud dengan stateless widget dan stateful widget, dan jelaskan perbedaan dari keduanya.
Dalam Flutter, StatelessWidget adalah widget yang tidak memiliki status atau data yang berubah selama siklus hidupnya, artinya tampilan widget hanya ditentukan oleh parameter yang diterima dan tidak dapat diperbarui setelah dibangun. Sebaliknya, StatefulWidget adalah widget yang memiliki status internal yang dapat berubah, dan ketika status berubah, widget akan memperbarui tampilan untuk mencerminkan perubahan tersebut. Perbedaan utamanya adalah bahwa StatefulWidget membutuhkan objek State untuk menyimpan dan memperbarui data, sementara StatelessWidget hanya membutuhkan data input dan tidak dapat mengubah dirinya setelah di-render.

## Sebutkan widget apa saja yang kamu gunakan pada proyek ini dan jelaskan fungsinya.
Pada proyek ini, beberapa widget utama yang digunakan antara lain MaterialApp untuk dasar aplikasi dengan tema dan pengaturan judul, Scaffold sebagai struktur halaman yang berisi AppBar dan body, serta Column dan Row untuk menyusun elemen secara vertikal dan horizontal. Selain itu, digunakan Card untuk menampilkan konten dalam bentuk kartu, GridView untuk menyusun item dalam grid, dan InkWell untuk mendeteksi interaksi sentuhan dengan efek visual. SnackBar juga digunakan untuk memberikan pemberitahuan sementara saat pengguna berinteraksi dengan item. Semua widget ini bekerja bersama untuk menciptakan antarmuka aplikasi yang terstruktur, interaktif, dan responsif.

## Apa fungsi dari setState()? Jelaskan variabel apa saja yang dapat terdampak dengan fungsi tersebut.
Fungsi setState() dalam Flutter digunakan untuk memberi tahu framework bahwa ada perubahan dalam status atau data yang perlu diperbarui pada tampilan widget. Ketika setState() dipanggil, framework akan memicu proses rebuild (penyegaran) pada widget yang terkait dengan status yang diubah, dan memastikan tampilan yang terbaru ditampilkan di layar.

Variabel yang terdampak oleh setState() adalah variabel yang berada dalam State objek widget yang dipanggil setState(). Biasanya, ini mencakup variabel yang menyimpan data dinamis, seperti nilai input pengguna, hasil perhitungan, atau status lainnya yang mempengaruhi tampilan widget tersebut. Variabel ini biasanya adalah variabel yang dideklarasikan di dalam kelas State dan digunakan untuk memanipulasi tampilan widget berdasarkan perubahan data tersebut.

## Jelaskan perbedaan antara const dengan final.
Perbedaan antara const dan final dalam Dart terletak pada waktu penetapan nilai dan sifat ketetapannya. final digunakan untuk mendeklarasikan variabel yang hanya dapat diinisialisasi sekali, namun nilai tersebut dapat diberikan pada saat runtime, sehingga fleksibel terhadap waktu eksekusi. Sebaliknya, const digunakan untuk mendeklarasikan nilai yang sudah tetap pada waktu kompilasi dan tidak dapat diubah setelahnya, menjadikannya sebagai konstanta waktu kompilasi. Variabel atau objek const harus memiliki nilai yang diketahui pada kompilasi dan sering digunakan untuk mendeklarasikan nilai atau objek yang bersifat tetap sepanjang program.

## Jelaskan bagaimana cara kamu mengimplementasikan checklist-checklist di atas
Untuk memulai, saya membuat proyek Flutter baru dengan nama station_eleven_m. Setelah itu, saya membuat dua file utama, yaitu main.dart dan menu.dart, untuk memisahkan logika aplikasi dan tampilan. File main.dart berfungsi sebagai entry point aplikasi yang menginisialisasi MaterialApp, mengatur tema, dan menentukan tampilan awal. File menu.dart berisi halaman utama yang menampilkan berbagai tombol dengan fungsi berbeda, seperti melihat daftar produk, menambah produk, dan logout.

Di file menu.dart, saya mendefinisikan tiga tombol menggunakan widget ItemCard. Setiap tombol diberi teks dan ikon yang sesuai, seperti "Lihat Daftar Produk" dengan ikon Icons.list, "Tambah Produk" dengan ikon Icons.add, dan "Logout" dengan ikon Icons.logout. Tombol-tombol ini disusun dalam sebuah GridView.count, dengan tiga kolom untuk menampilkan tombol secara horizontal. Setiap tombol dapat ditekan untuk menjalankan aksi tertentu, yang akan memberikan respons berupa Snackbar.

Untuk memberikan konsistensi warna pada aplikasi, saya membuat warna kustom menggunakan MaterialColor yang didefinisikan di file main.dart. Warna ini berfungsi untuk memberikan nuansa yang sesuai dengan tema aplikasi. Setiap tombol diberi warna berbeda, menggunakan customColor[600] untuk tombol "Lihat Daftar Produk", customColor[800] untuk tombol "Tambah Produk", dan customColor[900] untuk tombol "Logout". Dengan cara ini, setiap tombol memiliki identitas warna yang membedakannya.

Pada setiap tombol, saya menggunakan widget InkWell untuk mendeteksi interaksi tap. Ketika salah satu tombol ditekan, aplikasi akan menampilkan SnackBar dengan pesan yang sesuai, seperti "Kamu telah menekan tombol Lihat Daftar Produk" untuk tombol pertama, "Kamu telah menekan tombol Tambah Produk" untuk tombol kedua, dan "Kamu telah menekan tombol Logout" untuk tombol ketiga. SnackBar ini memberikan umpan balik kepada pengguna atas aksi yang telah dilakukan.