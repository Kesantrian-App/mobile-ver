import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:kesantrian_app/homepage.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "Kesantrian App",
    home: Intro(),
  ));
}

class Intro extends StatefulWidget {
  @override
  _IntroState createState() => _IntroState();
}

class _IntroState extends State<Intro> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyApp()
    );
  }
}

// Container(
//         decoration: BoxDecoration(
//           image: DecorationImage(
//             image: AssetImage("assets/logo/bgsplash.png"),
//             fit: BoxFit.cover
//           )
//         ),
//         child: AnimatedSplashScreen(
//           splash: Image.asset("assets/logo/santri.png"),
//           nextScreen: MyApp(),
//           splashIconSize: 80,
//           curve: Curves.fastOutSlowIn,
//           splashTransition: SplashTransition.scaleTransition,
//           duration: 400,
//           backgroundColor: HexColor("#2ECC71").withOpacity(0.5),
//         ),
//       ),