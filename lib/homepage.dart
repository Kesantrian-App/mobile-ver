import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

import 'ui/uis.dart';

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Santri',
        theme: ThemeData(
            scaffoldBackgroundColor: Colors.white,
            primaryColor: HexColor("#2ECC71"),
            textTheme: Theme.of(context).textTheme.apply(bodyColor: Colors.black),
            visualDensity: VisualDensity.adaptivePlatformDensity),
        initialRoute: '/',
        routes: {
          // HOME
          '/': (context) => Dashboard(),
          '/akun': (context) => Akun(),
          // PILIHAN SANTRI
          '/setoran': (context) => Setoran(),
          '/setoranbaru': (context) => SetoranBaru(),
          '/setoranhistory': (context) => SetoranHistory(),
          '/izingadget': (context) => IzinGadget(),
          '/izinlaptop': (context) => IzinLaptop(),
          '/izinhp': (context) => IzinHandphone(),
          '/hutangsetor': (context) => HutangSetor(),
          '/pelanggaran': (context) => Pelanggaran(),
          '/laundry': (context) => Laundry(),
        });
  }
}
