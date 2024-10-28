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
              )
            ],
          ),
        ),
      ),
    );
  }
}
