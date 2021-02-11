part of '../uis.dart';

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(children: <Widget>[
          Container(
            margin: EdgeInsets.only(left: 30, right: 30, top: 50, bottom: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "AHLAN WA SAHLAN,",
                        style: TextStyle(
                            color: HexColor("#2ecc71"),
                            fontFamily: "Avenir",
                            fontSize: 11,
                            fontWeight: FontWeight.w700),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        "Arrizal Bintang",
                        style: TextStyle(
                            color: HexColor("#2ecc71"),
                            fontFamily: "Avenir",
                            fontSize: 23,
                            fontWeight: FontWeight.w500),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Text("Apa yang Anda pikirkan hari ini?",
                          style: TextStyle(
                              color: HexColor("#2ecc71"),
                              fontFamily: "Avenir",
                              fontSize: 12,
                              fontWeight: FontWeight.w500)),
                    ],
                  ),
                ),
                // ProfileButton(),
                // GestureDetector(
                //   onTap: () {
                //     Navigator.push(
                //       context,
                //       MaterialPageRoute(builder: (context) => Akun()),
                //     );
                //   },
                //   child: Container(
                //     width: MediaQuery.of(context).size.width * 0.18,
                //     height: MediaQuery.of(context).size.height * 0.1,
                //     decoration: BoxDecoration(
                //       border: Border.all(color: HexColor("#2ecc71"), width: 3),
                //       borderRadius: BorderRadius.all(Radius.circular(300.0)),
                //     ),
                //     padding: EdgeInsets.all(3.0),
                //     child: Container(
                //       decoration: BoxDecoration(
                //         image: DecorationImage(
                //             fit: BoxFit.cover,
                //             image: AssetImage("assets/image/akun2.jpg")),
                //         borderRadius: BorderRadius.all(Radius.circular(300.0)),
                //         color: Colors.redAccent,
                //       ),
                //     ),
                //   ),
                // )
                BouncingWidget(
                  duration: Duration(milliseconds: 100),
                  scaleFactor: 1,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Akun()),
                    );
                  },
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.2,
                    height: MediaQuery.of(context).size.height * 0.1,
                    decoration: BoxDecoration(
                      border: Border.all(color: HexColor("#2ecc71"), width: 3),
                      shape: BoxShape.circle,
                    ),
                    padding: EdgeInsets.all(3.0),
                    child: Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage("assets/image/akun2.jpg")),
                        color: Colors.redAccent,
                      ),
                    ),
                  ),
                ),
                // Container(
                //   decoration: BoxDecoration(
                //     image: DecorationImage(
                //         fit: BoxFit.cover,
                //         image: AssetImage("assets/image/akun2.jpg")),
                //     borderRadius: BorderRadius.all(Radius.circular(300.0)),
                //     color: Colors.redAccent,
                //   ),
                // ),
              ],
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width * 1,
            height: MediaQuery.of(context).size.height * 0.785,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(50),
                    topRight: Radius.circular(50)),
                gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [HexColor("#2ecc71"), HexColor("#469a69")])),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // BARIS PERTAMA
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    // SETORAN HAFALAN
                    Container(
                      width: MediaQuery.of(context).size.width * 0.3,
                      height: MediaQuery.of(context).size.width * 0.4,
                      margin: EdgeInsets.only(left: 10),
                      child: Column(
                        children: [
                          RaisedButton(
                              onPressed: () {
                                Navigator.pushNamed(context, '/setoran');
                              },
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20.0)),
                              padding: EdgeInsets.all(0.0),
                              elevation: 5.0,
                              child: Ink(
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(20)),
                                child: Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.25,
                                  height:
                                      MediaQuery.of(context).size.width * 0.25,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Container(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.18,
                                        height:
                                            MediaQuery.of(context).size.width *
                                                0.18,
                                        decoration: BoxDecoration(
                                            image: DecorationImage(
                                                fit: BoxFit.cover,
                                                image: AssetImage(
                                                    "assets/icons/note.png"))),
                                      )
                                    ],
                                  ),
                                ),
                              )),
                          SizedBox(height: 15),
                          Text(
                            "Setoran Hafalan",
                            style: TextStyle(
                                color: Colors.white,
                                fontFamily: "Avenir",
                                fontSize: 12,
                                fontWeight: FontWeight.w500),
                            textAlign: TextAlign.center,
                          )
                        ],
                      ),
                    ),
                    // HUTANG HAFALAN
                    Container(
                      width: MediaQuery.of(context).size.width * 0.3,
                      height: MediaQuery.of(context).size.width * 0.4,
                      child: Column(
                        children: [
                          RaisedButton(
                              onPressed: () {
                                Navigator.pushNamed(context, '/hutangsetor');
                              },
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20.0)),
                              padding: EdgeInsets.all(0.0),
                              elevation: 5.0,
                              child: Ink(
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(20)),
                                child: Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.25,
                                  height:
                                      MediaQuery.of(context).size.width * 0.25,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Container(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.18,
                                        height:
                                            MediaQuery.of(context).size.width *
                                                0.18,
                                        decoration: BoxDecoration(
                                            image: DecorationImage(
                                                fit: BoxFit.cover,
                                                image: AssetImage(
                                                    "assets/icons/hutang.png"))),
                                      )
                                    ],
                                  ),
                                ),
                              )),
                          SizedBox(height: 15),
                          Text(
                            "Hutang Hafalan",
                            style: TextStyle(
                                color: Colors.white,
                                fontFamily: "Avenir",
                                fontSize: 12,
                                fontWeight: FontWeight.w500),
                            textAlign: TextAlign.center,
                          )
                        ],
                      ),
                    ),
                    // PERIZINAN GADGET
                    Container(
                      width: MediaQuery.of(context).size.width * 0.3,
                      height: MediaQuery.of(context).size.width * 0.4,
                      margin: EdgeInsets.only(right: 10),
                      child: Column(
                        children: [
                          RaisedButton(
                              onPressed: () {
                                Navigator.pushNamed(context, '/izingadget');
                              },
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20.0)),
                              padding: EdgeInsets.all(0.0),
                              elevation: 5.0,
                              child: Ink(
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(20)),
                                child: Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.25,
                                  height:
                                      MediaQuery.of(context).size.width * 0.25,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Container(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.18,
                                        height:
                                            MediaQuery.of(context).size.width *
                                                0.18,
                                        decoration: BoxDecoration(
                                            image: DecorationImage(
                                                fit: BoxFit.cover,
                                                image: AssetImage(
                                                    "assets/icons/gadget.png"))),
                                      )
                                    ],
                                  ),
                                ),
                              )),
                          SizedBox(height: 15),
                          Text(
                            "Perizinan Gadget",
                            style: TextStyle(
                                color: Colors.white,
                                fontFamily: "Avenir",
                                fontSize: 12,
                                fontWeight: FontWeight.w500),
                            textAlign: TextAlign.center,
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                // BARIS KEDUA
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    // PELANGGARAN DAN POIN SISWA
                    Container(
                      width: MediaQuery.of(context).size.width * 0.3,
                      height: MediaQuery.of(context).size.width * 0.4,
                      margin: EdgeInsets.only(left: 10),
                      child: Column(
                        children: [
                          RaisedButton(
                              onPressed: () {
                                Navigator.pushNamed(context, '/pelanggaran');
                              },
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20.0)),
                              padding: EdgeInsets.all(0.0),
                              elevation: 5.0,
                              child: Ink(
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(20)),
                                child: Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.25,
                                  height:
                                      MediaQuery.of(context).size.width * 0.25,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Container(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.18,
                                        height:
                                            MediaQuery.of(context).size.width *
                                                0.18,
                                        decoration: BoxDecoration(
                                            image: DecorationImage(
                                                fit: BoxFit.cover,
                                                image: AssetImage(
                                                    "assets/icons/penalty.png"))),
                                      )
                                    ],
                                  ),
                                ),
                              )),
                          SizedBox(height: 15),
                          Text(
                            "Pelanggaran dan Poin Siswa",
                            style: TextStyle(
                                color: Colors.white,
                                fontFamily: "Avenir",
                                fontSize: 12,
                                fontWeight: FontWeight.w500),
                            textAlign: TextAlign.center,
                          )
                        ],
                      ),
                    ),
                    // LAUNDRY BULANAN
                    Container(
                      width: MediaQuery.of(context).size.width * 0.3,
                      height: MediaQuery.of(context).size.width * 0.4,
                      child: Column(
                        children: [
                          RaisedButton(
                              onPressed: () {
                                Navigator.pushNamed(context, '/laundry');
                              },
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20.0)),
                              padding: EdgeInsets.all(0.0),
                              elevation: 5.0,
                              child: Ink(
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(20)),
                                child: Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.25,
                                  height:
                                      MediaQuery.of(context).size.width * 0.25,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Container(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.18,
                                        height:
                                            MediaQuery.of(context).size.width *
                                                0.18,
                                        decoration: BoxDecoration(
                                            image: DecorationImage(
                                                fit: BoxFit.cover,
                                                image: AssetImage(
                                                    "assets/icons/laundry.png"))),
                                      )
                                    ],
                                  ),
                                ),
                              )),
                          SizedBox(height: 15),
                          Text(
                            "Laundry Bulanan",
                            style: TextStyle(
                                color: Colors.white,
                                fontFamily: "Avenir",
                                fontSize: 12,
                                fontWeight: FontWeight.w500),
                            textAlign: TextAlign.center,
                          )
                        ],
                      ),
                    ),
                    // LAPORAN MURID
                    // Container(
                    //   width: MediaQuery.of(context).size.width * 0.3,
                    //   height: MediaQuery.of(context).size.width * 0.4,
                    //   margin: EdgeInsets.only(right: 10),
                    //   child: Column(
                    //     children: [
                    //       RaisedButton(
                    //           onPressed: () {},
                    //           shape: RoundedRectangleBorder(
                    //               borderRadius: BorderRadius.circular(20.0)),
                    //           padding: EdgeInsets.all(0.0),
                    //           elevation: 5.0,
                    //           child: Ink(
                    //             decoration: BoxDecoration(
                    //                 color: Colors.white,
                    //                 borderRadius: BorderRadius.circular(20)),
                    //             child: Container(
                    //               width:
                    //                   MediaQuery.of(context).size.width * 0.25,
                    //               height:
                    //                   MediaQuery.of(context).size.width * 0.25,
                    //               child: Column(
                    //                 mainAxisAlignment: MainAxisAlignment.center,
                    //                 children: [
                    //                   Container(
                    //                     width:
                    //                         MediaQuery.of(context).size.width *
                    //                             0.18,
                    //                     height:
                    //                         MediaQuery.of(context).size.width *
                    //                             0.18,
                    //                     decoration: BoxDecoration(
                    //                         image: DecorationImage(
                    //                             fit: BoxFit.cover,
                    //                             image: AssetImage(
                    //                                 "assets/icons/laporan.png"))),
                    //                   )
                    //                 ],
                    //               ),
                    //             ),
                    //           )),
                    //       SizedBox(height: 15),
                    //       Text(
                    //         "Laporan Murid",
                    //         style: TextStyle(
                    //             color: Colors.white,
                    //             fontFamily: "Avenir",
                    //             fontSize: 12,
                    //             fontWeight: FontWeight.w500),
                    //         textAlign: TextAlign.center,
                    //       )
                    //     ],
                    //   ),
                    // ),
                  ],
                ),
              ],
            ),
          )
        ]),
      ),
    );
  }
}

