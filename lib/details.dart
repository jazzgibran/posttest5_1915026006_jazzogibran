// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class CekSaldo extends StatefulWidget {
  const CekSaldo({Key? key}) : super(key: key);

  @override
  State<CekSaldo> createState() => _CekSaldoState();
}

class _CekSaldoState extends State<CekSaldo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "SALDO",
        ),
        backgroundColor: Color.fromARGB(255, 17, 66, 98),
      ),
      backgroundColor: const Color.fromARGB(255, 36, 112, 163),
      body: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          Container(
              width: 300,
              margin: EdgeInsets.only(bottom: 7),
              child: Text(
                "Informasi Rekening :",
                style: TextStyle(fontSize: 16, color: Colors.white),
              )),
          Center(
            child: Container(
              margin: EdgeInsets.only(bottom: 7),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10), color: Colors.white),
              width: 300,
              height: 30,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Text(
                          "Rekening / Giro",
                          style: TextStyle(fontSize: 16),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10), color: Colors.white),
            width: 300,
            height: 70,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10, top: 5),
                  child: Text(
                    "0002001300248960",
                    style: TextStyle(fontSize: 16),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10, bottom: 5),
                  child: Text(
                    "Saldo : IDR 534.021,12",
                    style: TextStyle(fontSize: 16),
                  ),
                ),
              ],
            ),
          ),
          Spacer(),
          Container(
            margin: EdgeInsets.only(bottom: 20),
            child: ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
              ),
              child: Text(
                'KEMBALI',
                style: TextStyle(
                    fontSize: 12, color: Color.fromARGB(255, 17, 66, 98)),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Transfer extends StatefulWidget {
  const Transfer({Key? key}) : super(key: key);

  @override
  State<Transfer> createState() => _TransferState();
}

class _TransferState extends State<Transfer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "TRANSFER",
        ),
        backgroundColor: Color.fromARGB(255, 17, 66, 98),
      ),
      backgroundColor: const Color.fromARGB(255, 36, 112, 163),
      body: Column(children: [
        SizedBox(
          height: 50,
        ),
        Center(
          child: Column(
            children: [
              Text(
                "Rekening Sumber",
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
              Container(
                margin: EdgeInsets.only(top: 5),
                width: 320,
                height: 40,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white),
                child: Center(
                  child: Text(
                    "0002001300248960",
                    style: TextStyle(
                        color: Color.fromARGB(255, 17, 66, 98), fontSize: 16),
                  ),
                ),
              )
            ],
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Text(
          "Rekening Tujuan",
          style: TextStyle(color: Colors.white, fontSize: 16),
        ),
        SizedBox(
          height: 5,
        ),
        Center(
          child: SizedBox(
            width: 320,
            child: TextFormField(
              // controller: unamectrl,
              style: TextStyle(color: Colors.white),
              decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide:
                          const BorderSide(color: Colors.white, width: 2.0)),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                    borderSide: BorderSide(color: Colors.white),
                  ),
                  isDense: true,
                  contentPadding: EdgeInsets.fromLTRB(10, 30, 10, 0),
                  label: Text("Masukkan Nomor Rekening"),
                  labelStyle: TextStyle(color: Colors.white)),
            ),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Text(
          "Jumlah",
          style: TextStyle(color: Colors.white, fontSize: 16),
        ),
        SizedBox(
          height: 5,
        ),
        Center(
          child: SizedBox(
            width: 320,
            child: TextFormField(
              // controller: unamectrl,
              style: TextStyle(color: Colors.white),
              decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide:
                          const BorderSide(color: Colors.white, width: 2.0)),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                    borderSide: BorderSide(color: Colors.white),
                  ),
                  isDense: true,
                  contentPadding: EdgeInsets.fromLTRB(10, 30, 10, 0),
                  label: Text("Masukkan Jumlah"),
                  labelStyle: TextStyle(color: Colors.white)),
            ),
          ),
        ),
        Spacer(),
        Container(
          margin: EdgeInsets.only(bottom: 20),
          child: ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
            ),
            child: SizedBox(
              width: 320,
              child: Center(
                child: Text(
                  'KIRIM',
                  style: TextStyle(
                      fontSize: 16, color: Color.fromARGB(255, 17, 66, 98)),
                ),
              ),
            ),
          ),
        ),
      ]),
    );
  }
}

class CekMutasi extends StatefulWidget {
  const CekMutasi({Key? key}) : super(key: key);

