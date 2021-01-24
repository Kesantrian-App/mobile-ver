part of '../uis.dart';

class Setoran extends StatefulWidget {
  @override
  _SetoranState createState() => _SetoranState();
}

class _SetoranState extends State<Setoran> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Center(
      //     child: Text(
      //       "Setoran Hafalan",
      //       style: TextStyle(
      //           fontFamily: "Avenir",
      //           fontSize: 18,
      //           color: Colors.white,
      //           fontWeight: FontWeight.bold),
      //       textAlign: TextAlign.center,
      //     ),
      //   ),
      //   backgroundColor: HexColor("#2ECC71"),
      //   elevation: 0,
      //   leading: Container(
      //       width: MediaQuery.of(context).size.width * 0.1,
      //       height: MediaQuery.of(context).size.height * 0.1,
      //       padding: EdgeInsets.all(5),
      //       child: FlatButton(
      //         child: Icon(
      //           Icons.arrow_back_ios,
      //           color: Colors.white,
      //           size: 20,
      //         ),
      //         onPressed: () {
      //           Navigator.pop(context);
      //         },
      //         shape: CircleBorder(),
      //       )),
      // ),
      body: Column(
        children: [
          Container(
              width: MediaQuery.of(context).size.width * 1,
              height: MediaQuery.of(context).size.height * 0.35,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomLeft,
                      colors: [HexColor("#2ECC71"), HexColor("#82caa0")])),
              padding: EdgeInsets.all(20),
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
                          "Setoran Hafalan",
                          style: TextStyle(
                              fontFamily: "Avenir",
                              fontSize: 18,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Alhamdulillah,",
                          style: TextStyle(
                              fontFamily: "Avenir",
                              fontSize: 20,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Text(
                              "Hari ini kamu ",
                              style: TextStyle(
                                  fontFamily: "Avenir",
                                  fontSize: 14,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500),
                            ),
                            Container(
                              padding: EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(8.0)),
                              child: Text(
                                "SUDAH SETORAN",
                                style: TextStyle(
                                    fontFamily: "Avenir",
                                    fontSize: 9,
                                    color: HexColor("#2ECC71"),
                                    fontWeight: FontWeight.w500),
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Text(
                          "Teruskan semangatmu!",
                          style: TextStyle(
                              fontFamily: "Avenir",
                              fontSize: 14,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        RaisedButton(
                          onPressed: () {
                            Navigator.pushNamed(context, '/setoranbaru');
                          },
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(80.0)),
                          padding: EdgeInsets.all(0.0),
                          child: Ink(
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(80.0)),
                            child: Container(
                              constraints: const BoxConstraints(
                                  minWidth: 88.0, minHeight: 40.0),
                              alignment: Alignment.center,
                              child: Text("SETOR HAFALAN",
                                  style: TextStyle(
                                      fontFamily: "Avenir",
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                      color: HexColor("#2ECC71"))),
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              )),
          Container(
            width: MediaQuery.of(context).size.width * 1,
            height: MediaQuery.of(context).size.height * 0.65,
            decoration: BoxDecoration(
                color: Colors.white,
                image: DecorationImage(
                    image: AssetImage("assets/image/bgsetor.png"),
                    fit: BoxFit.cover)),
            child: SingleChildScrollView(
                child: Column(
              children: [
                SizedBox(height: 10),
                Setoran1(),
                Setoran2(),
                Setoran3(),
                SizedBox(height: 10)
              ],
            )),
          ),
        ],
      ),
    );
  }
}

class Setoran1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(vertical: 15.0, horizontal: 20),
        width: MediaQuery.of(context).size.width * 1,
        height: MediaQuery.of(context).size.height * 0.25,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(20.0),
              bottomLeft: Radius.circular(20.0)),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.5),
              spreadRadius: 2,
              blurRadius: 8,
              offset: Offset(2, 5),
            ),
          ],
        ),
        child: Stack(children: [
          Positioned(
              top: -15,
              left: -15,
              child: Container(
                  width: MediaQuery.of(context).size.width * 0.15,
                  height: MediaQuery.of(context).size.height * 0.075,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(100.0),
                        topRight: Radius.circular(100.0)),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 2,
                        blurRadius: 7,
                        offset: Offset(0, 3),
                      ),
                    ],
                  ))),
          Positioned(
              bottom: -120,
              right: -100,
              child: Container(
                  width: MediaQuery.of(context).size.width * 0.5,
                  height: MediaQuery.of(context).size.height * 0.27,
                  decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.circular(300.0),
                  ))),
          Positioned(
            top: 10,
            left: 10,
            child: Text("10",
                style: TextStyle(
                    fontSize: 20,
                    fontFamily: "Avenir",
                    color: HexColor("#2ECC71"),
                    fontWeight: FontWeight.bold)),
          ),
          Positioned(
            top: 15,
            right: 20,
            child: Text("Minggu, 10/01/2021",
                style: TextStyle(
                    fontSize: 12,
                    fontFamily: "Avenir",
                    color: Colors.grey[400],
                    fontWeight: FontWeight.bold)),
          ),
          Row(
            children: [
              Container(
                width: MediaQuery.of(context).size.width * 0.3,
                height: MediaQuery.of(context).size.height * 0.3,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/icons/setoricon.png"))),
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.6,
                height: MediaQuery.of(context).size.height * 0.3,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Setor Surah Al-Ma'arij",
                        style: TextStyle(
                            fontFamily: "Avenir",
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                            color: HexColor("#2ECC71"))),
                    SizedBox(height: 2),
                    Text("Ayat 1-10",
                        style: TextStyle(
                            fontFamily: "Avenir",
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                            color: HexColor("#2ECC71"))),
                    Divider(),
                    Text("Pendamping Ust. Fathi M. S.",
                        style: TextStyle(
                            fontFamily: "Avenir",
                            fontSize: 13,
                            fontWeight: FontWeight.bold,
                            color: HexColor("#2ECC71"))),
                    SizedBox(height: 10),
                    Text("TAHUN AJARAN 2020/2021",
                        style: TextStyle(
                            fontFamily: "Avenir",
                            fontSize: 8,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey[400]),
                        textAlign: TextAlign.end),
                  ],
                ),
              ),
            ],
          ),
        ]));
  }
}

