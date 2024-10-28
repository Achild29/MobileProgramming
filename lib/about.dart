import 'package:flutter/material.dart';
import 'package:hyperlink/hyperlink.dart'; //cek di baris ke-335

// untuk melihat hasilnya: ganti pada main.dart, di method RunApp, ganti parametternya ke About.dart
// coppy code dibawah ini lalu ganti yang ada di main.dart
//-> void main(List<String> args) {
//->  runApp(About());
//-> }

class About extends StatelessWidget {
  const About({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //perintah dibawah ini untuk menghilangkan banner debug pada pojok kanan atas
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'About Manchester United',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
            ),
          ),
          backgroundColor: Colors.pink[400],
        ),
        body: Container(
          color: Colors.pink[100],
          child: ListView(
            children: const [
              Center(
                child: Text(
                  'Manchester United',
                  style: TextStyle(
                      color: Colors.red,
                      fontWeight: FontWeight.bold,
                      fontSize: 30),
                ),
              ),
              Divider(
                thickness: 5,
                color: Colors.white,
              ),
              Row(
                //sama hal nya seperti column akan tetapi jika column itu vertikal atau dari atas ke bawah
                //sedangkan untuk Row itu horizontal, yaitu dari kiri ke kanan atau ke samping
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Text(
                        'UEAFA SUPER CUP: 1x',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text('1991'),
                    ],
                  )
                ],
              ),
              Divider(
                thickness: 1,
                indent: 30,
                endIndent: 30,
                color: Colors.black,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Text(
                        ' FIFA CLUB WORLD CUP: 1x',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text('2008'),
                    ],
                  )
                ],
              ),
              Divider(
                thickness: 1,
                indent: 30,
                endIndent: 30,
                color: Colors.black,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Text(
                        'UEFA CHMAPIONS LEAGUE: 3x',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text('1968, '),
                          Text('1999, '),
                          Text('2008'),
                        ],
                      )
                    ],
                  )
                ],
              ),
              Divider(
                thickness: 1,
                indent: 30,
                endIndent: 30,
                color: Colors.black,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Text(
                        'UEAFA EUROPA LEAGUE: 1x',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text('2016/17')
                    ],
                  )
                ],
              ),
              Divider(
                thickness: 1,
                indent: 30,
                endIndent: 30,
                color: Colors.black,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Text(
                        ' FA CUP: 13x',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Row(
                        children: [
                          Text(' 1909, '),
                          Text('1948, '),
                          Text('1963, '),
                          Text('1977, '),
                        ],
                      ),
                      Row(
                        children: [
                          Text(' 1983, '),
                          Text('1985, '),
                          Text('1990, '),
                        ],
                      ),
                      Row(
                        children: [
                          Text(' 1994, '),
                          Text('1996, '),
                          Text('1999, '),
                        ],
                      ),
                      Row(
                        children: [
                          Text(' 2004, '),
                          Text('2016, '),
                          Text('2024, '),
                        ],
                      ),
                    ],
                  )
                ],
              ),
              Divider(
                thickness: 1,
                indent: 30,
                endIndent: 30,
                color: Colors.black,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Text(
                        ' LEAGUE TITLES: 20x',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Row(
                        children: [
                          Text(' 1908, '),
                          Text('1911, '),
                          Text('1952, '),
                          Text('1957, '),
                        ],
                      ),
                      Row(
                        children: [
                          Text(' 1965*, '),
                          Text('1967*, '),
                          Text('1977*, '),
                          Text('1983, '),
                        ],
                      ),
                      Row(
                        children: [
                          Text(' 1990*, '),
                          Text('1993, '),
                          Text('1994, '),
                          Text('1996, '),
                        ],
                      ),
                      Row(
                        children: [
                          Text(' 1997, '),
                          Text('2003, '),
                          Text('2007, '),
                          Text('2008, '),
                        ],
                      ),
                      Row(
                        children: [
                          Text(' 2008, '),
                          Text('2010, '),
                          Text('2011, '),
                          Text('2013, '),
                        ],
                      ),
                      Row(
                        children: [
                          Text(' 2016 '),
                          Text("(*Shared) "),
                        ],
                      ),
                    ],
                  )
                ],
              ),
              Divider(
                thickness: 1,
                indent: 30,
                endIndent: 30,
                color: Colors.black,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Text(
                        ' FA COMMUNITY SHIELD: 21x',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Row(
                        children: [
                          Text(' 1908, '),
                          Text('1911, '),
                          Text('1952, '),
                          Text('1957, '),
                        ],
                      ),
                      Row(
                        children: [
                          Text(' 1965*, '),
                          Text('1967*, '),
                          Text('1977*, '),
                          Text('1983, '),
                        ],
                      ),
                      Row(
                        children: [
                          Text(' 1990*, '),
                          Text('1993, '),
                          Text('1994, '),
                          Text('1996, '),
                        ],
                      ),
                      Row(
                        children: [
                          Text(' 1997, '),
                          Text('2003, '),
                          Text('2007, '),
                          Text('2008, '),
                        ],
                      ),
                      Row(
                        children: [
                          Text(' 2008, '),
                          Text('2010, '),
                          Text('2011, '),
                          Text('2013, '),
                        ],
                      ),
                      Row(
                        children: [
                          Text(' 2016 '),
                          Text("(*Shared) "),
                        ],
                      ),
                    ],
                  )
                ],
              ),
              Divider(
                thickness: 1,
                indent: 30,
                endIndent: 30,
                color: Colors.black,
              ),
              Center(
                //widget hyperlink fungsi nya seperti tag a href pada html
                //atau jika klik text maka akan mengarahkan ke suatu link/website tertentu
                // untuk menggunakan widget hyperlink, hal yanng pertama kita harus lakukan adalah
                //menambahkan dependecy: hyperlink: ^0.0.4 pada file pubsepec.yaml
                //cek file tersebut di baris ke-38
                // setelah kita mengedit file pubspec.yaml selanjutnya kita buka terminal pada vscode: lalu ketikan perintah berikut: flutter pub get
                // setelah semuanya sudah dilakukan jika masih merah jangan lupa import, cek di baris ke-2 pada file ini
                child: HyperLink(
                  linkStyle: TextStyle(color: Colors.red),
                  text:
                      'click [here](https://www.manutd.com/en/history/trophy-room) to see more',
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
