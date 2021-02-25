part of '../uiskesantrian.dart';

class SetorHafalan extends StatefulWidget {
  @override
  _SetorHafalanState createState() => _SetorHafalanState();
}

class _SetorHafalanState extends State<SetorHafalan> {
  String _namaSantri;
  List _listNamaSantri = [
    "Arrizal Bintang R.",
    "Yusuf M. Edward",
    "A. Khaidir M.",
    "Abdullah Said M.",
    "M. Rifky H.",
    "Ridwan Firdaus",
    "M. Giri",
  ];
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

  Color colorApp = HexColor("#2ECC71");

  @override
  Widget build(BuildContext context) {
    MediaQueryData queryData;
    queryData = MediaQuery.of(context);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        accentColor: HexColor("#2ECC71"),
        accentColorBrightness: Brightness.light,
      ),
      home: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            height: queryData.size.height * 1,
            decoration: BoxDecoration(
                color: Colors.white,
                image: DecorationImage(
                    image: AssetImage("assets/image/bgaddsetor.png"),
                    fit: BoxFit.cover)),
            child: Column(
              children: [
                Container(
                  width: queryData.size.width * 1,
                  height: queryData.size.height * 0.12,
                  decoration: BoxDecoration(color: colorApp),
                  padding: EdgeInsets.only(top: 40),
                    child: Stack(
                      children: [
                        Container(
                          width: queryData.size.width * 1,
                          height: queryData.size.height * 0.05,
                          alignment: Alignment.center,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("Setor ".toUpperCase(), style: TextStyle(fontSize: queryData.size.width/18, fontFamily: "Avenir", color: Colors.white, fontWeight: FontWeight.bold, letterSpacing: -0.5)),
                              Text("hafalan".toUpperCase(), style: TextStyle(fontSize: queryData.size.width/18, fontFamily: "Avenir", color: Colors.white, fontWeight: FontWeight.w500, letterSpacing: -0.5)),
                            ],
                          ),
                        ),
                        Container(
                          width: queryData.size.width * 1,
                          height: queryData.size.height * 0.05,
                          alignment: Alignment.centerRight,
                          child: FlatButton(
                            splashColor: Colors.transparent,
                            color: Colors.grey[700].withOpacity(0.2),
                            highlightColor: Colors.grey[700].withOpacity(0.4),
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: Icon(Icons.close_rounded, color: Colors.white),
                            shape: CircleBorder(),
                          ),
                        ),
                      ],
                    )),
                Container(
                  width: queryData.size.width * 1,
                  padding: EdgeInsets.all(25.0),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      color: Colors.white,
                      border: Border.all(color: colorApp),
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
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Center(
                            child: Text("rekap setoran".toUpperCase(),
                                style: TextStyle(
                                    fontSize: queryData.size.width/20,
                                    letterSpacing: 1,
                                    color: colorApp,
                                    fontFamily: "Avenir",
                                    fontWeight: FontWeight.bold)),
                          ),
                          SizedBox(
                              height: queryData.size.height * 0.03),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 10.0),
                            child: Text("Nama Santri",
                                  style: TextStyle(
                                      fontSize: queryData.size.width/24,
                                      color: Colors.black,
                                      fontFamily: "Noto",
                                      fontWeight: FontWeight.w500),
                                  textAlign: TextAlign.center
                            ),
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
                                        fontSize: queryData.size.width/24,
                                        color: Colors.white,
                                        fontFamily: "Avenir",
                                        fontWeight: FontWeight.w500)),
                                iconSize: 30,
                                value: _namaSantri,
                                items: _listNamaSantri.map((value) {
                                  return DropdownMenuItem(
                                    child: Container(
                                      width: MediaQuery.of(context).size.width,
                                      child: Text(value, style: TextStyle(
                                        fontFamily: "Avenir",
                                        fontWeight: FontWeight.w500,
                                        fontSize: queryData.size.width/25,
                                        color: Colors.black
                                      )),
                                    ),
                                    value: value,
                                  );
                                }).toList(),
                                onChanged: (value) {
                                  setState(() {
                                    _namaSantri = value;
                                  });
                                },
                              ),
                            )
                          ),
                          SizedBox(height: queryData.size.height * 0.01),
                          Divider(
                            color: colorApp,
                          ),
                          SizedBox(height: queryData.size.height * 0.01),
                          // Surat
                          Padding(
                            padding: EdgeInsets.symmetric(
                                vertical: 10.0, horizontal: 10.0),
                            child: Text("Pilih Surah",
                                  style: TextStyle(
                                      fontSize: queryData.size.width/24,
                                      color: Colors.black,
                                      fontFamily: "Noto",
                                      fontWeight: FontWeight.w500)),
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
                                      width: MediaQuery.of(context).size.width,
                                      child: Text(value, style: TextStyle(
                                        fontFamily: "Avenir",
                                        fontWeight: FontWeight.w500,
                                        fontSize: queryData.size.width/25,
                                        color: Colors.black
                                      )),
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
                                          fontSize: queryData.size.width/24,
                                          color: Colors.black,
                                          fontFamily: "Noto",
                                          fontWeight: FontWeight.w500)),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(
                                vertical: 10.0, horizontal: 10.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
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
                                      keyboardType: TextInputType.number,
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
                                        fontSize: queryData.size.width/24,
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
                                      keyboardType: TextInputType.number,
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
                          SizedBox(height: queryData.size.height * 0.03),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                width: queryData.size.width * 0.5,
                                child: RawMaterialButton(
                                  onPressed: () {},
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20.0)),
                                  child: Text("simpan".toUpperCase(),
                                      style: TextStyle(
                                          fontSize: 12,
                                          letterSpacing: 1.5,
                                          color: Colors.white,
                                          fontFamily: "Avenir",
                                          fontWeight: FontWeight.bold)),
                                  elevation: 0,
                                  fillColor: colorApp,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