class Setoran2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(vertical: 15.0, horizontal: 20),
        width: MediaQuery.of(context).size.width * 1,
        height: MediaQuery.of(context).size.height * 0.25,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(20.0),
              bottomLeft: Radius.circular(20.0)),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.5),
              spreadRadius: 2,
              blurRadius: 8,
              offset: Offset(2, 5),
            ),
          ],
        ),
        child: Stack(children: [
          Positioned(
              top: -15,
              left: -15,
              child: Container(
                  width: MediaQuery.of(context).size.width * 0.15,
                  height: MediaQuery.of(context).size.height * 0.075,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(100.0),
                        topRight: Radius.circular(100.0)),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 2,
                        blurRadius: 7,
                        offset: Offset(0, 3),
                      ),
                    ],
                  ))),
          Positioned(
              bottom: -120,
              right: -100,
              child: Container(
                  width: MediaQuery.of(context).size.width * 0.5,
                  height: MediaQuery.of(context).size.height * 0.27,
                  decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.circular(300.0),
                  ))),
          Positioned(
            top: 10,
            left: 10,
            child: Text("9",
                style: TextStyle(
                    fontSize: 20,
                    fontFamily: "Avenir",
                    color: HexColor("#2ECC71"),
                    fontWeight: FontWeight.bold)),
          ),
          Positioned(
            top: 15,
            right: 20,
            child: Text("Minggu, 10/01/2021",
                style: TextStyle(
                    fontSize: 12,
                    fontFamily: "Avenir",
                    color: Colors.grey[400],
                    fontWeight: FontWeight.bold)),
          ),
          Row(
            children: [
              Container(
                width: MediaQuery.of(context).size.width * 0.3,
                height: MediaQuery.of(context).size.height * 0.3,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/icons/setoricon.png"))),
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.6,
                height: MediaQuery.of(context).size.height * 0.3,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Setor Surah An-Najm",
                        style: TextStyle(
                            fontFamily: "Avenir",
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                            color: HexColor("#2ECC71"))),
                    SizedBox(height: 2),
                    Text("Ayat 20-24",
                        style: TextStyle(
                            fontFamily: "Avenir",
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                            color: HexColor("#2ECC71"))),
                    Divider(),
                    Text("Pendamping Ust. Abdullah Said M.",
                        style: TextStyle(
                            fontFamily: "Avenir",
                            fontSize: 13,
                            fontWeight: FontWeight.bold,
                            color: HexColor("#2ECC71"))),
                    SizedBox(height: 10),
                    Text("TAHUN AJARAN 2020/2021",
                        style: TextStyle(
                            fontFamily: "Avenir",
                            fontSize: 8,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey[400]),
                        textAlign: TextAlign.end),
                  ],
                ),
              ),
            ],
          ),
        ]));
  }
}

