<!-- # house_of_kyny_mobile

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference. -->


Nama : Abby Shelley Tampubolon
NPM : 2306275254

TUGAS 7

1. Jelaskan apa yang dimaksud dengan stateless widget dan stateful widget, dan jelaskan perbedaan dari keduanya.

StatelessWidget adalah widget yang tidak memiliki “state” atau keadaan yang dapat berubah setelah dibuat. Artinya, konten atau tampilan yang ditampilkan oleh widget ini tetap sama selama aplikasi berjalan. Widget ini cocok untuk elemen yang sifatnya statis atau tidak membutuhkan pembaruan UI. Contoh umum dari StatelessWidget adalah Text, Icon, atau Container yang menampilkan konten tetap.
StatefulWidget adalah widget yang memiliki “state” dan bisa berubah saat aplikasi berjalan. Widget ini dapat merespons interaksi pengguna, perubahan data, atau peristiwa lain yang memengaruhi tampilan atau logika. StatefulWidget digunakan ketika bagian UI perlu diperbarui secara dinamis ketika ada perubahan. Contoh dari widget ini termasuk TextField atau Checkbox yang bergantung pada input pengguna.
Perbedaan antara keduanya adalah bahwa StatelessWidget bersifat statis dan tidak berubah, sementara StatefulWidget bersifat dinamis karena dapat memiliki state yang berubah. Pada StatefulWidget, kita menggunakan setState() untuk memperbarui UI, sementara pada StatelessWidget, tidak ada metode untuk memperbarui tampilan karena sifatnya yang tetap.

2. Sebutkan widget apa saja yang kamu gunakan pada proyek ini dan jelaskan fungsinya.

Scaffold: Menyediakan struktur dasar halaman Flutter, seperti menambahkan AppBar di bagian atas dan mengatur konten utama pada bagian body.
AppBar: Menampilkan header di atas halaman, termasuk judul aplikasi.
Column: Menyusun widget secara vertikal.
Row: Menyusun widget secara horizontal, digunakan untuk menampilkan beberapa InfoCard dalam satu baris.
Card: Membuat elemen dengan kotak bayangan (shadow) yang tampak seperti kartu.
GridView: Membuat grid untuk menampilkan item dalam layout teratur, di sini digunakan untuk menyusun ItemCard dalam tiga kolom.
Material: Membungkus ItemCard untuk mengimplementasikan efek material design seperti efek klik.
InkWell: Memberikan efek klik pada widget, digunakan untuk menampilkan SnackBar ketika ItemCard ditekan.
SnackBar: Menampilkan pesan sementara di bagian bawah layar sebagai respon setelah aksi dilakukan.
Icon: Menampilkan ikon pada ItemCard untuk menunjukkan fungsi tombol.
Text: Menampilkan teks untuk memberikan label atau informasi di berbagai widget.

3. Apa fungsi dari setState()? Jelaskan variabel apa saja yang dapat terdampak dengan fungsi tersebut.

setState() adalah metode yang digunakan dalam StatefulWidget untuk memberi tahu Flutter bahwa terjadi perubahan pada “state” yang membutuhkan pembaruan UI. Saat setState() dipanggil, Flutter akan me-refresh bagian UI yang terpengaruh, sehingga data atau tampilan terbaru bisa muncul.
Hanya variabel atau properti yang berada dalam State dari StatefulWidget yang dapat diperbarui menggunakan setState(). Contoh variabel yang mungkin dipengaruhi termasuk teks yang berubah, nilai dari form input, status checkbox, dan elemen lain yang berada dalam “state”.

4. Jelaskan perbedaan antara const dengan final.

const digunakan untuk variabel atau objek yang nilainya sudah diketahui pada waktu kompilasi dan tidak akan berubah. Semua nilai atau properti dari objek const juga harus bersifat konstan. Contohnya, const String title = "My App";
final digunakan untuk variabel atau objek yang nilainya diinisialisasi sekali dan tetap setelah itu, tetapi bisa ditentukan pada saat runtime. Variabel final tidak perlu nilainya diketahui pada waktu kompilasi seperti const. Contohnya, final int currentTime = DateTime.now().millisecondsSinceEpoch;

5. Jelaskan bagaimana cara kamu mengimplementasikan checklist-checklist di atas.

