part of '../uis.dart';

class Laundry extends StatefulWidget {
  @override
  _LaundryState createState() => _LaundryState();
}

class _LaundryState extends State<Laundry> {
  String _valBulan;
  List _listBulan = [
    "Januari",
    "Februari",
    "Maret",
    "April",
    "Mei",
    "Juni",
    "Juli",
    "Agustus",
    "September",
    "Oktober",
    "November",
    "Desember",
  ];

  @override
  Widget build(BuildContext context) {
    MediaQueryData queryData;
    queryData = MediaQuery.of(context);

    return Scaffold(
      body: ScrollConfiguration(
        behavior: MyBehavior(),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.only(top: 35.0),
                width: MediaQuery.of(context).size.width * 1,
                height: MediaQuery.of(context).size.height * 0.14,
                decoration: BoxDecoration(
                  color: HexColor('#2ECC71')
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    FlatButton (
                      splashColor: Colors.transparent,
                      highlightColor: Colors.green[800].withOpacity(0.3),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Icon(Icons.arrow_back_ios_rounded, color: Colors.white),
                      shape: CircleBorder(),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: queryData.size.height/60.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text("LAUNDRY ", style: TextStyle(fontSize: 18, fontFamily: "Avenir", color: Colors.white, fontWeight: FontWeight.bold, letterSpacing: -0.5)),
                            Text("BULANAN", style: TextStyle(fontSize: 18, fontFamily: "Avenir", color: Colors.white, fontWeight: FontWeight.w500, letterSpacing: -0.5)),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 65.0),
                      child: Text("tes", style: TextStyle(color: HexColor("#2ECC71")))
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
                width: MediaQuery.of(context).size.width * 1,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20.0),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.2),
                      spreadRadius: 2,
                      blurRadius: 8,
                      offset: Offset(2, 5),
                    ),
                  ],
                ),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            margin: EdgeInsets.symmetric(vertical: 30.0),
                            width: MediaQuery.of(context).size.width * 0.8,
                            padding: EdgeInsets.only(left: 20),
                            decoration: BoxDecoration(
                              color: Colors.grey[100],
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                            child: DropdownButton(
                              icon: Padding(
                                padding: EdgeInsets.only(right: 8.0),
                                child: Icon(Icons.keyboard_arrow_down_rounded),
                              ),
                              underline: SizedBox(),
                              isExpanded: true,
                              hint: Text("Pilih Bulan",
                                  style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.grey[600],
                                      fontFamily: "Avenir",
                                      fontWeight: FontWeight.bold)),
                              iconSize: 30,
                              value: _valBulan,
                              items: _listBulan.map((value) {
                                return DropdownMenuItem(
                                  child: Container(
                                    width: MediaQuery.of(context).size.width *
                                        0.3,
                                    child: Text(value, style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.black,
                                      fontFamily: "Avenir",
                                      fontWeight: FontWeight.bold)),
                                  ),
                                  value: value,
                                );
                              }).toList(),
                              onChanged: (value) {
                                setState(() {
                                  _valBulan = value;
                                });
                              },
                            ),
                          )
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.only(bottom: 20.0),
                        child: Center(
                          child: Text("KAPASITAS LAUNDRY", style: TextStyle(
                            fontSize: 15,
                            fontFamily: "Avenir",
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            letterSpacing: -0.5
                          ))
                        ),
                      ),
                      CircularPercentIndicator(
                        radius: 300.0,
                        lineWidth: 20.0,
                        progressColor: Colors.yellow[800],
                        backgroundColor: Colors.grey[300],
                        animation: true,
                        percent: 0.7,
                        circularStrokeCap: CircularStrokeCap.round,
                        center: new Text(
                          "70.0%",
                          style:
                              new TextStyle(fontFamily: "Avenir",fontWeight: FontWeight.bold, fontSize: 40.0),
                      ),),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width * 0.2,
                            height: MediaQuery.of(context).size.height * 0.2,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage("assets/icons/laundry.png")
                              ),
                            )
                          ),
                          Container(
                            alignment: Alignment.center,
                            width: MediaQuery.of(context).size.width * 0.5,
                            height: MediaQuery.of(context).size.width * 0.2,
                            child: Text("Persentase diatas menentukan berapa persen laundry yang telah dipakai dalam waktu sebulan", style: TextStyle(
                              fontSize: 12, fontFamily: "Avenir", fontWeight: FontWeight.w500, color: Colors.black
                            )),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ],
          )
        ),
      ),
    );
  }
}