part of '../uis.dart';

class SetoranBaru extends StatefulWidget {
  @override
  _SetoranBaruState createState() => _SetoranBaruState();
}

class _SetoranBaruState extends State<SetoranBaru> {
  BorderRadiusGeometry radiusBawah = BorderRadius.only(
    bottomLeft: Radius.circular(50.0),
    bottomRight: Radius.circular(50.0),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            color: Colors.white,),
        child: Stack(
          children: [
            Container(
              width: MediaQuery.of(context).size.width * 1,
              height: MediaQuery.of(context).size.height * 1,
              decoration: BoxDecoration(
                  color: Colors.white,
                  image: DecorationImage(
                      image: AssetImage("assets/image/bgsetor.png"),
                      fit: BoxFit.cover)),
              child: SingleChildScrollView(
                  child: Column(
                children: [
                  SizedBox(height: MediaQuery.of(context).size.height * 0.13),
                  SetoranBackup1(),
                  SetoranBackup2(),
                  SetoranBackup3(),
                  SetoranBackup4(),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.005),
                ],
              )),
            ),
            Container(
                width: MediaQuery.of(context).size.width * 1,
                height: MediaQuery.of(context).size.height * 0.12,
                decoration: BoxDecoration(color: HexColor("#2ECC71"), borderRadius: radiusBawah),
                padding: EdgeInsets.only(top: 40),
                child: Stack(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width * 1,
                      height: MediaQuery.of(context).size.height * 0.05,
                      alignment: Alignment.center,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("History ", style: TextStyle(fontSize: 18, fontFamily: "Avenir", color: Colors.white, fontWeight: FontWeight.bold)),
                          Text("Setoran", style: TextStyle(fontSize: 18, fontFamily: "Avenir", color: Colors.white, fontWeight: FontWeight.w500)),
                        ],
                      ),
                    ),
                    Positioned(
                      right: 5,
                      child: Container(
                          width: MediaQuery.of(context).size.width * 0.15,
                          height: MediaQuery.of(context).size.height * 0.05,
                          child: FlatButton(
                              child: Icon(
                                Icons.close,
                                color: Colors.white,
                                size: 30,
                              ),
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              shape: CircleBorder(),
                              color: Colors.grey[700].withOpacity(0.2))),
                    )
                  ],
                )),
          ],
        ),
      ),
    );
  }
}

class SetoranBackup1 extends StatelessWidget {
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

class SetoranBackup2 extends StatelessWidget {
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

class SetoranBackup3 extends StatelessWidget {
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

class SetoranBackup4 extends StatelessWidget {
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
            child: Text("7",
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