Pertama, saya mengecek dahulu apakah sudah mendownload flutter atau belum, apabila saya sudah download, maka saya kemudian mendownload Android Studio. dan kemudian setelah instalasi flutter saya kemudian menjalankan perintah di terminal "flutter doctor" yang bertujuan untuk membantu saya memeriksa status instalasi.
Kedua, saya membuat file baru didalam house_of_kyny_mobile/lib, dan kemudian menambahkan import di paling atas dan memindahkan beberapa baris dari main.dart yang berada didalam folder lib juga.
Ketiga, saya mengubah tema warna aplikasi pada main.dart, dan untuk mengubah warna tiap kotaknya itu berada didalam file menu.dart dimana dalam class itemHomepage kita menambahkan final Colors color kemudian di ItemHomepage("Logout", Icons.logout), kita juga menambahkan Colors untuk menset warna sesuai dengan kotaknya sehingga menjadi :
ItemHomepage("Logout", Icons.logout, Colors.yellow), dan pada widget(BuildContext context) kita set colornya menjadi item.color dan bukan secondary lagi.
Keempat, kita mengubah sifat widget halaman menu menjadi stateless. pada berkas main.dart hapus const MyHomePage(title: 'Flutter Demo Home Page') dan ubah menjadi MyHomePage();
Kelima, kita membuat card sederhana yang berisi NPM, Nama, dan Kelas kita. dan membuat class baru dengan nama Infocard untuk menampilkan informasinya.
Keenam, Membuat button card sederhana dengan icon, membuat class baru bernama ItemHomePage yang berisi atribut-atribut card yang dibuat. kemudian pada berkas menu.dart  kita letakan kodenya diluar class MyHomePage dan InfoCard. Kemudian tombol tersebut apabila ditekan akan menampilkan pesan seperti "Kamu telah menekan tombol [nama button]".
Ketujuh, Mengintegrasikan infocard dan itemcard untuk ditampilkan di MyHomePage dengan melakukan beberapa perubahan di bagian widget build() pada class MyHomePage.
 



TUGAS 8 
1. Apa kegunaan const di Flutter? Jelaskan apa keuntungan ketika menggunakan const pada kode Flutter. Kapan sebaiknya kita menggunakan const, dan kapan sebaiknya tidak digunakan?

Di Flutter, "const" digunakan untuk menunjukkan bahwa objek atau widget bersifat immutable (tidak dapat diubah setelah inisialisasi) dan nilai tersebut dapat dievaluasi pada waktu kompilasi, bukan pada waktu runtime. Ini berarti bahwa penggunaan const pada widget akan menghemat penggunaan memori dan meningkatkan performa aplikasi karena Flutter tidak perlu merebuild widget tersebut jika tidak terjadi perubahan.

Kapan Sebaiknya Menggunakan const?
Pada Widget yang Tidak Berubah: Gunakan const pada widget yang bersifat statis atau tidak akan berubah. Misalnya, jika kita memiliki widget seperti Text, Icon, atau widget lain yang menampilkan data statis, menggunakan const akan sangat efektif.
Pada Navigator Routes: Seperti pada kode yang Anda berikan, 
        penggunaan const di Navigator.push:
        Navigator.push(context, MaterialPageRoute(builder: (context) => const ProductEntryFormPage()));
Ini berguna jika ProductEntryFormPage tidak akan mengalami perubahan saat dipanggil, karena penggunaan const di sini memastikan bahwa halaman ProductEntryFormPage hanya akan di-build satu kali dan tidak akan berubah kecuali dipanggil ulang tanpa const.

Kapan Sebaiknya Tidak Menggunakan const?
Ketika Nilai Akan Berubah: Jangan gunakan const pada widget atau objek yang akan berubah nilainya selama runtime. Misalnya, jika widget bergantung pada data yang mungkin berubah seperti state, variabel dinamis, atau input pengguna, penggunaan const tidak tepat.
Pada Widget Stateful yang Menerima Data Dinamis: Jika widget membutuhkan data dinamis yang sering berubah, seperti input dari pengguna, atau hasil dari API, const tidak seharusnya digunakan karena data yang berubah ini akan memicu rebuild.