  @override
  State<CekMutasi> createState() => _CekMutasiState();
}

class _CekMutasiState extends State<CekMutasi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "MUTASI",
        ),
        backgroundColor: Color.fromARGB(255, 17, 66, 98),
      ),
      backgroundColor: const Color.fromARGB(255, 36, 112, 163),
      body: Column(children: [
        SizedBox(
          height: 50,
        ),
        Center(
          child: Text(
            "Menampilkan Mutasi Rekening 30 hari terakhir",
            style: TextStyle(color: Colors.white, fontSize: 16),
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 2),
          width: 330,
          height: 2,
          color: Colors.white,
        ),
        Container(
          margin: EdgeInsets.only(top: 10),
          width: 330,
          height: 390,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.white,
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: SingleChildScrollView(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                    margin: EdgeInsets.only(bottom: 15),
                    child: Text("Mutasi Rekening 0002001300248960")),
                Container(
                  margin: EdgeInsets.only(bottom: 15),
                  child: Text(
                    "D 10/05/22 10:09:05 IDR 171.000,00 Bill Pay Gopay SA 9000 082132925340 4135709701 10090505100005709701",
                    style: TextStyle(color: Colors.red),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 15),
                  child: Text(
                    "D 10/05/22 09:11:23 IDR 843.998,00 Bill SA VA TOKPED PAY TOPED 082132925340 TKPJazz MOB 1301 99017340 SB1035739776 TKP486",
                    style: TextStyle(color: Colors.red),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 15),
                  child: Text(
                    "D 01/05/22 18:12:56 IDR 290.301,00 Bill SA VA TOKPED PAY TOPED 082132925340 PLSJazz MOB 130001 99015340 SB1484 PLS976",
                    style: TextStyle(color: Colors.red),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 15),
                  child: Text(
                    "D 01/05/22 17:36:39 IDR 51.500,00 SMS Pay Ponsel SA PREPAID TELKOMSEL 00162 PREPAID TELKOMSEL 00162 SB0084",
                    style: TextStyle(color: Colors.red),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 15),
                  child: Text(
                    "C 30/04/22 00:00:00 IDR 2.544,00 Bunga Rekening",
                    style: TextStyle(color: Colors.blue),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 15),
                  child: Text(
                    "D 30/04/22 00:00:00 IDR 510,00 Pajak",
                    style: TextStyle(color: Colors.red),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 15),
                  child: Text(
                    "D 30/04/22 00:00:00 IDR 2.500,00 Biaya Administrasi",
                    style: TextStyle(color: Colors.red),
                  ),
                ),
              ],
            )),
          ),
        ),
        Spacer(),
        Container(
          margin: EdgeInsets.only(bottom: 20),
          child: ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
            ),
            child: Text(
              'KEMBALI',
              style: TextStyle(
                  fontSize: 12, color: Color.fromARGB(255, 17, 66, 98)),
            ),
          ),
        ),
      ]),
    );
  }
}

class Listrik extends StatefulWidget {
  const Listrik({Key? key}) : super(key: key);

  @override
  State<Listrik> createState() => _ListrikState();
}

class _ListrikState extends State<Listrik> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "PEMBAYARAN LISTRIK",
        ),
        backgroundColor: Color.fromARGB(255, 17, 66, 98),
      ),
      backgroundColor: const Color.fromARGB(255, 36, 112, 163),
      body: Column(children: [
        SizedBox(
          height: 50,
        ),
        Center(
          child: Column(
            children: [
              Text(
                "Rekening Sumber",
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
              Container(
                margin: EdgeInsets.only(top: 5),
                width: 320,
                height: 40,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white),
                child: Center(
                  child: Text(
                    "0002001300248960",
                    style: TextStyle(
                        color: Color.fromARGB(255, 17, 66, 98), fontSize: 16),
                  ),
                ),
              )
            ],
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Text(
          "PLN POSTPAID",
          style: TextStyle(color: Colors.white, fontSize: 16),
        ),
        SizedBox(
          height: 5,
        ),
        Center(
          child: SizedBox(
            width: 320,
            child: TextFormField(
              // controller: unamectrl,
              style: TextStyle(color: Colors.white),
              decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide:
                          const BorderSide(color: Colors.white, width: 2.0)),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                    borderSide: BorderSide(color: Colors.white),
                  ),
                  isDense: true,
                  contentPadding: EdgeInsets.fromLTRB(10, 30, 10, 0),
                  label: Text("Masukkan Nomor Pelanggan"),
                  labelStyle: TextStyle(color: Colors.white)),
            ),
          ),
        ),
        Spacer(),
        Container(
          margin: EdgeInsets.only(bottom: 20),
          child: ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
            ),
            child: SizedBox(
              width: 320,
              child: Center(
                child: Text(
                  'KIRIM',
                  style: TextStyle(
                      fontSize: 16, color: Color.fromARGB(255, 17, 66, 98)),
                ),
              ),
            ),
          ),
        ),
      ]),
    );
  }
}

