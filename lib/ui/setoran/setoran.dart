part of '../uis.dart';

class Setoran extends StatefulWidget {
  @override
  _SetoranState createState() => _SetoranState();
}

class _SetoranState extends State<Setoran> {
  String _valSurahAwal;
  List _listSurahAwal = [
    "An-Naas",
    "Al-Falaq",
    "Al-Ikhlas",
    "Al-Lahab",
    "An-Nasr"
  ];

  TextEditingController ayatAwal = TextEditingController();
  TextEditingController ayatAkhir = TextEditingController();
  String nilaiAyat = "";

  @override
  Widget build(BuildContext context) {
  BorderRadiusGeometry radius = BorderRadius.circular(20.0);
  BorderRadiusGeometry radiusBawah = BorderRadius.only(
    topLeft: Radius.circular(20.0),
    topRight: Radius.circular(20.0),
  );

  return Scaffold(
    body: Container(
        width: MediaQuery.of(context).size.width * 1,
        height: MediaQuery.of(context).size.height * 1,
        decoration: BoxDecoration(
          gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [HexColor("#2ECC71"), HexColor("#36BF4A")]
                  )
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
                      child: Icon(Icons.arrow_back_ios, color: Colors.white),
                    ),
                    shape: CircleBorder(),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 10.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text("Setoran ", style: TextStyle(fontSize: 18, fontFamily: "Avenir", color: Colors.white, fontWeight: FontWeight.bold)),
                        Text("Hafalan", style: TextStyle(fontSize: 18, fontFamily: "Avenir", color: Colors.white, fontWeight: FontWeight.w500)),
                      ],
                    ),
                  ),
                  FlatButton (
                    onPressed: () {
                      Navigator.pushNamed(context, '/setoranbaru');
                    },
                    child: Padding(
                      padding: EdgeInsets.only(right: 0),
                      child: Icon(Icons.history, color: Colors.white),
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
                      color: Colors.green[400].withOpacity(0.5),
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
                          child: Text("Jika Anda belum menyetor, maka Anda akan dicap tidak menyetor pada hari itu juga",
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
                // height: MediaQuery.of(context).size.height * 0.661,
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: radiusBawah,
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.5),
                        spreadRadius: 2,
                        blurRadius: 8,
                        offset: Offset(2, 5),
                      ),
                    ],
                  ),
                  child: Container(
                    padding: EdgeInsets.all(20),
                    child: Column(
                      children: [
                        Center(
                          child: Text("UPLOAD REKAMAN SETORAN",
                              style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.black,
                                  fontFamily: "Noto",
                                  fontWeight: FontWeight.bold)),
                        ),
                        SizedBox(
                            height: MediaQuery.of(context).size.height * 0.03),
                        // Surat MULAI
                        Padding(
                          padding: EdgeInsets.symmetric(
                              vertical: 10.0, horizontal: 10.0),
                          child: Row(
                            children: <Widget>[
                              Text("Surat",
                                  style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.black,
                                      fontFamily: "Avenir",
                                      fontWeight: FontWeight.w500)),
                              SizedBox(
                                  width:
                                      MediaQuery.of(context).size.width * 0.05),
                              Container(
                                width: MediaQuery.of(context).size.width * 0.42,
                                padding: EdgeInsets.only(left: 10),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10.0),
                                  border:
                                      Border.all(color: Colors.grey, width: 1),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black.withOpacity(0.5),
                                      spreadRadius: -1,
                                      blurRadius: 5,
                                      offset: Offset(1, 2),
                                    ),
                                  ],
                                ),
                                child: DropdownButton(
                                  underline: SizedBox(),
                                  hint: Text("Surat Mulai",
                                      style: TextStyle(
                                          fontSize: 14,
                                          color: Colors.white,
                                          fontFamily: "Avenir",
                                          fontWeight: FontWeight.w500)),
                                  iconSize: 30,
                                  value: _valSurahAwal,
                                  items: _listSurahAwal.map((value) {
                                    return DropdownMenuItem(
                                      child: Container(
                                        width: MediaQuery.of(context).size.width *
                                            0.32,
                                        child: Text(value),
                                      ),
                                      value: value,
                                    );
                                  }).toList(),
                                  onChanged: (value) {
                                    setState(() {
                                      _valSurahAwal = value;
                                    });
                                  },
                                ),
                              )
                            ],
                          ),
                        ),
                        // Ayat
                        Padding(
                          padding: EdgeInsets.symmetric(
                              vertical: 10.0, horizontal: 10.0),
                          child: Row(
                            children: <Widget>[
                              Text("Dari Ayat",
                                  style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.black,
                                      fontFamily: "Avenir",
                                      fontWeight: FontWeight.w500)),
                              SizedBox(
                                  width:
                                      MediaQuery.of(context).size.width * 0.05),
                              Container(
                                width: 50,
                                child: Theme(
                                  data: new ThemeData(
                                    primaryColor: Colors.black,
                                    primaryColorDark: Colors.black,
                                  ),
                                  child: TextFormField(
                                    textAlign: TextAlign.center,
                                    decoration: InputDecoration(
                                        border: OutlineInputBorder(),
                                        counterText: ""),
                                    maxLength: 2,
                                    controller: ayatAwal,
                                    onChanged: (text) {
                                      nilaiAyat = text;
                                    },
                                  ),
                                ),
                              ),
                              SizedBox(
                                  width:
                                      MediaQuery.of(context).size.width * 0.05),
                              Text("Sampai",
                                  style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.black,
                                      fontFamily: "Avenir",
                                      fontWeight: FontWeight.w500)),
                              SizedBox(
                                  width:
                                      MediaQuery.of(context).size.width * 0.05),
                              Container(
                                width: 50,
                                child: Theme(
                                  data: new ThemeData(
                                    primaryColor: Colors.black,
                                    primaryColorDark: Colors.black,
                                  ),
                                  child: TextFormField(
                                    textAlign: TextAlign.center,
                                    decoration: InputDecoration(
                                        border: OutlineInputBorder(),
                                        counterText: ""),
                                    maxLength: 2,
                                    controller: ayatAkhir,
                                    onChanged: (text) {
                                      nilaiAyat = text;
                                    },
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                            height: MediaQuery.of(context).size.height * 0.03),
                        Row(
                          children: [
                            Container(
                              width: MediaQuery.of(context).size.width * 0.15,
                              height: MediaQuery.of(context).size.height * 0.1,
                              child: OutlineButton(
                                onPressed: () {},
                                highlightedBorderColor: HexColor("#2ECC71"),
                                child: Image.asset(
                                  "assets/icons/record.png",
                                  width: MediaQuery.of(context).size.width * 0.12,
                                ),
                                shape: CircleBorder(),
                              ),
                            ),
                            SizedBox(width: MediaQuery.of(context).size.width * 0.05),
                            Container(
                              padding: EdgeInsets.symmetric(vertical: 10.0),
                              child: Center(
                                child: Text("Atau",
                                    style: TextStyle(
                                        fontSize: 14,
                                        color: Colors.grey[700],
                                        fontFamily: "Avenir",
                                        fontWeight: FontWeight.w500)),
                              ),
                            ),
                            SizedBox(width: MediaQuery.of(context).size.width * 0.05),
                            RawMaterialButton(
                              onPressed: () {},
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20.0)),
                              padding: const EdgeInsets.all(0.0),
                              child: Ink(
                                decoration: const BoxDecoration(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(20.0)),
                                    color: Colors.white),
                                child: Container(
                                    width: MediaQuery.of(context).size.width * 0.5,
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                          color: Colors.grey[350], width: 1),
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(20.0)),
                                    ),
                                    constraints: const BoxConstraints(
                                        minWidth: 88.0,
                                        minHeight:
                                            36.0), // min sizes for Material buttons
                                    alignment: Alignment.center,
                                    padding: EdgeInsets.symmetric(vertical: 10.0),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Image.asset("assets/icons/upload.png",
                                            width: MediaQuery.of(context).size.width *
                                                0.12),
                                        SizedBox(width: MediaQuery.of(context).size.width * 0.01),
                                        Center(
                                          child: Text("Upload File Rekaman",
                                              style: TextStyle(
                                                  fontSize: 12,
                                                  color: Colors.grey[700],
                                                  fontFamily: "Avenir",
                                                  fontWeight: FontWeight.w500)),
                                        ),
                                      ],
                                    )),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: MediaQuery.of(context).size.height * 0.05),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              width: MediaQuery.of(context).size.width * 0.3,
                              child: RawMaterialButton(
                                onPressed: () {},
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(20.0),
                                        bottomLeft: Radius.circular(20.0))),
                                child: Text("Simpan",
                                    style: TextStyle(
                                        fontSize: 14,
                                        color: Colors.black,
                                        fontFamily: "Avenir",
                                        fontWeight: FontWeight.w500)),
                                elevation: 0,
                                fillColor: Colors.grey[350],
                              ),
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width * 0.3,
                              child: RawMaterialButton(
                                onPressed: () {},
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.only(
                                        topRight: Radius.circular(20.0),
                                        bottomRight: Radius.circular(20.0))),
                                child: Text("Setor",
                                    style: TextStyle(
                                        fontSize: 15,
                                        color: Colors.white,
                                        fontFamily: "Avenir",
                                        fontWeight: FontWeight.w500)),
                                elevation: 0,
                                fillColor: HexColor("#2ECC71"),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ]
        ),
      ),
  );
  }
}
