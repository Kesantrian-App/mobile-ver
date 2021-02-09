part of '../uis.dart';

class Setoran extends StatefulWidget {
  @override
  _SetoranState createState() => _SetoranState();
}

class _SetoranState extends State<Setoran> {
  @override
  Widget build(BuildContext context) {
  BorderRadiusGeometry radius = BorderRadius.circular(20.0);

  return Scaffold(
    body: Column(
      children: [
        Container(
          width: MediaQuery.of(context).size.width * 1,
          height: MediaQuery.of(context).size.height * 0.7,
          decoration: BoxDecoration(
            color: Colors.white
          ),
          padding: EdgeInsets.only(top: 30.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    FlatButton (
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Padding(
                        padding: EdgeInsets.only(left: 8.0),
                        child: Icon(Icons.arrow_back_ios, color: Colors.grey),
                      ),
                      shape: CircleBorder(),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 10.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text("SETORAN ", style: TextStyle(fontSize: 18, fontFamily: "Avenir", color: Colors.grey[900], fontWeight: FontWeight.bold, letterSpacing: -0.5)),
                            Text("HAFALAN", style: TextStyle(fontSize: 18, fontFamily: "Avenir", color: Colors.grey[900], fontWeight: FontWeight.w500, letterSpacing: -0.5)),
                        ],
                      ),
                    ),
                    // Padding(
                    //   padding: EdgeInsets.only(right: 65.0),
                    //   child: Text("tes", style: TextStyle(color: Colors.white))
                    // ),
                    FlatButton (
                      onPressed: () {
                        Navigator.pushNamed(context, '/setoranhistory');
                      },
                      child: Padding(
                        padding: EdgeInsets.only(right: 0),
                        child: Icon(Icons.history, color: Colors.grey),
                      ),
                      shape: CircleBorder(),
                    ),
                  ],
                ),
                Container(
                  margin: EdgeInsets.all(20.0),
                  decoration: BoxDecoration(
                    borderRadius: radius,
                    color: Colors.white,
                    image: DecorationImage(
                      image: AssetImage("assets/image/bgsetorhud.png"),
                      fit: BoxFit.cover
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.2),
                        spreadRadius: 2,
                        blurRadius: 8,
                        offset: Offset(2, 5),
                      ),
                    ],
                  ),
                  height: MediaQuery.of(context).size.height * 0.2,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width * 0.45,
                            child: Text("ANDA BELUM SETORAN HAFALAN",
                                        style: TextStyle(fontSize: 15, fontFamily: "Avenir", color: Colors.yellow[700], fontWeight: FontWeight.w700),
                            ),
                          ),
                          SizedBox(height: MediaQuery.of(context).size.height * 0.01),
                          Container(
                            width: MediaQuery.of(context).size.width * 0.45,
                            child: Text("Segera menyetor kepada ustadz agar segera diselesaikan",
                                        style: TextStyle(fontSize: 10, fontFamily: "Avenir", color: Colors.grey[850], fontWeight: FontWeight.w500),
                            ),
                          ),
                        ],
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.35,
                        height: MediaQuery.of(context).size.height * 0.3,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("assets/icons/setorwarning.png")
                          )
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 1,
                  height: MediaQuery.of(context).size.height * 0.3,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    color: Colors.white,
                    image: DecorationImage(
                      image: AssetImage("assets/image/bgsetorhud2.png"),
                      fit: BoxFit.cover
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.2),
                        spreadRadius: 2,
                        blurRadius: 8,
                        offset: Offset(2, 5),
                      ),
                    ],
                  ),
                  margin: EdgeInsets.all(20.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                height: MediaQuery.of(context).size.height * 0.2,
                                width: MediaQuery.of(context).size.width * 0.4,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage("assets/icons/setoradd.png")
                                  )
                                )
                              ),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                padding: EdgeInsets.only(left: 20.0),
                                width: MediaQuery.of(context).size.width * 0.45,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("LAKUKAN SETORAN",
                                            style: TextStyle(fontSize: 15, fontFamily: "Avenir", color: Colors.black, fontWeight: FontWeight.w500),),
                                    Text("AL-QUR'AN",
                                            style: TextStyle(fontSize: 18, fontFamily: "Avenir", color: Colors.black, fontWeight: FontWeight.w700),)
                                  ],
                                )
                              ),
                              SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                              Container(
                                padding: EdgeInsets.only(left: 20.0),
                                width: MediaQuery.of(context).size.width * 0.5,
                                child: Text("Setor dengan menekan tombol dibawah, agar segera dikirimkan ke Ustadz pengampu Holaqoh antum",
                                            style: TextStyle(fontSize: 10, fontFamily: "Avenir", color: Colors.black, fontWeight: FontWeight.w500),)
                              ),
                            ],
                          ),
                        ],
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.5,
                        child: RaisedButton(
                          onPressed: () {
                            Navigator.push(context, PageTransition(type: PageTransitionType.rightToLeftWithFade, child: SetoranBaru(), curve: Curves.fastOutSlowIn));
                          },
                          elevation: 0,
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(80.0)),
                          padding: const EdgeInsets.all(0.0),
                          child: Ink(
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                begin: Alignment.centerLeft,
                                end: Alignment.centerRight,
                                colors: [HexColor("2ECC71"), HexColor("2ECC71"), HexColor("#adedc8"),]
                              ),
                              borderRadius: BorderRadius.all(Radius.circular(80.0)),
                            ),
                            child: Container(
                              constraints: const BoxConstraints(minWidth: 88.0, minHeight: 36.0), // min sizes for Material buttons
                              alignment: Alignment.center,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'Setor Sekarang',
                                    style: TextStyle(fontSize: 12, fontFamily: "Noto", fontWeight: FontWeight.w500, color: Colors.white),
                                    textAlign: TextAlign.center,
                                  ),
                                  SizedBox(width: MediaQuery.of(context).size.width * 0.01),
                                  Icon(Icons.arrow_forward_rounded, size: 15, color: Colors.white),
                                ],
                              )
                            ),
                          ),
                        )
                      ),
                    ]
                  )
                ),
              ]
          ),
        ),
        Container(
          width: MediaQuery.of(context).size.width * 1,
          height: MediaQuery.of(context).size.height * 0.3,
          decoration: BoxDecoration(
            color: Colors.white,
            image: DecorationImage(
              image: AssetImage("assets/image/bgsetorui.png"),
              fit: BoxFit.cover
            ),
          ),
        )
      ],
    )
  );
  }
}
