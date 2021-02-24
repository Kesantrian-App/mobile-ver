part of '../uiskesantrian.dart';

class Peminjaman extends StatefulWidget {
  @override
  _PeminjamanState createState() => _PeminjamanState();
}

class _PeminjamanState extends State<Peminjaman> {
  @override
  Widget build(BuildContext context) {
    MediaQueryData queryData;
    queryData = MediaQuery.of(context);

    TextEditingController search = TextEditingController();

    DateTime now = DateTime.now();
    String formattedTime = DateFormat('kk:mm').format(now);
    String formattedDate = DateFormat('EEE, d MMM yyyy').format(now);

    return Scaffold(
      body: ScrollConfiguration(
        behavior: MyBehavior(),
        child: SingleChildScrollView(
          child: Stack(
            children: [
              Container(
                width: queryData.size.width*1,
                height: queryData.size.height,
                decoration: BoxDecoration(
                  color: HexColor("#2ECC71")
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 35.0),
                width: queryData.size.width * 1,
                height: queryData.size.height * 0.11,
                child: Stack(
                  children: [
                    Container(
                      width: queryData.size.width * 1,
                      height: queryData.size.height * 0.05,
                      alignment: Alignment.center,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("persetujuan ".toUpperCase(), style: TextStyle(fontSize: 18, fontFamily: "Avenir", color: Colors.white, fontWeight: FontWeight.bold, letterSpacing: -0.5)),
                          Text("peminjaman".toUpperCase(), style: TextStyle(fontSize: 18, fontFamily: "Avenir", color: Colors.white, fontWeight: FontWeight.w500, letterSpacing: -0.5)),
                        ],
                      ),
                    ),
                    Positioned(
                      left: queryData.size.width/-20,
                      child: Container(
                        width: queryData.size.width * 1,
                        height: queryData.size.height * 0.05,
                        alignment: Alignment.centerLeft,
                        child: FlatButton(
                          splashColor: Colors.transparent,
                          highlightColor: Colors.green[800].withOpacity(0.3),
                          child: Icon(
                            Icons.arrow_back_ios_rounded,
                            color: Colors.white,
                            size: 22,
                          ),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          shape: CircleBorder(),
                        ),
                      ),
                    ),
                  ],
                )
              ),
              Positioned(
                left: queryData.size.width/5,
                right: queryData.size.width/5,
                top: queryData.size.height/8,
                child: Container(
                  height: queryData.size.height*0.16,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      bottomRight: Radius.circular(30)
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.3),
                        spreadRadius: 2,
                        blurRadius: 0,
                        offset: Offset(-10, 15),
                      ),
                      BoxShadow(
                        color: Colors.black.withOpacity(0.1),
                        spreadRadius: 2,
                        blurRadius: 0,
                        offset: Offset(-20, 25),
                      ),
                    ],
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(formattedTime,
                           style: TextStyle(
                             fontSize: queryData.size.width/8,
                             fontFamily: "Avenir",
                             fontWeight: FontWeight.bold,
                             color: Colors.black,
                             letterSpacing: 2,
                           ),
                           textAlign: TextAlign.center,
                      ),
                      Text(formattedDate,
                           style: TextStyle(
                             fontSize: queryData.size.width/25,
                             fontFamily: "Noto",
                             fontWeight: FontWeight.bold,
                             color: Colors.grey[700]
                           ),
                           textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                bottom: 0,
                child: Container(
                  width: queryData.size.width*1,
                  height: queryData.size.height*0.65,
                  child: Stack(
                    children: [
                      Positioned(
                        bottom: 0,
                        child: Container(
                          width: queryData.size.width*1,
                          height: queryData.size.height*0.62,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(50)
                            )
                          ),
                          padding: EdgeInsets.symmetric(vertical: queryData.size.height/50),
                          child: ScrollConfiguration(
                            behavior: MyBehavior(),
                            child: ListView(
                              children: [
                                SizedBox(height: queryData.size.height/35),
                                PilihanSantri(queryData: queryData),
                                PilihanSantri(queryData: queryData),
                                PilihanSantri(queryData: queryData),
                                PilihanSantri(queryData: queryData),
                                PilihanSantri(queryData: queryData),
                                PilihanSantri(queryData: queryData),
                                PilihanSantri(queryData: queryData),
                              ],
                            ),
                          ),
                        )
                      ),
                      Positioned(
                        top: 0,
                        right: queryData.size.width/15,
                        child: Container(
                          width: queryData.size.width*0.8,
                          decoration: BoxDecoration(
                            color: HexColor("#24b760"),
                            borderRadius: BorderRadius.circular(50)
                          ),
                          child: TextField(
                            controller: search,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              focusedBorder: InputBorder.none,
                              enabledBorder: InputBorder.none,
                              errorBorder: InputBorder.none,
                              disabledBorder: InputBorder.none,
                              contentPadding:EdgeInsets.symmetric(
                                vertical: queryData.size.height/50,
                                horizontal: queryData.size.height/20
                              ),
                              hintText: "Search",
                              hintStyle: TextStyle(
                                fontFamily: "Avenir",
                                fontWeight: FontWeight.w500,
                                color: Colors.white,
                                fontSize: queryData.size.width/22
                              ),
                              prefixIcon: Icon(Icons.search, color: Colors.white)
                            ),
                            style: TextStyle(
                              fontFamily: "Avenir",
                              fontWeight: FontWeight.w500,
                              color: Colors.white,
                              fontSize: queryData.size.width/22
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                bottom: 0,
                child: Container(
                  width: queryData.size.width*1,
                  decoration: BoxDecoration(
                    color: Colors.white,
                  ),
                  padding: EdgeInsets.symmetric(
                    horizontal: queryData.size.width/25,
                    vertical: queryData.size.height/50
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      FlatButton(
                        child: Text("Terima semua".toUpperCase(), style: TextStyle(
                          fontSize: queryData.size.width/25,
                          fontFamily: "Avenir",
                          fontWeight: FontWeight.bold,
                          color: HexColor("#24b760")
                        )),
                        padding: EdgeInsets.symmetric(vertical: queryData.size.height/50, horizontal: queryData.size.width/20),
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
                        color: HexColor("#2ECC71").withOpacity(0.2),
                        splashColor: Colors.green[100],
                        highlightColor: Colors.transparent,
                        onPressed: (){},
                      ),
                      FlatButton(
                        child: Text("TOLAK semua".toUpperCase(), style: TextStyle(
                          fontSize: queryData.size.width/25,
                          fontFamily: "Avenir",
                          fontWeight: FontWeight.bold,
                          color: Colors.red[900]
                        )),
                        padding: EdgeInsets.symmetric(vertical: queryData.size.height/50, horizontal: queryData.size.width/20),
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
                        color: Colors.red.withOpacity(0.2),
                        splashColor: Colors.red[200].withOpacity(0.5),
                        highlightColor: Colors.transparent,
                        onPressed: (){},
                      ),
                    ],
                  ),
                ),
              ),
            ],
          )
        )
      )
    );
  }
}