class ProfileButton extends StatefulWidget {
  @override
  _ProfileButtonState createState() => _ProfileButtonState();
}

class _ProfileButtonState extends State<ProfileButton> with SingleTickerProviderStateMixin {
  AnimationController _animationController;
  double scale;

  @override
  void initState() {
    super.initState();

    _animationController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 500),
      lowerBound: 0.0,
      upperBound: 0.1,
    );
    _animationController.addListener(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    double scale = 1 - _animationController.value;
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Akun()),
        );
      },
      onTapUp: _onTapUp,
      onTapDown: _onTapDown,
      onLongPress: () {
        Fluttertoast.showToast(
          msg: "Pengaturan Profil",
          textColor: Colors.white,
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.BOTTOM,
          timeInSecForIosWeb: 1,
          backgroundColor: HexColor('#2ECC71').withOpacity(0.8)
        );
      },
      child: Transform.scale(
        scale: scale,
        child: Container(
          width: MediaQuery.of(context).size.width * 0.18,
          height: MediaQuery.of(context).size.height * 0.1,
          decoration: BoxDecoration(
            border: Border.all(color: HexColor("#2ecc71"), width: 3),
            borderRadius: BorderRadius.all(Radius.circular(300.0)),
          ),
          padding: EdgeInsets.all(3.0),
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage("assets/image/akun2.jpg")),
              borderRadius: BorderRadius.all(Radius.circular(300.0)),
              color: Colors.redAccent,
            ),
          ),
        ),
      )
    );
  }

  void _onTapDown(TapDownDetails details) {
    _animationController.forward();
  }

  void _onTapUp(TapUpDetails details) {
    _animationController.reverse();
  }
}