class PDAM extends StatefulWidget {
  const PDAM({Key? key}) : super(key: key);

  @override
  State<PDAM> createState() => _PDAMState();
}

class _PDAMState extends State<PDAM> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "PEMBAYARAN PDAM",
        ),
        backgroundColor: Color.fromARGB(255, 17, 66, 98),
      ),
      backgroundColor: const Color.fromARGB(255, 36, 112, 163),
      body: Column(children: [
        SizedBox(
          height: 50,
        ),
        Center(
          child: Column(
            children: [
              Text(
                "Rekening Sumber",
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
              Container(
                margin: EdgeInsets.only(top: 5),
                width: 320,
                height: 40,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white),
                child: Center(
                  child: Text(
                    "0002001300248960",
                    style: TextStyle(
                        color: Color.fromARGB(255, 17, 66, 98), fontSize: 16),
                  ),
                ),
              )
            ],
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Text(
          "PDAM",
          style: TextStyle(color: Colors.white, fontSize: 16),
        ),
        SizedBox(
          height: 5,
        ),
        Center(
          child: SizedBox(
            width: 320,
            child: TextFormField(
              // controller: unamectrl,
              style: TextStyle(color: Colors.white),
              decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide:
                          const BorderSide(color: Colors.white, width: 2.0)),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                    borderSide: BorderSide(color: Colors.white),
                  ),
                  isDense: true,
                  contentPadding: EdgeInsets.fromLTRB(10, 30, 10, 0),
                  label: Text("Masukkan Nomor Pelanggan"),
                  labelStyle: TextStyle(color: Colors.white)),
            ),
          ),
        ),
        Spacer(),
        Container(
          margin: EdgeInsets.only(bottom: 20),
          child: ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
            ),
            child: SizedBox(
              width: 320,
              child: Center(
                child: Text(
                  'KIRIM',
                  style: TextStyle(
                      fontSize: 16, color: Color.fromARGB(255, 17, 66, 98)),
                ),
              ),
            ),
          ),
        ),
      ]),
    );
  }
}

class VirtualAkun extends StatefulWidget {
  const VirtualAkun({Key? key}) : super(key: key);

  @override
  State<VirtualAkun> createState() => _VirtualAkunState();
}

class _VirtualAkunState extends State<VirtualAkun> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "VIRTUAL ACCOUNT",
        ),
        backgroundColor: Color.fromARGB(255, 17, 66, 98),
      ),
      backgroundColor: const Color.fromARGB(255, 36, 112, 163),
      body: Column(children: [
        SizedBox(
          height: 50,
        ),
        Center(
          child: Column(
            children: [
              Text(
                "Rekening Sumber",
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
              Container(
                margin: EdgeInsets.only(top: 5),
                width: 320,
                height: 40,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white),
                child: Center(
                  child: Text(
                    "0002001300248960",
                    style: TextStyle(
                        color: Color.fromARGB(255, 17, 66, 98), fontSize: 16),
                  ),
                ),
              )
            ],
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Text(
          "Virtual Account",
          style: TextStyle(color: Colors.white, fontSize: 16),
        ),
        SizedBox(
          height: 5,
        ),
        Center(
          child: SizedBox(
            width: 320,
            child: TextFormField(
              // controller: unamectrl,
              style: TextStyle(color: Colors.white),
              decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide:
                          const BorderSide(color: Colors.white, width: 2.0)),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                    borderSide: BorderSide(color: Colors.white),
                  ),
                  isDense: true,
                  contentPadding: EdgeInsets.fromLTRB(10, 30, 10, 0),
                  label: Text("Masukkan Nomor Virtual Account"),
                  labelStyle: TextStyle(color: Colors.white)),
            ),
          ),
        ),
        Spacer(),
        Container(
          margin: EdgeInsets.only(bottom: 20),
          child: ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
            ),
            child: SizedBox(
              width: 320,
              child: Center(
                child: Text(
                  'KIRIM',
                  style: TextStyle(
                      fontSize: 16, color: Color.fromARGB(255, 17, 66, 98)),
                ),
              ),
            ),
          ),
        ),
      ]),
    );
  }
}

