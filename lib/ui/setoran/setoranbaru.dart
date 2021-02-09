part of '../uis.dart';

class SetoranBaru extends StatefulWidget {
  @override
  _SetoranBaruState createState() => _SetoranBaruState();
}

class _SetoranBaruState extends State<SetoranBaru> {

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
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          color: Colors.white
        ),
        child: Stack(
          children: [
            Positioned(
              bottom: -45,
              left: 0,
              child: Container(
                    width: MediaQuery.of(context).size.width * 0.85,
                    height: MediaQuery.of(context).size.height * 0.5,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/image/bglaptopui.png")
                      )
                    ),
                  ),
            ),
            Column(
              children: [
                Container(
                  padding: EdgeInsets.only(top: 30.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      FlatButton (
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: Padding(
                          padding: EdgeInsets.only(left: 5.0),
                          child: Icon(Icons.arrow_back_ios, color: HexColor("#439f6a"), size: 15),
                        ),
                        shape: CircleBorder(),
                        color: HexColor("#2ECC71").withOpacity(0.2),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 10.0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 5.0),
                              child: Icon(Icons.add_circle, color: HexColor("2ECC71")),
                            ),
                            Text("SETORAN ", style: TextStyle(fontSize: 18, fontFamily: "Avenir", color: HexColor("2ECC71"), fontWeight: FontWeight.bold, letterSpacing: -0.5)),
                            Text("BARU", style: TextStyle(fontSize: 18, fontFamily: "Avenir", color: HexColor("2ECC71"), fontWeight: FontWeight.w500, letterSpacing: -0.5)),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 65.0),
                        child: Text("tes", style: TextStyle(color: Colors.white))
                      ),
                    ],
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                        height: MediaQuery.of(context).size.height * 0.03),
                    // Surat
                    Padding(
                      padding: EdgeInsets.symmetric(
                          vertical: 10.0, horizontal: 10.0),
                      child: Text("Pilih Surah",
                            style: TextStyle(
                                fontSize: 14,
                                color: Colors.black,
                                fontFamily: "Noto",
                                fontWeight: FontWeight.w700)),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                          vertical: 10.0, horizontal: 10.0),
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.8,
                        padding: EdgeInsets.only(left: 20),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(5.0),
                          border:
                              Border.all(color: Colors.grey, width: 1),
                        ),
                        child: DropdownButton(
                          underline: SizedBox(),
                          isExpanded: true,
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
                    ),
                    // Ayat
                    Padding(
                      padding: EdgeInsets.symmetric(
                          vertical: 10.0, horizontal: 10.0),
                      child: Text("Dari Ayat",
                                style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.black,
                                    fontFamily: "Noto",
                                    fontWeight: FontWeight.w700)),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                          vertical: 10.0, horizontal: 10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
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
                                  color: Colors.grey[700],
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
                    // Pilih Rekaman
                    Padding(
                      padding: EdgeInsets.symmetric(
                          vertical: 10.0, horizontal: 10.0),
                      child: Text("Pilih Jenis Upload",
                                style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.black,
                                    fontFamily: "Noto",
                                    fontWeight: FontWeight.w700)),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.15,
                      height: MediaQuery.of(context).size.height * 0.1,
                      child: OutlineButton(
                        onPressed: () {},
                        highlightedBorderColor: HexColor("#2ECC71"),
                        child: Image.asset(
                          "assets/icons/record.png",
                          width: 50,
                        ),
                        shape: CircleBorder(),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                          vertical: 10.0, horizontal: 10.0),
                      child: Text("Atau",
                                style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.grey[700],
                                    fontFamily: "Avenir",
                                    fontWeight: FontWeight.w500)),
                    ),
                    SizedBox(
                        height: MediaQuery.of(context).size.height * 0.01),
                    OutlineButton(
                      onPressed: () {},
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0)),
                      padding: const EdgeInsets.all(0.0),
                      highlightedBorderColor: HexColor("#2ECC71"),
                      child: Ink(
                        decoration: const BoxDecoration(
                            borderRadius:
                                BorderRadius.all(Radius.circular(20.0)),
                            color: Colors.white),
                        child: Container(
                            width: MediaQuery.of(context).size.width * 0.7,
                            height: MediaQuery.of(context).size.height * 0.18,
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
                            child: Column(
                              children: [
                                SizedBox(
                                    height:
                                        MediaQuery.of(context).size.height *
                                            0.01),
                                Image.asset("assets/icons/upload.png",
                                    width: MediaQuery.of(context).size.width *
                                        0.16),
                                SizedBox(
                                    height:
                                        MediaQuery.of(context).size.height *
                                            0.01),
                                Center(
                                  child: Text("Upload File Rekaman",
                                      style: TextStyle(
                                          fontSize: 12,
                                          color: Colors.grey[700],
                                          fontFamily: "Avenir",
                                          fontWeight: FontWeight.w500)),
                                ),
                                SizedBox(
                                    height:
                                        MediaQuery.of(context).size.height *
                                            0.01),
                                Row(
                                  crossAxisAlignment:
                                      CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text("Jenis Audio yang diperbolehkan : ",
                                        style: TextStyle(
                                            fontSize: 9,
                                            fontFamily: "Avenir",
                                            fontWeight: FontWeight.w500)),
                                    Text(".mp3, .flac, .wav",
                                        style: TextStyle(
                                            fontSize: 9,
                                            color: Colors.grey[700],
                                            fontFamily: "Avenir",
                                            fontWeight: FontWeight.w500)),
                                  ],
                                )
                              ],
                            )),
                      ),
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height * 0.05),
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 20.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            margin: EdgeInsets.symmetric(horizontal: 5.0),
                            width: MediaQuery.of(context).size.width * 0.3,
                            height: MediaQuery.of(context).size.height * 0.05,
                            decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.3),
                                  spreadRadius: 1,
                                  blurRadius: 5,
                                  offset: Offset(1, 2),
                                ),
                              ],
                              borderRadius: BorderRadius.circular(20.0)
                            ),
                            child: RawMaterialButton(
                              onPressed: () {},
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20.0)),
                              child: Text("SIMPAN",
                                  style: TextStyle(
                                      fontSize: 14,
                                      color: HexColor("#439f6a"),
                                      fontFamily: "Avenir",
                                      fontWeight: FontWeight.bold)),
                              elevation: 0,
                              fillColor: Colors.white,
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.symmetric(horizontal: 5.0),
                            width: MediaQuery.of(context).size.width * 0.3,
                            height: MediaQuery.of(context).size.height * 0.05,
                            decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.3),
                                  spreadRadius: 1,
                                  blurRadius: 5,
                                  offset: Offset(1, 2),
                                ),
                              ],
                              borderRadius: BorderRadius.circular(20.0)
                            ),
                            child: RawMaterialButton(
                              onPressed: () {},
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20.0)),
                              child: Text("SETOR",
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.white,
                                      fontFamily: "Avenir",
                                      fontWeight: FontWeight.bold)),
                              elevation: 0,
                              fillColor: HexColor("#2ECC71"),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ],
            ),
          ]
        ),
      ),
    );
  }
}