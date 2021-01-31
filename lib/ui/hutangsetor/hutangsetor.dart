part of '../uis.dart';

class HutangSetor extends StatefulWidget {
  @override
  _HutangSetorState createState() => _HutangSetorState();
}

class _HutangSetorState extends State<HutangSetor> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Column(
          children: [
            Container(
                width: MediaQuery.of(context).size.width * 1,
                height: MediaQuery.of(context).size.height * 0.2,
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
                            "Hutang Hafalan",
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
                )),
          ],
        ),
        Positioned(
          top: 100,
          child: Container(
            width: MediaQuery.of(context).size.width * 1,
            height: MediaQuery.of(context).size.height * 1,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/image/bgsetor.png"),
                  fit: BoxFit.cover,),
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(50.0),
                  topRight: Radius.circular(50.0)),
            ),
            alignment: Alignment.topCenter,
            child: SingleChildScrollView(
              child: Column(children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.05,
                ),
                Container(
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.3),
                          spreadRadius: 2,
                          blurRadius: 7,
                          offset: Offset(0, 3),
                        ),
                      ],
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(20.0),
                          topRight: Radius.circular(20.0))),
                  child: Stack(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width * 0.9,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20.0)),
                        alignment: Alignment.center,
                        child: Stack(children: [
                          Positioned(
                              bottom: -120,
                              right: -100,
                              child: Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.52,
                                  height:
                                      MediaQuery.of(context).size.height * 0.28,
                                  decoration: BoxDecoration(
                                    color: Colors.grey[300],
                                    borderRadius: BorderRadius.circular(500.0),
                                  ))),
                          Container(
                            padding: EdgeInsets.symmetric(vertical: 10.0),
                            child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SizedBox(
                                    height: MediaQuery.of(context).size.height *
                                        0.01,
                                  ),
                                  Container(
                                    alignment: Alignment.topRight,
                                    padding: EdgeInsets.only(right: 15),
                                    child: Text(
                                      "Kamis, 10 Februari 2021",
                                      style: TextStyle(
                                          fontSize: 12,
                                          fontFamily: "Avenir",
                                          color: Colors.grey,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Container(
                                            margin: EdgeInsets.only(top: 12),
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.28,
                                            height: MediaQuery.of(context)
                                                    .size
                                                    .height *
                                                0.13,
                                            decoration: BoxDecoration(
                                                image: DecorationImage(
                                                    image: AssetImage(
                                                        "assets/icons/hutanghafalan.png")))),
                                        Column(children: [
                                          Text("Surah Al-Ma'arij | Ayat 1-15",
                                              style: TextStyle(
                                                  fontSize: 15,
                                                  fontFamily: "Avenir",
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.w500)),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Text("Status : ",
                                                  style: TextStyle(
                                                      fontSize: 15,
                                                      fontFamily: "Avenir",
                                                      color: Colors.black,
                                                      fontWeight:
                                                          FontWeight.w500)),
                                              Text("Belum Setoran",
                                                  style: TextStyle(
                                                      fontSize: 15,
                                                      fontFamily: "Avenir",
                                                      color: Colors.red,
                                                      fontWeight:
                                                          FontWeight.w500)),
                                            ],
                                          ),
                                        ]),
                                      ]),
                                  Container(
                                    margin: EdgeInsets.symmetric(
                                        horizontal: 120, vertical: 10),
                                    child: RawMaterialButton(
                                      onPressed: () {
                                        showDialog(
                                            context: context,
                                            builder: (BuildContext context) {
                                              return Dialog(
                                                shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            20.0)),
                                                child: Container(
                                                    width:
                                                        MediaQuery.of(context)
                                                                .size
                                                                .width *
                                                            1,
                                                    height:
                                                        MediaQuery.of(context)
                                                                .size
                                                                .height *
                                                            0.3,
                                                    child: Padding(
                                                        padding: EdgeInsets.all(
                                                            15.0),
                                                        child: Column(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .center,
                                                          children: [
                                                            Center(
                                                              child: Text(
                                                                  "Hutang Hafalan",
                                                                  style: TextStyle(
                                                                      fontSize:
                                                                          15,
                                                                      fontFamily:
                                                                          "Avenir",
                                                                      color: Colors
                                                                          .black,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .bold)),
                                                            ),
                                                            SizedBox(
                                                                height: MediaQuery.of(
                                                                            context)
                                                                        .size
                                                                        .height *
                                                                    0.03),
                                                            Container(
                                                              width: MediaQuery.of(
                                                                          context)
                                                                      .size
                                                                      .width *
                                                                  0.8,
                                                              alignment:
                                                                  Alignment
                                                                      .center,
                                                              child: Text(
                                                                  "Anda sudah yakin untuk menyetor hafalan ke Ustadz?",
                                                                  style: TextStyle(
                                                                      fontSize:
                                                                          12,
                                                                      fontFamily:
                                                                          "Avenir",
                                                                      color: Colors
                                                                          .black,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w500),
                                                                  textAlign:
                                                                      TextAlign
                                                                          .center),
                                                            ),
                                                            SizedBox(
                                                                height: MediaQuery.of(
                                                                            context)
                                                                        .size
                                                                        .height *
                                                                    0.03),
                                                            Row(
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .center,
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .center,
                                                              children: [
                                                                RawMaterialButton(
                                                                  onPressed:
                                                                      () {
                                                                        Navigator.pop(context);
                                                                      },
                                                                  shape: RoundedRectangleBorder(
                                                                    borderRadius: BorderRadius.circular(20.0),
                                                                    side: BorderSide(
                                                                      color: HexColor("2ECC71"),
                                                                      width: 1
                                                                    )
                                                                  ),
                                                                  child:
                                                                      Container(
                                                                    padding:
                                                                        EdgeInsets.all(
                                                                            10.0),
                                                                    child: Text(
                                                                      "BELUM",
                                                                      style: TextStyle(
                                                                          fontSize:
                                                                              12,
                                                                          fontFamily:
                                                                              "Avenir",
                                                                          color: HexColor("2ECC71"),
                                                                          fontWeight:
                                                                              FontWeight.w500),
                                                                    ),
                                                                  ),
                                                                ),
                                                                SizedBox(
                                                                    width: MediaQuery.of(context)
                                                                            .size
                                                                            .width *
                                                                        0.01),
                                                                RawMaterialButton(
                                                                  onPressed:
                                                                      () {},
                                                                  elevation: 0,
                                                                  shape: RoundedRectangleBorder(
                                                                    borderRadius: BorderRadius.circular(20.0)
                                                                  ),
                                                                  child:
                                                                      Container(
                                                                    padding:
                                                                        EdgeInsets.all(
                                                                            10.0),
                                                                    child: Text(
                                                                      "YA, SETOR SEKARANG",
                                                                      style: TextStyle(
                                                                          fontSize:
                                                                              12,
                                                                          fontFamily:
                                                                              "Avenir",
                                                                          color: Colors
                                                                              .white,
                                                                          fontWeight:
                                                                              FontWeight.w500),
                                                                    ),
                                                                  ),
                                                                  fillColor:
                                                                      HexColor(
                                                                          "2ECC71"),
                                                                ),
                                                              ],
                                                            )
                                                          ],
                                                        ))),
                                              );
                                            });
                                      },
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(80.0)),
                                      padding: EdgeInsets.all(0.0),
                                      child: Ink(
                                        decoration: BoxDecoration(
                                            border: Border.all(
                                                color: HexColor("2ECC71"),
                                                width: 1),
                                            color: Colors.white,
                                            borderRadius:
                                                BorderRadius.circular(80.0)),
                                        child: Container(
                                          constraints: const BoxConstraints(
                                              minWidth: 88.0, minHeight: 40.0),
                                          alignment: Alignment.center,
                                          child: Text("SETOR SEKARANG",
                                              style: TextStyle(
                                                  fontFamily: "Avenir",
                                                  fontSize: 13,
                                                  fontWeight: FontWeight.bold,
                                                  color: HexColor("#2ECC71"))),
                                        ),
                                      ),
                                    ),
                                  ),
                                ]),
                          ),
                        ]),
                      ),
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
                            ),
                            alignment: Alignment.center,
                            child: Padding(
                              padding: EdgeInsets.only(top: 10, left: 10),
                              child: Text("10",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontFamily: "Avenir",
                                      color: HexColor("#2ECC71"),
                                      fontWeight: FontWeight.bold)),
                            ),
                          )),
                    ],
                  ),
                )
              ]),
            ),
          ),
        ),
      ]),
    );
  }
}
