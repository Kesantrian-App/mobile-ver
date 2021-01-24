part of "../uis.dart";

class Pelanggaran extends StatefulWidget {
  @override
  _PelanggaranState createState() => _PelanggaranState();
}

class _PelanggaranState extends State<Pelanggaran> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width * 1,
            height: MediaQuery.of(context).size.height * 1,
            decoration: BoxDecoration(
              color: Colors.white,
            ),
            child: Stack(
              children: [
                Positioned(
                top: 200,
                child: Container(
            width: MediaQuery.of(context).size.width * 1,
            height: MediaQuery.of(context).size.height * 0.8,
            decoration: BoxDecoration(
              color: Colors.white,
            ),
            child: SingleChildScrollView(
              child: 
                  Padding(
                    padding: EdgeInsets.all(20.0),
                    child: Column(
                      children: [
                        SizedBox(height: MediaQuery.of(context).size.height * 0.06,),
                        Container(
                          margin: EdgeInsets.symmetric(horizontal: 20.0),
                          alignment: Alignment.centerLeft,
                          child: Text("TODAY", style: TextStyle(fontSize: 15, fontFamily: "Avenir", color: Colors.grey[700], fontWeight: FontWeight.bold))),
                        SizedBox(height: MediaQuery.of(context).size.height * 0.01,),
                        Row(
                          children: [
                            Container(
                              margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
                              width: MediaQuery.of(context).size.width * 0.06,
                              height: MediaQuery.of(context).size.height * 0.05,
                              alignment: Alignment.topCenter,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage("assets/icons/offense.png"),
                                )
                              )
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                              Text("Tidak setoran seharian", style: TextStyle(fontSize: 12, fontFamily: "Avenir", color: Colors.black, fontWeight: FontWeight.w500)),
                              SizedBox(height: MediaQuery.of(context).size.height * 0.005),
                              Text("Minggu, 24/01/2021", style: TextStyle(fontSize: 10, fontFamily: "Avenir", color: Colors.grey, fontWeight: FontWeight.w500)),
                            ],)
                          ],
                        ),
                        Row(
                          children: [
                            Container(
                              margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
                              width: MediaQuery.of(context).size.width * 0.06,
                              height: MediaQuery.of(context).size.height * 0.05,
                              alignment: Alignment.topCenter,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage("assets/icons/offense.png"),
                                )
                              )
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                              Text("Tidak setoran seharian", style: TextStyle(fontSize: 12, fontFamily: "Avenir", color: Colors.black, fontWeight: FontWeight.w500)),
                              SizedBox(height: MediaQuery.of(context).size.height * 0.005),
                              Text("Minggu, 24/01/2021", style: TextStyle(fontSize: 10, fontFamily: "Avenir", color: Colors.grey, fontWeight: FontWeight.w500)),
                            ],)
                          ],
                        ),
                        Row(
                          children: [
                            Container(
                              margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
                              width: MediaQuery.of(context).size.width * 0.06,
                              height: MediaQuery.of(context).size.height * 0.05,
                              alignment: Alignment.topCenter,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage("assets/icons/offense.png"),
                                )
                              )
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                              Text("Tidak setoran seharian", style: TextStyle(fontSize: 12, fontFamily: "Avenir", color: Colors.black, fontWeight: FontWeight.w500)),
                              SizedBox(height: MediaQuery.of(context).size.height * 0.005),
                              Text("Minggu, 24/01/2021", style: TextStyle(fontSize: 10, fontFamily: "Avenir", color: Colors.grey, fontWeight: FontWeight.w500)),
                            ],)
                          ],
                        ),
                        Row(
                          children: [
                            Container(
                              margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
                              width: MediaQuery.of(context).size.width * 0.06,
                              height: MediaQuery.of(context).size.height * 0.05,
                              alignment: Alignment.topCenter,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage("assets/icons/offense.png"),
                                )
                              )
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                              Text("Tidak setoran seharian", style: TextStyle(fontSize: 12, fontFamily: "Avenir", color: Colors.black, fontWeight: FontWeight.w500)),
                              SizedBox(height: MediaQuery.of(context).size.height * 0.005),
                              Text("Minggu, 24/01/2021", style: TextStyle(fontSize: 10, fontFamily: "Avenir", color: Colors.grey, fontWeight: FontWeight.w500)),
                            ],)
                          ],
                        ),
                        Row(
                          children: [
                            Container(
                              margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
                              width: MediaQuery.of(context).size.width * 0.06,
                              height: MediaQuery.of(context).size.height * 0.05,
                              alignment: Alignment.topCenter,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage("assets/icons/offense.png"),
                                )
                              )
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                              Text("Tidak setoran seharian", style: TextStyle(fontSize: 12, fontFamily: "Avenir", color: Colors.black, fontWeight: FontWeight.w500)),
                              SizedBox(height: MediaQuery.of(context).size.height * 0.005),
                              Text("Minggu, 24/01/2021", style: TextStyle(fontSize: 10, fontFamily: "Avenir", color: Colors.grey, fontWeight: FontWeight.w500)),
                            ],)
                          ],
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
                          alignment: Alignment.centerLeft,
                          child: Text("YESTERDAY", style: TextStyle(fontSize: 15, fontFamily: "Avenir", color: Colors.grey[700], fontWeight: FontWeight.bold))),
                        Row(
                          children: [
                            Container(
                              margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
                              width: MediaQuery.of(context).size.width * 0.06,
                              height: MediaQuery.of(context).size.height * 0.05,
                              alignment: Alignment.topCenter,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage("assets/icons/offense.png"),
                                )
                              )
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                              Text("Tidak setoran seharian", style: TextStyle(fontSize: 12, fontFamily: "Avenir", color: Colors.black, fontWeight: FontWeight.w500)),
                              SizedBox(height: MediaQuery.of(context).size.height * 0.005),
                              Text("Minggu, 24/01/2021", style: TextStyle(fontSize: 10, fontFamily: "Avenir", color: Colors.grey, fontWeight: FontWeight.w500)),
                            ],)
                          ],
                        ),
                        Row(
                          children: [
                            Container(
                              margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
                              width: MediaQuery.of(context).size.width * 0.06,
                              height: MediaQuery.of(context).size.height * 0.05,
                              alignment: Alignment.topCenter,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage("assets/icons/offense.png"),
                                )
                              )
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                              Text("Tidak setoran seharian", style: TextStyle(fontSize: 12, fontFamily: "Avenir", color: Colors.black, fontWeight: FontWeight.w500)),
                              SizedBox(height: MediaQuery.of(context).size.height * 0.005),
                              Text("Minggu, 24/01/2021", style: TextStyle(fontSize: 10, fontFamily: "Avenir", color: Colors.grey, fontWeight: FontWeight.w500)),
                            ],)
                          ],
                        ),
                        Row(
                          children: [
                            Container(
                              margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
                              width: MediaQuery.of(context).size.width * 0.06,
                              height: MediaQuery.of(context).size.height * 0.05,
                              alignment: Alignment.topCenter,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage("assets/icons/offense.png"),
                                )
                              )
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                              Text("Tidak setoran seharian", style: TextStyle(fontSize: 12, fontFamily: "Avenir", color: Colors.black, fontWeight: FontWeight.w500)),
                              SizedBox(height: MediaQuery.of(context).size.height * 0.005),
                              Text("Minggu, 24/01/2021", style: TextStyle(fontSize: 10, fontFamily: "Avenir", color: Colors.grey, fontWeight: FontWeight.w500)),
                            ],)
                          ],
                        ),
                        Row(
                          children: [
                            Container(
                              margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
                              width: MediaQuery.of(context).size.width * 0.06,
                              height: MediaQuery.of(context).size.height * 0.05,
                              alignment: Alignment.topCenter,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage("assets/icons/offense.png"),
                                )
                              )
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                              Text("Tidak setoran seharian", style: TextStyle(fontSize: 12, fontFamily: "Avenir", color: Colors.black, fontWeight: FontWeight.w500)),
                              SizedBox(height: MediaQuery.of(context).size.height * 0.005),
                              Text("Minggu, 24/01/2021", style: TextStyle(fontSize: 10, fontFamily: "Avenir", color: Colors.grey, fontWeight: FontWeight.w500)),
                            ],)
                          ],
                        ),
                        Row(
                          children: [
                            Container(
                              margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
                              width: MediaQuery.of(context).size.width * 0.06,
                              height: MediaQuery.of(context).size.height * 0.05,
                              alignment: Alignment.topCenter,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage("assets/icons/offense.png"),
                                )
                              )
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                              Text("Tidak sholat Maghrib", style: TextStyle(fontSize: 12, fontFamily: "Avenir", color: Colors.black, fontWeight: FontWeight.w500)),
                              SizedBox(height: MediaQuery.of(context).size.height * 0.005),
                              Text("Minggu, 24/01/2021", style: TextStyle(fontSize: 10, fontFamily: "Avenir", color: Colors.grey, fontWeight: FontWeight.w500)),
                            ],)
                          ],
                        ),
                        SizedBox(height: MediaQuery.of(context).size.height * 0.06,),
                      ],
                    ),
                  ),
            )
          ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 1,
                  height: MediaQuery.of(context).size.height * 0.3,
                  child: ClipPath(
                    clipper: ClipPathClass(),
                    child: SizedBox(
                      width: 320,
                      height: 240,
                      child: Image.asset("assets/image/mountain.jpg", fit: BoxFit.cover),
                    ),
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 1,
                  height: MediaQuery.of(context).size.height * 0.3,
                  child: ClipPath(
                    clipper: ClipPathClass(),
                    child: SizedBox(
                      width: 320,
                      height: 240,
                      child: Container(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [HexColor("2ECC71"), Colors.transparent]
                          )
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                              width: MediaQuery.of(context).size.width * 0.1,
                              height: MediaQuery.of(context).size.height * 0.1,
                              child: FlatButton(
                                child: Icon(
                                  Icons.arrow_back_ios,
                                  color: Colors.white,
                                  size: 20,
                                ),
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                shape: CircleBorder(),
                              )),
                          Container(
                            width: MediaQuery.of(context).size.width * 0.7,
                            height: MediaQuery.of(context).size.height * 0.1,
                            alignment: Alignment.center,
                            child: Text(
                              "Pelanggaran Santri",
                              style: TextStyle(
                                  fontFamily: "Avenir",
                                  fontSize: 18,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            )
          ),
        ],
      ),
    );
  }
}

class ClipPathClass extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0.0, size.height - 30);

    var firstControlPoint = Offset(size.width / 4, size.height);
    var firstPoint = Offset(size.width / 2, size.height);
    path.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy,
        firstPoint.dx, firstPoint.dy);

    var secondControlPoint = Offset(size.width - (size.width / 4), size.height);
    var secondPoint = Offset(size.width, size.height - 30);
    path.quadraticBezierTo(secondControlPoint.dx, secondControlPoint.dy,
        secondPoint.dx, secondPoint.dy);

    path.lineTo(size.width, 0.0);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}