class Pulsa extends StatefulWidget {
  const Pulsa({Key? key}) : super(key: key);

  @override
  State<Pulsa> createState() => _PulsaState();
}

class _PulsaState extends State<Pulsa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "ISI ULANG PULSA",
        ),
        backgroundColor: Color.fromARGB(255, 17, 66, 98),
      ),
      backgroundColor: const Color.fromARGB(255, 36, 112, 163),
      body: Column(children: [
        SizedBox(
          height: 50,
        ),
        Center(
          child: Column(
            children: [
              Text(
                "Rekening Sumber",
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
              Container(
                margin: EdgeInsets.only(top: 5),
                width: 320,
                height: 40,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white),
                child: Center(
                  child: Text(
                    "0002001300248960",
                    style: TextStyle(
                        color: Color.fromARGB(255, 17, 66, 98), fontSize: 16),
                  ),
                ),
              )
            ],
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Text(
          "Nomor Tujuan",
          style: TextStyle(color: Colors.white, fontSize: 16),
        ),
        SizedBox(
          height: 5,
        ),
        Center(
          child: SizedBox(
            width: 320,
            child: TextFormField(
              // controller: unamectrl,
              style: TextStyle(color: Colors.white),
              decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide:
                          const BorderSide(color: Colors.white, width: 2.0)),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                    borderSide: BorderSide(color: Colors.white),
                  ),
                  isDense: true,
                  contentPadding: EdgeInsets.fromLTRB(10, 30, 10, 0),
                  label: Text("Masukkan Nomor HP"),
                  labelStyle: TextStyle(color: Colors.white)),
            ),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Text(
          "Nominal",
          style: TextStyle(color: Colors.white, fontSize: 16),
        ),
        SizedBox(
          height: 5,
        ),
        Center(
          child: SizedBox(
            width: 320,
            child: TextFormField(
              // controller: unamectrl,
              style: TextStyle(color: Colors.white),
              decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide:
                          const BorderSide(color: Colors.white, width: 2.0)),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                    borderSide: BorderSide(color: Colors.white),
                  ),
                  isDense: true,
                  contentPadding: EdgeInsets.fromLTRB(10, 30, 10, 0),
                  label: Text("Masukkan Nominal Pulsa"),
                  labelStyle: TextStyle(color: Colors.white)),
            ),
          ),
        ),
        Spacer(),
        Container(
          margin: EdgeInsets.only(bottom: 20),
          child: ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
            ),
            child: SizedBox(
              width: 320,
              child: Center(
                child: Text(
                  'KIRIM',
                  style: TextStyle(
                      fontSize: 16, color: Color.fromARGB(255, 17, 66, 98)),
                ),
              ),
            ),
          ),
        ),
      ]),
    );
  }
}

class LinkAja extends StatefulWidget {
  const LinkAja({Key? key}) : super(key: key);

  @override
  State<LinkAja> createState() => _LinkAjaState();
}

class _LinkAjaState extends State<LinkAja> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "TOP UP LINKAJA",
        ),
        backgroundColor: Color.fromARGB(255, 17, 66, 98),
      ),
      backgroundColor: const Color.fromARGB(255, 36, 112, 163),
      body: Column(children: [
        SizedBox(
          height: 50,
        ),
        Center(
          child: Column(
            children: [
              Text(
                "Rekening Sumber",
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
              Container(
                margin: EdgeInsets.only(top: 5),
                width: 320,
                height: 40,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white),
                child: Center(
                  child: Text(
                    "0002001300248960",
                    style: TextStyle(
                        color: Color.fromARGB(255, 17, 66, 98), fontSize: 16),
                  ),
                ),
              )
            ],
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Text(
          "Nomor Tujuan",
          style: TextStyle(color: Colors.white, fontSize: 16),
        ),
        SizedBox(
          height: 5,
        ),
        Center(
          child: SizedBox(
            width: 320,
            child: TextFormField(
              // controller: unamectrl,
              style: TextStyle(color: Colors.white),
              decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide:
                          const BorderSide(color: Colors.white, width: 2.0)),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                    borderSide: BorderSide(color: Colors.white),
                  ),
                  isDense: true,
                  contentPadding: EdgeInsets.fromLTRB(10, 30, 10, 0),
                  label: Text("Masukkan Nomor LinkAja"),
                  labelStyle: TextStyle(color: Colors.white)),
            ),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Text(
          "Nominal",
          style: TextStyle(color: Colors.white, fontSize: 16),
        ),
        SizedBox(
          height: 5,
        ),
        Center(
          child: SizedBox(
            width: 320,
            child: TextFormField(
              // controller: unamectrl,
              style: TextStyle(color: Colors.white),
              decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide:
                          const BorderSide(color: Colors.white, width: 2.0)),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                    borderSide: BorderSide(color: Colors.white),
                  ),
                  isDense: true,
                  contentPadding: EdgeInsets.fromLTRB(10, 30, 10, 0),
                  label: Text("Masukkan Nominal Saldo"),
                  labelStyle: TextStyle(color: Colors.white)),
            ),
          ),
        ),
        Spacer(),
        Container(
          margin: EdgeInsets.only(bottom: 20),
          child: ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
            ),
            child: SizedBox(
              width: 320,
              child: Center(
                child: Text(
                  'KIRIM',
                  style: TextStyle(
                      fontSize: 16, color: Color.fromARGB(255, 17, 66, 98)),
                ),
              ),
            ),
          ),
        ),
      ]),
    );
  }
}