class Setoran3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(vertical: 15.0, horizontal: 20),
        width: MediaQuery.of(context).size.width * 1,
        height: MediaQuery.of(context).size.height * 0.25,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(20.0),
              bottomLeft: Radius.circular(20.0)),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.5),
              spreadRadius: 2,
              blurRadius: 8,
              offset: Offset(2, 5),
            ),
          ],
        ),
        child: Stack(children: [
          Positioned(
              top: -15,
              left: -15,
              child: Container(
                  width: MediaQuery.of(context).size.width * 0.15,
                  height: MediaQuery.of(context).size.height * 0.075,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(100.0),
                        topRight: Radius.circular(100.0)),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 2,
                        blurRadius: 7,
                        offset: Offset(0, 3),
                      ),
                    ],
                  ))),
          Positioned(
              bottom: -120,
              right: -100,
              child: Container(
                  width: MediaQuery.of(context).size.width * 0.5,
                  height: MediaQuery.of(context).size.height * 0.27,
                  decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.circular(300.0),
                  ))),
          Positioned(
            top: 10,
            left: 10,
            child: Text("8",
                style: TextStyle(
                    fontSize: 20,
                    fontFamily: "Avenir",
                    color: HexColor("#2ECC71"),
                    fontWeight: FontWeight.bold)),
          ),
          Positioned(
            top: 15,
            right: 20,
            child: Text("Minggu, 10/01/2021",
                style: TextStyle(
                    fontSize: 12,
                    fontFamily: "Avenir",
                    color: Colors.grey[400],
                    fontWeight: FontWeight.bold)),
          ),
          Row(
            children: [
              Container(
                width: MediaQuery.of(context).size.width * 0.3,
                height: MediaQuery.of(context).size.height * 0.3,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/icons/setoricon.png"))),
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.6,
                height: MediaQuery.of(context).size.height * 0.3,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Setor Surah An-Nas",
                        style: TextStyle(
                            fontFamily: "Avenir",
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                            color: HexColor("#2ECC71"))),
                    SizedBox(height: 2),
                    Text("Ayat 1-3",
                        style: TextStyle(
                            fontFamily: "Avenir",
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                            color: HexColor("#2ECC71"))),
                    Divider(),
                    Text("Pendamping Ust. Naufal Farros",
                        style: TextStyle(
                            fontFamily: "Avenir",
                            fontSize: 13,
                            fontWeight: FontWeight.bold,
                            color: HexColor("#2ECC71"))),
                    SizedBox(height: 10),
                    Text("TAHUN AJARAN 2020/2021",
                        style: TextStyle(
                            fontFamily: "Avenir",
                            fontSize: 8,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey[400]),
                        textAlign: TextAlign.end),
                  ],
                ),
              ),
            ],
          ),
        ]));
  }
}
