import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //MaterialApp adalah widget yang digunakan sebagai root(akar/inti) dari seluruh antarmuka aplikasi Flutter.
      //didalam widget Material app terdapat parameter home yang isi nya adalah Scaffold
      // Scaffold adalah sebuah widget dalam flutter yang menyediakan banyak widget seperti
      // Drawer, SnackBar, BottomNavigationBar, FloatingActionButton, AppBar, dan lain-lain.
      home: Scaffold(
        //widget AppBar menambahkan panel seperti NavBar dibagian atas aplikasi
        appBar: AppBar(
          title: const Text(
            //Widget Text untuk menampilkan Text Berupa String
            'The Best Team in Premier League',
            //parameter yang dimiliki widget Text: style untuk merubah tampilan text tersebut
            style: TextStyle(
              //berikut ini Parameter yg dimiliki oleh widget TextStyle;
              color: Colors.white, //Merubah warna text menjadi putih
              fontWeight:
                  FontWeight.bold, //merubah text menjadi Bold / cetak tebal
              fontSize: 18, //merubah ukuran dari text
            ),
          ),
          //menambahkan warna untuk AppBar
          backgroundColor: Colors.pink[400],
        ),
        //untuk parameter body, parameter ini biasanya akan diisi oleh widget yang
        //akan memperluas atau menempati seluruh layar perangkat/tampilan
        body: Container(
          //disni saya menggunakan widget container untuk mewarnai seluruh layar/tampilan yang tersisa
          color: Colors.pink[100],
          child: const Column(
            //disni saya mengisi paramater body dengan widget Column, dimana widget column bisa diisi lagi dengan banyak widget didalm childrennya
            //dan tampilannya kebawah/vertikal.
            mainAxisAlignment: MainAxisAlignment.center,
            //diatas saya menggunakan parameter mainAxixsAligment dengan value center, yang membuat childrennya berada di tengah
            children: [
              Text(
                'Manchester is',
                style: TextStyle(fontSize: 50),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                //diatas saya menggunakan parameter mainAxixsAligment dengan value spaceEvenly
                //agar membuat childrennya mempunyai spase kosoong yg rata
                children: [
                  Text(
                    'blue',
                    style: TextStyle(
                      color: Colors.lightBlue,
                      fontWeight: FontWeight.w200, //agar terlihat lebih tipis
                      decoration: TextDecoration.lineThrough,
                      //diatas untuk menambahkan garis tengah pada text
                      decorationColor: Colors.blue,
                      //memberi warna biru pada garis tengah
                      decorationThickness: 2,
                      //memberikan ketebalan
                      fontSize: 30,
                    ),
                  ),
                  Text(
                    'Red',
                    style: TextStyle(
                        color: Colors.red,
                        fontWeight: FontWeight.bold,
                        fontSize: 40),
                  ),
                ],
              ),
            ],
          ),
        ),
        drawer: Drawer(
          //seperti sidebar yg terhide/offset
          backgroundColor: Colors.pink[400],
          child: ListView(
            //seperti column tetapi bisa di scroll jika jumlah children melebihi layar/tampilan
            children: [
              const DrawerHeader(
                //seperti appbar tetapi didalam drawer
                child: Column(
                  children: [
                    Flexible(
                      //agar terlihat flexibel di semua layar/device
                      flex: 2,
                      //perbandingannya dengan flexibel yang lain adalah 2
                      // cara menghitungnya adalah banyaknya nilai flex dibagi dengan nilai flex itu sendiri
                      // contoh nya di sini terdapat total/banyaknya nilai fles adalah 3, sedangkan nilai flex itu sendiri adalah 2
                      // maka perbandingannya adalaha 2per3 => 2/3
                      child: Image(
                        //menambahkan gambar
                        image: NetworkImage(
                            //menagambil gambar yg bersumberkan dari internet
                            'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg'),
                      ),
                    ),
                    Divider(
                      //membuat seperti garis pembatas
                      thickness: 1,
                      //menambahkan ketebalan
                    ),
                    Flexible(
                      flex: 1,
                      child: Text('Drawer header'),
                    ),
                  ],
                ),
              ),
              ListTile(
                //sama seperti column tetapi memiliki banyak paramter yang berspesifik
                // dan memiliki paramter ontap yang dimana jika diklik akan menjalankan fungsi tertentu
                title: const Text(
                  'About',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                onTap: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
