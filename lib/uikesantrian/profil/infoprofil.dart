part of '../uiskesantrian.dart';

class InfoProfil extends StatefulWidget {
  @override
  _InfoProfilState createState() => _InfoProfilState();
}

class _InfoProfilState extends State<InfoProfil> {
  @override
  Widget build(BuildContext context) {
    Color colorApp = HexColor("#2ECC71");
    MediaQueryData queryData;
    queryData = MediaQuery.of(context);

    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: queryData.size.width,
            height: queryData.size.height,
            decoration: BoxDecoration(
              color: Colors.white
            )
          ),
          Container(
            width: queryData.size.width,
            height: queryData.size.height*0.25,
            child: ClipPath(
              clipper: ClipPathClass(),
              child: SizedBox(
                width: 320,
                height: 240,
                child: Container(
                  decoration: BoxDecoration(
                    color: colorApp
                  ),
                ),
              )
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: queryData.size.height/15.0),
            width: queryData.size.width * 1,
            child: Column(
              children: [
                Stack(
                  children: [
                    Container(
                      width: queryData.size.width * 1,
                      height: queryData.size.height * 0.06,
                      alignment: Alignment.center,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("profil anda".toUpperCase(), style: TextStyle(fontSize: queryData.size.width/18, fontFamily: "Avenir", color: Colors.white, fontWeight: FontWeight.bold, letterSpacing: -0.5)),
                        ],
                      ),
                    ),
                    Positioned(
                      left: queryData.size.width/-60,
                      child: Container(
                        width: queryData.size.width * 1,
                        height: queryData.size.height * 0.05,
                        alignment: Alignment.centerLeft,
                        child: FlatButton(
                          splashColor: Colors.transparent,
                          highlightColor: Colors.green[800].withOpacity(0.3),
                          child: Icon(
                            Icons.arrow_back_ios_rounded,
                            color: Colors.white,
                            size: 22,
                          ),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          shape: CircleBorder(),
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: queryData.size.height/20),
                  child: ScrollConfiguration(
                    behavior: MyBehavior(),
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          CircularProfileAvatar(
                            "",
                            child: Image.asset("assets/icons/ustadz.png"),
                            borderColor: Colors.white,
                            borderWidth: 5,
                            radius: 50,
                          ),
                          SizedBox(height: queryData.size.height/80),
                          Text("Ustadz Ahlal", style: TextStyle(
                            fontFamily: "Avenir",
                            fontWeight: FontWeight.bold,
                            fontSize: queryData.size.width/15,
                            color: Colors.black
                          ), textAlign: TextAlign.center),
                          SizedBox(height: queryData.size.height/80),
                          Container(
                            width: queryData.size.width * 1,
                            margin: EdgeInsets.all(queryData.size.width/20),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Email", style: TextStyle(
                                  fontFamily: "Avenir",
                                  fontWeight: FontWeight.bold,
                                  fontSize: queryData.size.width/25,
                                  color: HexColor("#2ab967")
                                ), textAlign: TextAlign.start),
                                SizedBox(height: queryData.size.height/100),
                                Text("ustadzahlal@gmail.com", style: TextStyle(
                                  fontFamily: "Avenir",
                                  fontWeight: FontWeight.w500,
                                  fontSize: queryData.size.width/25,
                                  color: Colors.black
                                ), textAlign: TextAlign.start),
                                SizedBox(height: queryData.size.height/30),
                                Text("Tempat, Tanggal Lahir", style: TextStyle(
                                  fontFamily: "Avenir",
                                  fontWeight: FontWeight.bold,
                                  fontSize: queryData.size.width/25,
                                  color: HexColor("#2ab967")
                                ), textAlign: TextAlign.start),
                                SizedBox(height: queryData.size.height/100),
                                Text("Kupang, 25 November 1996", style: TextStyle(
                                  fontFamily: "Avenir",
                                  fontWeight: FontWeight.w500,
                                  fontSize: queryData.size.width/25,
                                  color: Colors.black
                                ), textAlign: TextAlign.start),
                                SizedBox(height: queryData.size.height/30),
                                Text("Alamat Sekolah", style: TextStyle(
                                  fontFamily: "Avenir",
                                  fontWeight: FontWeight.bold,
                                  fontSize: queryData.size.width/25,
                                  color: HexColor("#2ab967")
                                ), textAlign: TextAlign.start),
                                SizedBox(height: queryData.size.height/100),
                                Text("Kp.kebon Kalapa, RT.02/RW.011, Singasari, Kec. Jonggol, Bogor, Jawa Barat 16830", style: TextStyle(
                                  fontFamily: "Avenir",
                                  fontWeight: FontWeight.w500,
                                  fontSize: queryData.size.width/25,
                                  color: Colors.black
                                ), textAlign: TextAlign.start),
                                SizedBox(height: queryData.size.height/30),
                                Text("Nomor Handphone", style: TextStyle(
                                  fontFamily: "Avenir",
                                  fontWeight: FontWeight.bold,
                                  fontSize: queryData.size.width/25,
                                  color: HexColor("#2ab967")
                                ), textAlign: TextAlign.start),
                                SizedBox(height: queryData.size.height/100),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    RichText(
                                      textAlign: TextAlign.start,
                                      text: TextSpan(
                                        children: [
                                          TextSpan(
                                            text: "+62 ".toUpperCase(),
                                            style: TextStyle(
                                              fontFamily: "Avenir",
                                              fontWeight: FontWeight.bold,
                                              fontSize: queryData.size.width/25,
                                              color: Colors.black),
                                          ),
                                          TextSpan(
                                            text: "814 9021 5637".toUpperCase(),
                                            style: TextStyle(
                                              fontFamily: "Avenir",
                                              fontWeight: FontWeight.w500,
                                              fontSize: queryData.size.width/25,
                                              color: Colors.black),
                                          ),
                                        ]
                                      )
                                    )
                                  ],
                                ),
                                SizedBox(height: queryData.size.height/30),
                                Text("Tahun Ajaran", style: TextStyle(
                                  fontFamily: "Avenir",
                                  fontWeight: FontWeight.bold,
                                  fontSize: queryData.size.width/25,
                                  color: HexColor("#2ab967")
                                ), textAlign: TextAlign.start),
                                SizedBox(height: queryData.size.height/100),
                                Text("2020/2021", style: TextStyle(
                                  fontFamily: "Avenir",
                                  fontWeight: FontWeight.w500,
                                  fontSize: queryData.size.width/25,
                                  color: Colors.black
                                ), textAlign: TextAlign.start),
                              ],
                            ),
                          )
                        ],
                      )
                    )
                  )
                ),
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