class Gopay extends StatefulWidget {
  const Gopay({Key? key}) : super(key: key);

  @override
  State<Gopay> createState() => _GopayState();
}

class _GopayState extends State<Gopay> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "TOP UP GOPAY",
        ),
        backgroundColor: Color.fromARGB(255, 17, 66, 98),
      ),
      backgroundColor: const Color.fromARGB(255, 36, 112, 163),
      body: Column(children: [
        SizedBox(
          height: 50,
        ),
        Center(
          child: Column(
            children: [
              Text(
                "Rekening Sumber",
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
              Container(
                margin: EdgeInsets.only(top: 5),
                width: 320,
                height: 40,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white),
                child: Center(
                  child: Text(
                    "0002001300248960",
                    style: TextStyle(
                        color: Color.fromARGB(255, 17, 66, 98), fontSize: 16),
                  ),
                ),
              )
            ],
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Text(
          "Nomor Tujuan",
          style: TextStyle(color: Colors.white, fontSize: 16),
        ),
        SizedBox(
          height: 5,
        ),
        Center(
          child: SizedBox(
            width: 320,
            child: TextFormField(
              // controller: unamectrl,
              style: TextStyle(color: Colors.white),
              decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide:
                          const BorderSide(color: Colors.white, width: 2.0)),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                    borderSide: BorderSide(color: Colors.white),
                  ),
                  isDense: true,
                  contentPadding: EdgeInsets.fromLTRB(10, 30, 10, 0),
                  label: Text("Masukkan Nomor GoPay"),
                  labelStyle: TextStyle(color: Colors.white)),
            ),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Text(
          "Nominal",
          style: TextStyle(color: Colors.white, fontSize: 16),
        ),
        SizedBox(
          height: 5,
        ),
        Center(
          child: SizedBox(
            width: 320,
            child: TextFormField(
              // controller: unamectrl,
              style: TextStyle(color: Colors.white),
              decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide:
                          const BorderSide(color: Colors.white, width: 2.0)),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                    borderSide: BorderSide(color: Colors.white),
                  ),
                  isDense: true,
                  contentPadding: EdgeInsets.fromLTRB(10, 30, 10, 0),
                  label: Text("Masukkan Nominal Saldo"),
                  labelStyle: TextStyle(color: Colors.white)),
            ),
          ),
        ),
        Spacer(),
        Container(
          margin: EdgeInsets.only(bottom: 20),
          child: ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
            ),
            child: SizedBox(
              width: 320,
              child: Center(
                child: Text(
                  'KIRIM',
                  style: TextStyle(
                      fontSize: 16, color: Color.fromARGB(255, 17, 66, 98)),
                ),
              ),
            ),
          ),
        ),
      ]),
    );
  }
}

class Ovo extends StatefulWidget {
  const Ovo({Key? key}) : super(key: key);

  @override
  State<Ovo> createState() => _OvoState();
}

