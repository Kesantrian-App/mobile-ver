import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

import 'uikesantrian/uiskesantrian.dart';

class MyAppKes extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Kesantrian',
        theme: ThemeData(
            scaffoldBackgroundColor: Colors.white,
            primaryColor: HexColor("#2ECC71"),
            textTheme: Theme.of(context).textTheme.apply(bodyColor: Colors.white),
            visualDensity: VisualDensity.adaptivePlatformDensity),
        initialRoute: '/',
        routes: {
          // HOME
          '/': (context) => DashboardKes(),
        });
  }
}
