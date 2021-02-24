import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:kesantrian_app/homepage.dart';
import 'package:kesantrian_app/uikesantrian/uiskesantrian.dart';

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
      home: Container(
        height: MediaQuery.of(context).size.height * 1,
        width: MediaQuery.of(context).size.width * 1,
        decoration: BoxDecoration(color: Colors.white),
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RaisedButton(
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => DashboardKes()));
              },
              color: Colors.blue,
              child: Text("KESANTRIAN", style: TextStyle(color: Colors.white)),
            ),
            RaisedButton(
              onPressed: (){
                Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => MyApp()),
                        );
              },
              color: Colors.green,
              child: Text("SANTRI", style: TextStyle(color: Colors.white)),
            ),
          ],
        ),
      )
    );
  }
}