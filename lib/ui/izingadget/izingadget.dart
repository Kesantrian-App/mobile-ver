part of '../uis.dart';

class IzinGadget extends StatefulWidget {
  @override
  _IzinGadgetState createState() => _IzinGadgetState();
}

class _IzinGadgetState extends State<IzinGadget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
                width: MediaQuery.of(context).size.width * 1,
                height: MediaQuery.of(context).size.height * 0.12,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        HexColor("#2ECC71").withOpacity(0.8),
                        HexColor("#2ECC71"),
                      ]),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(50.0),
                  ),
                ),
                padding: EdgeInsets.only(left: 10),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
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
                        "Pilih Perizinan Gadget",
                        style: TextStyle(
                            fontFamily: "Avenir",
                            fontSize: 18,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                )),
            Container(
              width: MediaQuery.of(context).size.width * 1,
              height: MediaQuery.of(context).size.height * 0.88,
              decoration: BoxDecoration(color: Colors.white),
              child: Stack(
                children: [
                  Positioned(
                    top: 0,
                    right: 0,
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.3,
                      height: MediaQuery.of(context).size.height * 0.2,
                      decoration: BoxDecoration(
                          color: HexColor("#2ECC71").withOpacity(0.3),
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(500.0))),
                    ),
                  ),
                  Positioned(
                    top: 50,
                    left: 30,
                    right: 30,
                    child: Column(children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "PERIZINAN GADGET",
                                style: TextStyle(
                                    fontFamily: "Avenir",
                                    fontSize: 8,
                                    color: Colors.grey,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                  height: MediaQuery.of(context).size.height *
                                      0.01),
                              Text(
                                "Pinjam Laptop",
                                style: TextStyle(
                                    fontFamily: "Avenir",
                                    fontSize: 20,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500),
                              ),
                              SizedBox(
                                  height: MediaQuery.of(context).size.height *
                                      0.02),
                              Container(
                                width: MediaQuery.of(context).size.width * 0.5,
                                child: Text(
                                  "LAST USED: Senin, 10 Februari 2021",
                                  style: TextStyle(
                                      fontFamily: "Avenir",
                                      fontSize: 10,
                                      color: Colors.grey[700],
                                      fontWeight: FontWeight.w500),
                                  textAlign: TextAlign.justify,
                                ),
                              ),
                            ],
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width * 0.3,
                            height: MediaQuery.of(context).size.height * 0.2,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(
                                        "assets/image/pinjamlaptop.png"))),
                          ),
                        ],
                      ),
                      RaisedButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/izinlaptop');
                        },
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(20.0),
                                topRight: Radius.circular(20.0))),
                        padding: EdgeInsets.all(0.0),
                        child: Ink(
                          decoration: BoxDecoration(
                              gradient: LinearGradient(
                                  begin: Alignment.centerRight,
                                  end: Alignment.centerLeft,
                                  colors: [
                                    HexColor("2ECC71"),
                                    Colors.green[300]
                                  ]),
                              borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(20.0),
                                  topRight: Radius.circular(20.0))),
                          child: Container(
                            constraints: const BoxConstraints(
                                minWidth: 88.0, minHeight: 40.0),
                            alignment: Alignment.center,
                            child: Text("PINJAM LAPTOP",
                                style: TextStyle(
                                    fontFamily: "Avenir",
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white)),
                          ),
                        ),
                      )
                    ]),
                  ),
                  Positioned(
                    bottom: 0,
                    left: 0,
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.5,
                      height: MediaQuery.of(context).size.height * 0.22,
                      decoration: BoxDecoration(
                          color: HexColor("#2ECC71").withOpacity(0.3),
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(500.0))),
                    ),
                  ),
                  Positioned(
                    bottom: 140,
                    left: 30,
                    right: 30,
                    child: Column(children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width * 0.3,
                            height: MediaQuery.of(context).size.height * 0.2,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(
                                        "assets/image/pinjamhp.png"))),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "PERIZINAN GADGET",
                                style: TextStyle(
                                    fontFamily: "Avenir",
                                    fontSize: 8,
                                    color: Colors.grey,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                  height: MediaQuery.of(context).size.height *
                                      0.01),
                              Text(
                                "Pinjam Handphone",
                                style: TextStyle(
                                    fontFamily: "Avenir",
                                    fontSize: 20,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500),
                              ),
                              SizedBox(
                                  height: MediaQuery.of(context).size.height *
                                      0.02),
                              Container(
                                width: MediaQuery.of(context).size.width * 0.5,
                                child: Text(
                                  "LAST USED: Minggu, 9 Februari 2021",
                                  style: TextStyle(
                                      fontFamily: "Avenir",
                                      fontSize: 10,
                                      color: Colors.grey[700],
                                      fontWeight: FontWeight.w500),
                                  textAlign: TextAlign.end,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      RaisedButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/izinhp');
                        },
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(20.0),
                                topRight: Radius.circular(20.0))),
                        padding: EdgeInsets.all(0.0),
                        child: Ink(
                          decoration: BoxDecoration(
                              gradient: LinearGradient(
                                  begin: Alignment.centerRight,
                                  end: Alignment.centerLeft,
                                  colors: [
                                    HexColor("2ECC71"),
                                    Colors.green[300]
                                  ]),
                              borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(20.0),
                                  topRight: Radius.circular(20.0))),
                          child: Container(
                            constraints: const BoxConstraints(
                                minWidth: 88.0, minHeight: 40.0),
                            alignment: Alignment.center,
                            child: Text("PINJAM HANDPHONE",
                                style: TextStyle(
                                    fontFamily: "Avenir",
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white)),
                          ),
                        ),
                      )
                    ]),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
