part of 'uis.dart';

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

    MediaQueryData queryData;
    queryData = MediaQuery.of(context);

    return Scaffold(
      body: ScrollConfiguration(
        behavior: MyBehavior(),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                height: queryData.size.height*0.3,
                padding: EdgeInsets.only(left: 30, right: 30),
                alignment: Alignment.bottomCenter,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/image/accountbg.png"),
                    fit: BoxFit.cover
                  ),
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(50),
                      bottomRight: Radius.circular(50)),
                  gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [HexColor("#2ecc71"), HexColor("#2ab967")])),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Container(  
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            height: queryData.size.height/85,
                          ),
                          Text(
                            "AHLAN WA SAHLAN,",
                            style: TextStyle(
                                color: Colors.white,
                                fontFamily: "Avenir",
                                fontSize: 13,
                                letterSpacing: 2,
                                fontWeight: FontWeight.w500),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "Arrizal Bintang",
                            style: TextStyle(
                                color: Colors.white,
                                fontFamily: "Avenir",
                                fontSize: 23,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Text("Apa yang Anda pikirkan hari ini?",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: "Avenir",
                                  fontSize: 11,
                                  fontWeight: FontWeight.bold)),
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
                          border: Border.all(color: Colors.white, width: 3),
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
              height: queryData.size.height*0.7,
              alignment: Alignment.topCenter,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/image/account2bg.png"),
                  fit: BoxFit.cover
                )
              ),
              child: ScrollConfiguration(
                behavior: MyBehavior(),
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      // BARIS PERTAMA
                      Container(
                        width: MediaQuery.of(context).size.width * 0.8,
                        height: MediaQuery.of(context).size.width * 0.25,
                        margin: EdgeInsets.only(top: queryData.size.height/25),
                        child: RaisedButton(   
                          onPressed: () {
                            Navigator.pushNamed(context, '/setoran');
                          },
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0)),
                          padding: EdgeInsets.all(0.0),
                          child: Ink(
                            decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  stops: [0.68, 0.68],
                                  begin: Alignment.topRight,
                                  end: Alignment.bottomLeft,
                                  colors: [HexColor("#2ecc71"), Colors.white]
                                ),
                                borderRadius: BorderRadius.circular(20),
                                image: DecorationImage(
                                  alignment: Alignment.centerLeft,
                                            fit: BoxFit.contain,
                                            image: AssetImage(
                                                "assets/icons/setoranicon.png"))),
                            child: Container(
                              alignment: Alignment.centerRight,
                              padding: EdgeInsets.only(right: queryData.size.width / 20),
                              width:
                                  MediaQuery.of(context).size.width * 0.8,
                              height:
                                  MediaQuery.of(context).size.width * 0.25,
                              child: RichText(
                                textAlign: TextAlign.end,
                                text: TextSpan(
                                  children: [
                                    TextSpan(
                                      text: "Setoran ".toUpperCase(),
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontFamily: "Avenir",
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold),
                                    ),
                                    TextSpan(
                                      text: "Hafalan\n".toUpperCase(),
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontFamily: "Avenir",
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold),
                                    ),
                                    TextSpan(
                                      text: "Al-Qur'an".toUpperCase(),
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontFamily: "Avenir",
                                        fontSize: 15,
                                        fontWeight: FontWeight.w500),
                                    ),
                                  ]
                                )
                              ),
                            ),
                          )
                        ),
                      ),
                      // BARIS KEDUA
                      Container(
                        margin: EdgeInsets.symmetric(vertical: queryData.size.height/25),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            // HUTANG HAFALAN
                            Container(
                              width: MediaQuery.of(context).size.width * 0.45,
                              height: MediaQuery.of(context).size.width * 0.35,
                              child: Column(
                                children: [
                                  RaisedButton(
                                      onPressed: () {
                                        Navigator.pushNamed(context, '/hutangsetor');
                                      },
                                      shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(20.0)),
                                      padding: EdgeInsets.all(0.0),
                                      child: Ink(
                                        decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius: BorderRadius.circular(20),
                                            image: DecorationImage(
                                                        fit: BoxFit.contain,
                                                        image: AssetImage(
                                                            "assets/icons/hutang.png"))),
                                        child: Container(
                                          width:
                                              MediaQuery.of(context).size.width * 0.34,
                                          height:
                                              MediaQuery.of(context).size.width * 0.25,
                                        ),
                                      )),
                                  Spacer(),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      RichText(
                                        textAlign: TextAlign.center,
                                        text: TextSpan(
                                          children: [
                                            TextSpan(
                                              text: "Hutang ".toUpperCase(),
                                              style: TextStyle(
                                                color: HexColor("#2ab967"),
                                                fontFamily: "Avenir",
                                                fontSize: 12,
                                                fontWeight: FontWeight.bold),
                                            ),
                                            TextSpan(
                                              text: "Hafalan".toUpperCase(),
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontFamily: "Avenir",
                                                fontSize: 12,
                                                fontWeight: FontWeight.bold),
                                            ),
                                          ]
                                        )
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                            // PERIZINAN GADGET
                            Container(
                              width: MediaQuery.of(context).size.width * 0.45,
                              height: MediaQuery.of(context).size.width * 0.35,
                              child: Column(
                                children: [
                                  RaisedButton(
                                      onPressed: () {
                                        Navigator.pushNamed(context, '/izingadget');
                                      },
                                      shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(20.0)),
                                      padding: EdgeInsets.all(0.0),
                                      child: Ink(
                                        decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius: BorderRadius.circular(20),
                                            image: DecorationImage(
                                                        fit: BoxFit.contain,
                                                        image: AssetImage(
                                                            "assets/icons/gadget.png"))),
                                        child: Container(
                                          width:
                                              MediaQuery.of(context).size.width * 0.34,
                                          height:
                                              MediaQuery.of(context).size.width * 0.25,
                                        ),
                                      )),
                                  Spacer(),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      RichText(
                                        textAlign: TextAlign.center,
                                        text: TextSpan(
                                          children: [
                                            TextSpan(
                                              text: "Perizinan ".toUpperCase(),
                                              style: TextStyle(
                                                color: HexColor("#2ab967"),
                                                fontFamily: "Avenir",
                                                fontSize: 12,
                                                fontWeight: FontWeight.bold),
                                            ),
                                            TextSpan(
                                              text: "Gadget".toUpperCase(),
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontFamily: "Avenir",
                                                fontSize: 12,
                                                fontWeight: FontWeight.bold),
                                            ),
                                          ]
                                        )
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      // BARIS KETIGA
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          // PELANGGARAN DAN POIN SISWA
                          Container(
                            width: MediaQuery.of(context).size.width * 0.45,
                            height: MediaQuery.of(context).size.width * 0.4,
                            child: Column(
                              children: [
                                RaisedButton(
                                    onPressed: () {
                                      Navigator.pushNamed(context, '/pelanggaran');
                                    },
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(20.0)),
                                    padding: EdgeInsets.all(0.0),
                                    child: Ink(
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.circular(20),
                                          image: DecorationImage(
                                                      fit: BoxFit.contain,
                                                      image: AssetImage(
                                                          "assets/icons/penalty.png"))),
                                      child: Container(
                                        width:
                                            MediaQuery.of(context).size.width * 0.34,
                                        height:
                                            MediaQuery.of(context).size.width * 0.25,
                                      ),
                                    )),
                                Spacer(),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    RichText(
                                      textAlign: TextAlign.center,
                                      text: TextSpan(
                                        children: [
                                          TextSpan(
                                            text: "Pelanggaran &\n".toUpperCase(),
                                            style: TextStyle(
                                              color: HexColor("#2ab967"),
                                              fontFamily: "Avenir",
                                              fontSize: 12,
                                              fontWeight: FontWeight.bold),
                                          ),
                                          TextSpan(
                                            text: "POIN SISWA".toUpperCase(),
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontFamily: "Avenir",
                                              fontSize: 12,
                                              fontWeight: FontWeight.bold),
                                          ),
                                        ]
                                      )
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                          // LAUNDRY BULANAN
                          Container(
                            width: MediaQuery.of(context).size.width * 0.45,
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
                                    child: Ink(
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.circular(20),
                                          image: DecorationImage(
                                                      fit: BoxFit.contain,
                                                      image: AssetImage(
                                                          "assets/icons/laundry.png"))),
                                      child: Container(
                                        width:
                                            MediaQuery.of(context).size.width * 0.34,
                                        height:
                                            MediaQuery.of(context).size.width * 0.25,
                                      ),
                                    )),
                                Spacer(),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    RichText(
                                      textAlign: TextAlign.center,
                                      text: TextSpan(
                                        children: [
                                          TextSpan(
                                            text: "Laundry ".toUpperCase(),
                                            style: TextStyle(
                                              color: HexColor("#2ab967"),
                                              fontFamily: "Avenir",
                                              fontSize: 12,
                                              fontWeight: FontWeight.bold),
                                          ),
                                          TextSpan(
                                            text: "Bulanan\n".toUpperCase(),
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontFamily: "Avenir",
                                              fontSize: 12,
                                              fontWeight: FontWeight.bold),
                                          ),
                                          TextSpan(
                                            text: "".toUpperCase(),
                                            style: TextStyle(
                                              color: HexColor("#2ab967"),
                                              fontFamily: "Avenir",
                                              fontSize: 12,
                                              fontWeight: FontWeight.bold),
                                          ),
                                        ]
                                      )
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                )
              )
            )
          ]),
        ),
      )
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

class MyBehavior extends ScrollBehavior {
  @override
  Widget buildViewportChrome(
      BuildContext context, Widget child, AxisDirection axisDirection) {
    return child;
  }
}