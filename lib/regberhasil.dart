// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'landingpage.dart';
import 'registrasi.dart';

class RegBerhasil extends StatefulWidget {
  const RegBerhasil({Key? key}) : super(key: key);

  @override
  State<RegBerhasil> createState() => _RegBerhasilState();
}

class _RegBerhasilState extends State<RegBerhasil> {
  @override
  Widget build(BuildContext context) {
    var uname = RegPage.uname;
    var pass = RegPage.pass;
    var cpass = RegPage.cpass;
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 20, 71, 104),
      body: Column(
        children: [
          const Spacer(),
          Center(
              child: Container(
                  margin: const EdgeInsets.only(bottom: 20),
                  child: const Text(
                    "BERHASIL REGISTRASI",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontFamily: 'JosefinSans',
                    ),
                  ))),
          Center(
            child: SizedBox(
              width: 200,
              height: 200,
              child: Image.asset(
                'assets/icon.png',
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 20),
            child: Text(
              "USERNAME $uname",
              style: TextStyle(
                color: Colors.white,
                fontSize: 15,
                fontFamily: 'JosefinSans',
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 20),
            child: Text(
              "PASS $pass",
              style: TextStyle(
                color: Colors.white,
                fontSize: 15,
                fontFamily: 'JosefinSans',
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 20),
            child: Text(
              "CPASS $cpass",
              style: TextStyle(
                color: Colors.white,
                fontSize: 15,
                fontFamily: 'JosefinSans',
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 20),
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const LandingPage()),
                );
              },
              child: const Text('KEMBALI'),
            ),
          ),
          const Spacer(),
          Container(
            margin: EdgeInsets.only(bottom: 4),
            child: const Text(
              "JAZZ O'GIBRAN",
              style: TextStyle(
                color: Colors.white,
                fontSize: 15,
                fontFamily: 'JosefinSans',
              ),
            ),
          ),
          const Text(
            "POWERED BY BANK INDONESIA",
            style: TextStyle(
              color: Colors.white,
              fontSize: 15,
              fontFamily: 'JosefinSans',
            ),
          ),
        ],
      ),
    );
  }
}