class PilihanSantri extends StatelessWidget {
  const PilihanSantri({
    Key key,
    @required this.queryData,
  }) : super(key: key);

  final MediaQueryData queryData;

  @override
  Widget build(BuildContext context) {
    return Slidable(
      actionPane: SlidableDrawerActionPane(),
      actionExtentRatio: 0.25,
      child: Container(
        child: ListTile(
          leading: Container(
            width: queryData.size.width/6,
            height: queryData.size.height/13,
            decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: BorderRadius.circular(17)
            ),
            child: Icon(
              Icons.laptop_chromebook_rounded,
              color: Colors.grey[800],
              size: queryData.size.width/10,
            ),
          ),
          title: Text("Arrizal Bintang Ramadhan", style: TextStyle(
            fontSize: queryData.size.width/22,
            fontFamily: "Avenir",
            fontWeight: FontWeight.bold,
            color: Colors.black
          )),
          subtitle: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Flexible(
                child: Container(
                  width: queryData.size.width*0.45,
                  child: Text(
                    'Kegiatan Belajar Mengajar',
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontSize: queryData.size.width/30,
                      fontFamily: 'Avenir',
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
              RichText(
                textAlign: TextAlign.start,
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: " • ",
                      style: TextStyle(
                        color: Colors.black,
                        fontFamily: "Avenir",
                        fontSize: queryData.size.width/30,
                        fontWeight: FontWeight.bold),
                    ),
                    TextSpan(
                      text: "07.00-15.00",
                      style: TextStyle(
                        color: Colors.black,
                        fontFamily: "Avenir",
                        fontSize: queryData.size.width/30,
                        fontWeight: FontWeight.w500),
                    ),
                  ]
                )
              ),
            ],
          )
        ),
      ),
      secondaryActions: <Widget>[
        IconSlideAction(
          caption: 'Terima',
          color: Colors.green[50],
          foregroundColor: HexColor("#2ECC71"),
          icon: Icons.verified_user,
          onTap: () {},
        ),
        IconSlideAction(
          caption: 'Tolak',
          color: Colors.red[100],
          foregroundColor: HexColor("#c50a0a"),
          icon: Icons.remove_circle,
          onTap: () {},
        ),
      ],
    );
  }
}