2. Jelaskan dan bandingkan penggunaan Column dan Row pada Flutter. Berikan contoh implementasi dari masing-masing layout widget ini!
Column : 
    Widget Column digunakan untuk menyusun elemen-elemen dalam orientasi vertikal (ke bawah). Setiap child widget dalam Column akan ditempatkan di bawah satu sama lain, secara berurutan.

    Penggunaan : digunakan ketika kita ingin menata elemen-elemen secara vertikal.
    Contoh pengimplementasiannya : 

    body: Form(
        key: _formKey,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: "Product",
                    labelText: "Product",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                  ),
                  onChanged: (String? value) {
                    setState(() {
                      _product = value!;
                    });
                  },
                  validator: (String? value) {
                    if (value == null || value.isEmpty) {
                      return "Product tidak boleh kosong!";
                    }
                    return null;
                  },
                ),
              ),
            ],
          )
        ),
      ),

Row : 
    Widget Row digunakan untuk menyusun elemen-elemen dalam orientasi horizontal (ke samping). Setiap child widget dalam Row akan ditempatkan di samping satu sama lain, secara berurutan.

    Penggunaan : digunakan ketika kita ingin menata elemen-elemen secara horizontal.
    Contoh penggunaannya : 

        Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
                Icon(Icons.star, size: 40),
                Text('Star', style: TextStyle(fontSize: 20)),
                ElevatedButton(
                onPressed: () {},
                child: Text('Button'),
                ),
            ],
        )

3. Sebutkan apa saja elemen input yang kamu gunakan pada halaman form yang kamu buat pada tugas kali ini. Apakah terdapat elemen input Flutter lain yang tidak kamu gunakan pada tugas ini? Jelaskan!

Saya menggunakan TextFormField untuk input saya berupa : 
- Product: Digunakan untuk memasukkan nama produk.
- Size: Digunakan untuk memasukkan ukuran produk.
- Description: Digunakan untuk memasukkan deskripsi produk.
- Quantity: Digunakan untuk memasukkan jumlah produk.
- Price: Digunakan untuk memasukkan harga produk.
Selain itu, setiap TextFormField dibungkus dengan widget Padding untuk memberikan jarak antar elemen dan memastikan tampilannya rapi.

Dan untuk elemen Input Flutter Lain yang Tidak Digunakan:
- Checkbox: Digunakan untuk pilihan biner (misalnya, persetujuan atau konfirmasi).
- Radio: Digunakan untuk memilih satu opsi dari beberapa pilihan.
- Switch: Digunakan untuk memilih antara dua pilihan, seperti hidup/mati atau aktif/non-aktif.
- Dropdown (DropdownButton): Digunakan untuk memilih satu item dari banyak pilihan dalam sebuah daftar dropdown.

4. Bagaimana cara kamu mengatur tema (theme) dalam aplikasi Flutter agar aplikasi yang dibuat konsisten? Apakah kamu mengimplementasikan tema pada aplikasi yang kamu buat?
Pada aplikasi yang saya buat, tema telah diterapkan secara konsisten. Misalnya, pada AppBar, warna latar belakang dan teks diatur menggunakan nilai dari Theme.of(context).colorScheme.primary, yang mengambil warna utama dari tema. Begitu juga dengan teks pada halaman utama dan drawer, yang mengikuti warna utama dan teks yang sudah didefinisikan dalam tema. Ini membantu menjaga konsistensi warna antara elemen-elemen di dalam aplikasi.
Sebagai contoh implementasi, saya mendefinisikan warna utama aplikasi dengan primary di dalam colorScheme, dan menggunakan warna tersebut untuk elemen-elemen penting seperti latar belakang AppBar dan teks. Selain itu, gaya teks untuk elemen seperti judul dan konten juga disesuaikan dengan textTheme yang telah ditentukan. Dengan demikian, tema tidak hanya menjaga konsistensi warna, tetapi juga memastikan tampilan aplikasi lebih terstruktur dan mudah dipahami oleh pengguna. Tema ini dapat diterapkan pada seluruh aplikasi, dan bisa diubah secara global tanpa perlu mengubah elemen-elemen secara manual di setiap widget.

5. Bagaimana cara kamu menangani navigasi dalam aplikasi dengan banyak halaman pada Flutter?
Navigasi antar halaman di Flutter dapat dilakukan dengan memanfaatkan Navigator, yang memungkinkan kita untuk berpindah ke halaman lain menggunakan Navigator.push() atau kembali ke halaman sebelumnya menggunakan Navigator.pop(). Berikut adalah contoh implementasi:
Untuk berpindah ke halaman baru:
        Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => HalamanBaru()),
        );