class _OvoState extends State<Ovo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "TOP UP OVO",
        ),
        backgroundColor: Color.fromARGB(255, 17, 66, 98),
      ),
      backgroundColor: const Color.fromARGB(255, 36, 112, 163),
      body: Column(children: [
        SizedBox(
          height: 50,
        ),
        Center(
          child: Column(
            children: [
              Text(
                "Rekening Sumber",
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
              Container(
                margin: EdgeInsets.only(top: 5),
                width: 320,
                height: 40,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white),
                child: Center(
                  child: Text(
                    "0002001300248960",
                    style: TextStyle(
                        color: Color.fromARGB(255, 17, 66, 98), fontSize: 16),
                  ),
                ),
              )
            ],
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Text(
          "Nomor Tujuan",
          style: TextStyle(color: Colors.white, fontSize: 16),
        ),
        SizedBox(
          height: 5,
        ),
        Center(
          child: SizedBox(
            width: 320,
            child: TextFormField(
              // controller: unamectrl,
              style: TextStyle(color: Colors.white),
              decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide:
                          const BorderSide(color: Colors.white, width: 2.0)),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                    borderSide: BorderSide(color: Colors.white),
                  ),
                  isDense: true,
                  contentPadding: EdgeInsets.fromLTRB(10, 30, 10, 0),
                  label: Text("Masukkan Nomor OVO"),
                  labelStyle: TextStyle(color: Colors.white)),
            ),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Text(
          "Nominal",
          style: TextStyle(color: Colors.white, fontSize: 16),
        ),
        SizedBox(
          height: 5,
        ),
        Center(
          child: SizedBox(
            width: 320,
            child: TextFormField(
              // controller: unamectrl,
              style: TextStyle(color: Colors.white),
              decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide:
                          const BorderSide(color: Colors.white, width: 2.0)),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                    borderSide: BorderSide(color: Colors.white),
                  ),
                  isDense: true,
                  contentPadding: EdgeInsets.fromLTRB(10, 30, 10, 0),
                  label: Text("Masukkan Nominal Saldo"),
                  labelStyle: TextStyle(color: Colors.white)),
            ),
          ),
        ),
        Spacer(),
        Container(
          margin: EdgeInsets.only(bottom: 20),
          child: ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
            ),
            child: SizedBox(
              width: 320,
              child: Center(
                child: Text(
                  'KIRIM',
                  style: TextStyle(
                      fontSize: 16, color: Color.fromARGB(255, 17, 66, 98)),
                ),
              ),
            ),
          ),
        ),
      ]),
    );
  }
}

class ContactUs extends StatefulWidget {
  const ContactUs({Key? key}) : super(key: key);

  @override
  State<ContactUs> createState() => _ContactUsState();
}

class _ContactUsState extends State<ContactUs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "CONTACT US",
        ),
        backgroundColor: Color.fromARGB(255, 17, 66, 98),
      ),
      backgroundColor: const Color.fromARGB(255, 36, 112, 163),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 50,
            ),
            Container(
                width: 300,
                margin: EdgeInsets.only(bottom: 7),
                child: Text(
                  "Hubungi Kami di :",
                  style: TextStyle(fontSize: 16, color: Colors.white),
                )),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10), color: Colors.white),
              width: 300,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IntrinsicHeight(
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 10, top: 5, bottom: 5),
                          child: Icon(Icons.email),
                        ),
                        VerticalDivider(
                          color: Colors.black,
                          thickness: 3,
                        ),
                        Padding(
                          padding:
                              const EdgeInsets.only(left: 5, top: 5, bottom: 5),
                          child: Text("abcd@gmail.com"),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10), color: Colors.white),
              width: 300,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IntrinsicHeight(
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 10, top: 5, bottom: 5),
                          child: Icon(Icons.phone),
                        ),
                        VerticalDivider(
                          color: Colors.black,
                          thickness: 3,
                        ),
                        Padding(
                          padding:
                              const EdgeInsets.only(left: 5, top: 5, bottom: 5),
                          child: Text("0808080808"),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10), color: Colors.white),
              width: 300,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IntrinsicHeight(
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 10, top: 5, bottom: 5),
                          child: Icon(Icons.link),
                        ),
                        VerticalDivider(
                          color: Colors.black,
                          thickness: 3,
                        ),
                        Padding(
                          padding:
                              const EdgeInsets.only(left: 5, top: 5, bottom: 5),
                          child: Text("www.abcd.com"),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Spacer(),
            Container(
              margin: EdgeInsets.only(bottom: 20),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.white),
                ),
                child: Text(
                  'KEMBALI',
                  style: TextStyle(
                      fontSize: 12, color: Color.fromARGB(255, 17, 66, 98)),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
