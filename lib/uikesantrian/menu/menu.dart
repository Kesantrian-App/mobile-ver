part of '../uiskesantrian.dart';

class Menu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          color: Colors.transparent
        ),
        child: Center(
          child: Text("Halo", style: TextStyle(color: Colors.black))
        ),
      ),
    );
  }
}