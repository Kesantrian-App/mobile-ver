part of '../uis.dart';

class IzinHandphone extends StatefulWidget {
  @override
  _IzinHandphoneState createState() => _IzinHandphoneState();
}

class _IzinHandphoneState extends State<IzinHandphone> {
  TextEditingController controllerAlasan = TextEditingController();

  DateTime selectedDate = DateTime.now();
  TimeOfDay selectedTime = TimeOfDay.now();

  _selectDate(BuildContext context) async {
    final DateTime picked = await showDatePicker(
        context: context,
        initialDate: selectedDate, // Refer step 1
        firstDate: DateTime(2000),
        lastDate: DateTime(2025),
        helpText: "Masukkan Tanggal Peminjaman",
        cancelText: "BATAL",
        confirmText: "OK");
    if (picked != null && picked != selectedDate)
      setState(() {
        selectedDate = picked;
      });
  }

  Future<Null> _selectedTime(BuildContext context) async {
    final TimeOfDay picked_time = await showTimePicker(
        context: context,
        initialTime: selectedTime,
        builder: (BuildContext context, Widget child) {
          return MediaQuery(
            data: MediaQuery.of(context).copyWith(alwaysUse24HourFormat: true),
            child: child,
          );
        });

    if (picked_time != null && picked_time != selectedTime)
      setState(() {
        selectedTime = picked_time;
      });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            image: DecorationImage(
                image: AssetImage("assets/image/bgaddsetor.png"),
                fit: BoxFit.cover)),
        child: Column(
          children: [
            Container(
                width: MediaQuery.of(context).size.width * 1,
                height: MediaQuery.of(context).size.height * 0.12,
                decoration: BoxDecoration(color: HexColor("#2ECC71")),
                padding: EdgeInsets.only(top: 40),
                child: Stack(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width * 1,
                      height: MediaQuery.of(context).size.height * 0.05,
                      alignment: Alignment.center,
                      child: Text(
                        "Pinjam Handphone",
                        style: TextStyle(
                            fontFamily: "Avenir",
                            fontSize: 18,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
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
            Container(
              width: MediaQuery.of(context).size.width * 1,
              padding: EdgeInsets.all(25.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  color: Colors.white,
                  border: Border.all(color: HexColor("#2ECC71")),
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
                        child: Text("Izin Peminjaman",
                            style: TextStyle(
                                fontSize: 17,
                                color: HexColor("#2ECC71"),
                                fontFamily: "Avenir",
                                fontWeight: FontWeight.w500)),
                      ),
                      SizedBox(
                          height: MediaQuery.of(context).size.height * 0.03),
                      GestureDetector(
                        onTap: () => _selectDate(context),
                        child: Container(
                            child: Stack(
                          children: [
                            Container(
                              margin: EdgeInsets.symmetric(vertical: 10.0),
                              padding: EdgeInsets.symmetric(vertical: 25.0),
                              width: MediaQuery.of(context).size.width * 0.8,
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.grey),
                                  borderRadius: BorderRadius.circular(10.0)),
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(left: 20, top: 25),
                                  child: Icon(Icons.calendar_today, size: 20),
                                ),
                                Container(
                                  padding:
                                      EdgeInsets.only(top: 30.0, left: 10.0),
                                  child: Text(
                                      "${selectedDate.toLocal()}".split(' ')[0],
                                      style: TextStyle(
                                          fontSize: 13,
                                          color: Colors.black,
                                          fontFamily: "Avenir",
                                          fontWeight: FontWeight.w500)),
                                ),
                              ],
                            ),
                            Positioned(
                              top: 4,
                              left: 15,
                              child: Container(
                                decoration: BoxDecoration(color: Colors.white),
                                padding: EdgeInsets.symmetric(horizontal: 10),
                                child: Text("Tanggal Peminjaman",
                                    style: TextStyle(
                                        fontSize: 10,
                                        color: Colors.grey,
                                        fontFamily: "Avenir",
                                        fontWeight: FontWeight.w500)),
                              ),
                            ),
                          ],
                        )),
                      ),
                      SizedBox(
                          height: MediaQuery.of(context).size.height * 0.01),
                      GestureDetector(
                        onTap: () => _selectedTime(context),
                        child: Container(
                            child: Stack(
                          children: [
                            Container(
                              margin: EdgeInsets.symmetric(vertical: 10.0),
                              padding: EdgeInsets.symmetric(vertical: 25.0),
                              width: MediaQuery.of(context).size.width * 0.8,
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.grey),
                                  borderRadius: BorderRadius.circular(10.0)),
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(left: 20, top: 25),
                                  child: Icon(Icons.timer, size: 20),
                                ),
                                Container(
                                  padding:
                                      EdgeInsets.only(top: 30.0, left: 10.0),
                                  child: Text("${selectedTime.format(context)}",
                                      style: TextStyle(
                                          fontSize: 13,
                                          color: Colors.black,
                                          fontFamily: "Avenir",
                                          fontWeight: FontWeight.w500)),
                                ),
                              ],
                            ),
                            Positioned(
                              top: 4,
                              left: 15,
                              child: Container(
                                decoration: BoxDecoration(color: Colors.white),
                                padding: EdgeInsets.symmetric(horizontal: 10),
                                child: Text("Jam",
                                    style: TextStyle(
                                        fontSize: 10,
                                        color: Colors.grey,
                                        fontFamily: "Avenir",
                                        fontWeight: FontWeight.w500)),
                              ),
                            ),
                          ],
                        )),
                      ),
                      SizedBox(
                          height: MediaQuery.of(context).size.height * 0.01),
                      Container(
                        padding: EdgeInsets.symmetric(vertical: 15),
                        child: Theme(
                          data: new ThemeData(
                            primaryColor: Colors.black,
                            primaryColorDark: Colors.black,
                          ),
                          child: TextField(
                            controller: controllerAlasan,
                            decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                labelText: "Tujuan",
                                labelStyle: TextStyle(
                                    fontSize: 17,
                                    fontFamily: "Avenir",
                                    fontWeight: FontWeight.w500),
                                contentPadding: EdgeInsets.symmetric(
                                    vertical: 50.0, horizontal: 30.0),
                                prefixIcon: Icon(Icons.calendar_today)),
                          ),
                        ),
                      ),
                      SizedBox(
                          height: MediaQuery.of(context).size.height * 0.03),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width * 0.5,
                            child: RawMaterialButton(
                              onPressed: () {},
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20.0)),
                              child: Text("Pinjam Handphone",
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
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
