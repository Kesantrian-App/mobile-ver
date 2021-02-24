part of 'uiskesantrian.dart';

class DashboardKes extends StatefulWidget {
  @override
  _DashboardKesState createState() => _DashboardKesState();
}

class _DashboardKesState extends State<DashboardKes> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

    MediaQueryData queryData;
    queryData = MediaQuery.of(context);

    return Scaffold(
      body: ScrollConfiguration(
        behavior: MyBehavior(),
        child: SingleChildScrollView(
          child: Stack(
            children: [
              Column(
                children: [
                  Container(
                    width: queryData.size.width * 1,
                    height: queryData.size.height * 0.3,
                    decoration: BoxDecoration(
                      color: HexColor("#2ECC71"),
                      image: DecorationImage(
                        image: AssetImage("assets/image/accountbg.png"),
                        fit: BoxFit.cover
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: queryData.size.width/20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                      "AHLAN WA SAHLAN,",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontFamily: "Avenir",
                                          fontSize: queryData.size.width/25,
                                          letterSpacing: 2,
                                          fontWeight: FontWeight.w500),
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Text(
                                      "Ustadz Ahlal",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontFamily: "Avenir",
                                          fontSize: queryData.size.width/12,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(
                                      height: 30,
                                    ),
                                    Text("Apa yang Anda pikirkan hari ini?",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontFamily: "Avenir",
                                            fontSize: queryData.size.width/30,
                                            fontWeight: FontWeight.bold)),
                                ],
                              ),
                              BouncingWidget(
                                duration: Duration(milliseconds: 100),
                                scaleFactor: 1,
                                onPressed: () {},
                                child: Container(
                                  width: MediaQuery.of(context).size.width * 0.2,
                                  height: MediaQuery.of(context).size.height * 0.1,
                                  decoration: BoxDecoration(
                                    border: Border.all(color: Colors.white, width: 3),
                                    shape: BoxShape.circle,
                                  ),
                                  padding: EdgeInsets.all(3.0),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      image: DecorationImage(
                                          fit: BoxFit.cover,
                                          image: AssetImage("assets/image/akun2.jpg")),
                                      color: Colors.redAccent,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: queryData.size.width*1,
                          height: queryData.size.height/12,
                          alignment: Alignment.bottomCenter,
                          child: Container(
                            width: queryData.size.width*1,
                            height: queryData.size.height/40,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(50.0),
                                topRight: Radius.circular(50.0)
                              ),
                              color: Colors.white
                            ),
                          ),
                        )
                      ]
                    ),
                  ),
                  Container(
                    width: queryData.size.width * 1,
                    height: queryData.size.height * 0.7,
                    decoration: BoxDecoration(
                      color: Colors.white,
                    ),
                    child: Stack(
                      children: [
                        ScrollConfiguration(
                          behavior: MyBehavior(),
                          child: SingleChildScrollView(
                            child: Column(
                              children: [
                                Container(
                                  width: queryData.size.width*1,
                                  height: queryData.size.height*0.3,
                                  margin: EdgeInsets.symmetric(vertical: queryData.size.height/90),
                                  child: Stack(
                                    children: [
                                      Positioned(
                                        bottom: queryData.size.height/40,
                                        left: queryData.size.width/20,
                                        right: queryData.size.width/20,
                                        child: RaisedButton(
                                          onPressed: () {
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(builder: (context) => HolaqohKes()),
                                            );
                                          },
                                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
                                          padding: const EdgeInsets.all(0.0),
                                          elevation: 5,
                                          child: Ink(
                                            decoration: BoxDecoration(
                                              color: Colors.white,
                                              borderRadius: BorderRadius.all(Radius.circular(20.0)),
                                            ),
                                            child: Container(
                                              height: queryData.size.height*0.22,
                                              padding: EdgeInsets.symmetric(horizontal: queryData.size.width/30, vertical: queryData.size.height/30),
                                              alignment: Alignment.centerLeft,
                                              child: Column(
                                                mainAxisAlignment: MainAxisAlignment.end,
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Icon(Icons.arrow_right_alt_rounded, size: queryData.size.width/10, color: HexColor("#2ab967")),
                                                  Padding(
                                                    padding: EdgeInsets.only(left: queryData.size.width/90),
                                                    child: Text("holaqoh".toUpperCase(), style: TextStyle(
                                                      fontSize: queryData.size.width/20,
                                                      fontFamily: "Avenir",
                                                      fontWeight: FontWeight.bold,
                                                      color: Colors.black.withOpacity(0.6)
                                                    )),
                                                  ),
                                                  Padding(
                                                    padding: EdgeInsets.only(left: queryData.size.width/90),
                                                    child: Text("ustadz ahlal".toUpperCase(), style: TextStyle(
                                                      fontSize: queryData.size.width/15,
                                                      fontFamily: "Avenir",
                                                      fontWeight: FontWeight.bold,
                                                      color: HexColor("#2ab967")
                                                    )),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        )
                                      ),
                                      Positioned(
                                        top: -10,
                                        right: 20,
                                        child: Container(
                                          width: queryData.size.width/2,
                                          height: queryData.size.height/5,
                                          decoration: BoxDecoration(
                                            image: DecorationImage(
                                              image: AssetImage("assets/icons/quran3.png")
                                            ),
                                            boxShadow: [
                                              BoxShadow(
                                                color: Colors.black.withOpacity(0.2),
                                                spreadRadius: -50,
                                                blurRadius: 40,
                                                  offset: Offset(0, 40), 
                                              )
                                            ],
                                          )
                                        ),
                                      ),
                                    ],
                                  )
                                ),
                                Container(
                                  width: queryData.size.width*1,
                                  height: queryData.size.height*0.33,
                                  margin: EdgeInsets.symmetric(vertical: queryData.size.height/90),
                                  child: Stack(
                                    children: [
                                      Positioned(
                                        bottom: queryData.size.height/40,
                                        left: queryData.size.width/20,
                                        right: queryData.size.width/20,
                                        child: Container(
                                          height: queryData.size.height*0.25,
                                          padding: EdgeInsets.symmetric(horizontal: queryData.size.width/30, vertical: queryData.size.height/90),
                                          alignment: Alignment.centerLeft,
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius: BorderRadius.circular(20.0),
                                            boxShadow: [
                                              BoxShadow(
                                                color: Colors.grey.withOpacity(0.5),
                                                spreadRadius: 2,
                                                blurRadius: 4,
                                                offset: Offset(0, 3),
                                              ),
                                            ],
                                          ),
                                          child: Column(
                                            mainAxisAlignment: MainAxisAlignment.end,
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Padding(
                                                padding: EdgeInsets.only(left: queryData.size.width/90),
                                                child: Text("Ingin lihat".toUpperCase(), style: TextStyle(
                                                  fontSize: queryData.size.width/23,
                                                  fontFamily: "Avenir",
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.black.withOpacity(0.6)
                                                )),
                                              ),
                                              Padding(
                                                padding: EdgeInsets.only(left: queryData.size.width/90),
                                                child: Text("absensi siswa?".toUpperCase(), style: TextStyle(
                                                  fontSize: queryData.size.width/23,
                                                  fontFamily: "Avenir",
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.black.withOpacity(0.6)
                                                )),
                                              ),
                                              Padding(
                                                padding: EdgeInsets.only(left: queryData.size.width/90),
                                                child: Text("silahkan pilih kelas".toUpperCase(), style: TextStyle(
                                                  fontSize: queryData.size.width/18,
                                                  fontFamily: "Avenir",
                                                  fontWeight: FontWeight.bold,
                                                  color: HexColor("#2ab967")
                                                )),
                                              ),
                                              ButtonBar(
                                                alignment: MainAxisAlignment.center,
                                                children: [
                                                  RaisedButton(
                                                    textColor: HexColor("#2ab967"),
                                                    onPressed: () {
                                                      // Perform some action
                                                    },
                                                    color: Colors.white,
                                                    shape: RoundedRectangleBorder(
                                                      borderRadius: BorderRadius.circular(20.0)
                                                    ),
                                                    child: Text('Kelas X', style: TextStyle(
                                                      fontSize: queryData.size.width/25,
                                                      fontFamily: "Avenir",
                                                      fontWeight: FontWeight.w500,
                                                      letterSpacing: -0.5
                                                    ),),
                                                  ),
                                                  RaisedButton(
                                                    textColor: HexColor("#2ab967"),
                                                    onPressed: () {
                                                      // Perform some action
                                                    },
                                                    color: Colors.white,
                                                    shape: RoundedRectangleBorder(
                                                      borderRadius: BorderRadius.circular(20.0)
                                                    ),
                                                    child: Text('Kelas XI', style: TextStyle(
                                                      fontSize: queryData.size.width/25,
                                                      fontFamily: "Avenir",
                                                      fontWeight: FontWeight.w500,
                                                      letterSpacing: -0.5
                                                    ),),
                                                  ),
                                                  RaisedButton(
                                                    textColor: HexColor("#2ab967"),
                                                    onPressed: () {
                                                      // Perform some action
                                                    },
                                                    color: Colors.white,
                                                    shape: RoundedRectangleBorder(
                                                      borderRadius: BorderRadius.circular(20.0)
                                                    ),
                                                    child: Text('Kelas XII', style: TextStyle(
                                                      fontSize: queryData.size.width/25,
                                                      fontFamily: "Avenir",
                                                      fontWeight: FontWeight.w500,
                                                      letterSpacing: -0.5
                                                    ),),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        )
                                      ),
                                      Positioned(
                                        top: -20,
                                        right: 0,
                                        child: Container(
                                          width: queryData.size.width/2,
                                          height: queryData.size.height/5,
                                          decoration: BoxDecoration(
                                            image: DecorationImage(
                                              image: AssetImage("assets/icons/hutang.png")
                                            ),
                                            boxShadow: [
                                              BoxShadow(
                                                color: Colors.black.withOpacity(0.2),
                                                spreadRadius: -50,
                                                blurRadius: 40,
                                                  offset: Offset(0, 40), 
                                              )
                                            ],
                                          )
                                        ),
                                      ),
                                    ],
                                  )
                                ),
                                Container(
                                  width: queryData.size.width*1,
                                  height: queryData.size.height*0.33,
                                  margin: EdgeInsets.symmetric(vertical: queryData.size.height/90),
                                  child: Stack(
                                    children: [
                                      Positioned(
                                        bottom: queryData.size.height/40,
                                        left: queryData.size.width/20,
                                        right: queryData.size.width/20,
                                        child: Container(
                                          height: queryData.size.height*0.25,
                                          padding: EdgeInsets.symmetric(horizontal: queryData.size.width/30, vertical: queryData.size.height/90),
                                          alignment: Alignment.centerLeft,
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius: BorderRadius.circular(20.0),
                                            boxShadow: [
                                              BoxShadow(
                                                color: Colors.grey.withOpacity(0.5),
                                                spreadRadius: 2,
                                                blurRadius: 4,
                                                offset: Offset(0, 3),
                                              ),
                                            ],
                                          ),
                                          child: Column(
                                            mainAxisAlignment: MainAxisAlignment.end,
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Padding(
                                                padding: EdgeInsets.only(left: queryData.size.width/90),
                                                child: Text("Ingin lihat".toUpperCase(), style: TextStyle(
                                                  fontSize: queryData.size.width/23,
                                                  fontFamily: "Avenir",
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.black.withOpacity(0.6)
                                                )),
                                              ),
                                              Padding(
                                                padding: EdgeInsets.only(left: queryData.size.width/90),
                                                child: Text("hafalan murid?".toUpperCase(), style: TextStyle(
                                                  fontSize: queryData.size.width/23,
                                                  fontFamily: "Avenir",
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.black.withOpacity(0.6)
                                                )),
                                              ),
                                              Padding(
                                                padding: EdgeInsets.only(left: queryData.size.width/90),
                                                child: Text("Dipersilahkan~".toUpperCase(), style: TextStyle(
                                                  fontSize: queryData.size.width/18,
                                                  fontFamily: "Avenir",
                                                  fontWeight: FontWeight.bold,
                                                  color: HexColor("#2ab967")
                                                )),
                                              ),
                                              ButtonBar(
                                                alignment: MainAxisAlignment.center,
                                                children: [
                                                  RaisedButton(
                                                    textColor: HexColor("#2ab967"),
                                                    onPressed: () {
                                                      // Perform some action
                                                    },
                                                    color: Colors.white,
                                                    shape: RoundedRectangleBorder(
                                                      borderRadius: BorderRadius.circular(20.0)
                                                    ),
                                                    child: Text('Kelas X', style: TextStyle(
                                                      fontSize: queryData.size.width/25,
                                                      fontFamily: "Avenir",
                                                      fontWeight: FontWeight.w500,
                                                      letterSpacing: -0.5
                                                    ),),
                                                  ),
                                                  RaisedButton(
                                                    textColor: HexColor("#2ab967"),
                                                    onPressed: () {
                                                      // Perform some action
                                                    },
                                                    color: Colors.white,
                                                    shape: RoundedRectangleBorder(
                                                      borderRadius: BorderRadius.circular(20.0)
                                                    ),
                                                    child: Text('Kelas XI', style: TextStyle(
                                                      fontSize: queryData.size.width/25,
                                                      fontFamily: "Avenir",
                                                      fontWeight: FontWeight.w500,
                                                      letterSpacing: -0.5
                                                    ),),
                                                  ),
                                                  RaisedButton(
                                                    textColor: HexColor("#2ab967"),
                                                    onPressed: () {
                                                      // Perform some action
                                                    },
                                                    color: Colors.white,
                                                    shape: RoundedRectangleBorder(
                                                      borderRadius: BorderRadius.circular(20.0)
                                                    ),
                                                    child: Text('Kelas XII', style: TextStyle(
                                                      fontSize: queryData.size.width/25,
                                                      fontFamily: "Avenir",
                                                      fontWeight: FontWeight.w500,
                                                      letterSpacing: -0.5
                                                    ),),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        )
                                      ),
                                      Positioned(
                                        top: -20,
                                        right: queryData.size.width/10,
                                        child: Container(
                                          width: queryData.size.width/3,
                                          height: queryData.size.height/5,
                                          decoration: BoxDecoration(
                                            image: DecorationImage(
                                              image: AssetImage("assets/icons/hafalan.png")
                                            ),
                                            boxShadow: [
                                              BoxShadow(
                                                color: Colors.black.withOpacity(0.2),
                                                spreadRadius: -30,
                                                blurRadius: 40,
                                                  offset: Offset(0, 40), 
                                              )
                                            ],
                                          )
                                        ),
                                      ),
                                    ],
                                  )
                                ),
                                SizedBox(
                                  height: queryData.size.height/6,
                                )
                              ],
                            ),
                          )
                        ),
                        Container(
                          width: queryData.size.width * 1,
                          height: queryData.size.height * 0.1,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              stops: [0.1, 0.3],
                              colors: [Colors.white, Colors.white.withOpacity(0)]
                            )
                          )
                        )
                      ],
                    )
                  ),
                ],
              ),
              Positioned(
                bottom: queryData.size.height/40,
                left: queryData.size.width/15,
                right: queryData.size.width/15,
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: queryData.size.height/80),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.2),
                        spreadRadius: 3,
                        blurRadius: 10,	
                          offset: Offset(0, 3), 
                      )
                    ],
                    borderRadius: BorderRadius.circular(50.0)
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        children: [
                          RaisedButton(
                            onPressed: (){
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => Pengumuman()),
                              );
                            },
                            shape: CircleBorder(),
                            padding: EdgeInsets.all(queryData.size.width/40),
                            color: HexColor("#2ECC71"),
                            child: Icon(Icons.notifications_on_rounded, color: Colors.white, size: queryData.size.width/15),
                          ),
                          SizedBox(height: queryData.size.height/90),
                          Text("Pengumuman", style: TextStyle(
                            fontSize: queryData.size.width/30,
                            fontFamily: "Avenir",
                            color: Colors.black.withOpacity(0.7),
                            fontWeight: FontWeight.w500
                          ))
                        ],
                      ),
                      Column(
                        children: [
                          RaisedButton(
                            onPressed: (){
                              showDialog(
                                context: context,
                                builder: (context) => Material(
                                  type: MaterialType.transparency,
                                  child: new Container(
                                    height: queryData.size.height*1,
                                    width: queryData.size.width*1,
                                    child: Stack(
                                      children: [
                                        Positioned(
                                          bottom: queryData.size.height/14.5,
                                          right: queryData.size.width/20,
                                          left: queryData.size.width/20,
                                          child: Container(
                                            child: Column(
                                              crossAxisAlignment: CrossAxisAlignment.center,
                                              children: [
                                                Row(
                                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                  children: [
                                                    Column(
                                                      children: [
                                                        RaisedButton(
                                                          onPressed: (){
                                                            Navigator.push(
                                                              context,
                                                              MaterialPageRoute(builder: (context) => Peminjaman()),
                                                            );
                                                          },
                                                          shape: CircleBorder(),
                                                          padding: EdgeInsets.all(queryData.size.width/30),
                                                          color: HexColor("#2ECC71"),
                                                          child: Icon(Icons.laptop_mac, color: Colors.white, size: queryData.size.width/15),
                                                        ),
                                                        SizedBox(height: queryData.size.height/95),
                                                        Text("Persetujuan\nPeminjaman".toUpperCase(), style: TextStyle(
                                                            fontSize: queryData.size.width/30,
                                                            fontFamily: "Avenir",
                                                            color: Colors.white,
                                                            fontWeight: FontWeight.bold
                                                          ),
                                                          textAlign: TextAlign.center
                                                        )
                                                      ],
                                                    ),
                                                    Column(
                                                      children: [
                                                        RaisedButton(
                                                          onPressed: (){},
                                                          shape: CircleBorder(),
                                                          padding: EdgeInsets.all(queryData.size.width/30),
                                                          color: HexColor("#2ECC71"),
                                                          child: Icon(Icons.library_books_outlined, color: Colors.white, size: queryData.size.width/15),
                                                        ),
                                                        SizedBox(height: queryData.size.height/95),
                                                        Text("Setor Hafalan".toUpperCase(), style: TextStyle(
                                                            fontSize: queryData.size.width/30,
                                                            fontFamily: "Avenir",
                                                            color: Colors.white,
                                                            fontWeight: FontWeight.bold
                                                          ),
                                                          textAlign: TextAlign.center
                                                        )
                                                      ],
                                                    ),
                                                  ],
                                                ),
                                                SizedBox(height: queryData.size.height/30),
                                                Row(
                                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                  crossAxisAlignment: CrossAxisAlignment.end,
                                                  children: [
                                                    Column(
                                                      children: [
                                                        RaisedButton(
                                                          onPressed: (){},
                                                          shape: CircleBorder(),
                                                          padding: EdgeInsets.all(queryData.size.width/30),
                                                          color: HexColor("#2ECC71"),
                                                          child: Icon(Icons.contact_page, color: Colors.white, size: queryData.size.width/15),
                                                        ),
                                                        SizedBox(height: queryData.size.height/95),
                                                        Text("Laporan".toUpperCase(), style: TextStyle(
                                                            fontSize: queryData.size.width/30,
                                                            fontFamily: "Avenir",
                                                            color: Colors.white,
                                                            fontWeight: FontWeight.bold
                                                          ),
                                                          textAlign: TextAlign.center
                                                        )
                                                      ],
                                                    ),
                                                    Column(
                                                      children: [
                                                        RaisedButton(
                                                          onPressed: (){},
                                                          shape: CircleBorder(),
                                                          padding: EdgeInsets.all(queryData.size.width/30),
                                                          color: HexColor("#2ECC71"),
                                                          child: Icon(Icons.library_books_outlined, color: Colors.white, size: queryData.size.width/15),
                                                        ),
                                                        SizedBox(height: queryData.size.height/95),
                                                        Text("Hafalan murid".toUpperCase(), style: TextStyle(
                                                            fontSize: queryData.size.width/30,
                                                            fontFamily: "Avenir",
                                                            color: Colors.white,
                                                            fontWeight: FontWeight.bold
                                                          ),
                                                          textAlign: TextAlign.center
                                                        )
                                                      ],
                                                    ),
                                                  ],
                                                ),
                                                SizedBox(height: queryData.size.height/30),
                                                RaisedButton(
                                                  onPressed: (){
                                                    Navigator.pop(context);
                                                  },
                                                  shape: CircleBorder(),
                                                  padding: EdgeInsets.all(queryData.size.width/40),
                                                  color: HexColor("#2ECC71"),
                                                  child: Icon(Icons.close_rounded, color: Colors.white, size: queryData.size.width/15),
                                                ),
                                              ],
                                            ),
                                          )
                                        )
                                      ],
                                    ),
                                  ),
                                )
                              );
                            },
                            shape: CircleBorder(),
                            padding: EdgeInsets.all(queryData.size.width/40),
                            color: HexColor("#2ECC71"),
                            child: Icon(Icons.menu_rounded, color: Colors.white, size: queryData.size.width/15),
                          ),
                          SizedBox(height: queryData.size.height/90),
                          Text("Menu", style: TextStyle(
                            fontSize: queryData.size.width/30,
                            fontFamily: "Avenir",
                            color: Colors.black.withOpacity(0.7),
                            fontWeight: FontWeight.w500
                          ))
                        ],
                      ),
                      Column(
                        children: [
                          RaisedButton(
                            onPressed: (){
                              showDialog(
                                context: context,
                                builder: (context) => new Container(
                                  height: queryData.size.height*1,
                                  width: queryData.size.width*1,
                                  child: Stack(
                                    children: [
                                      Positioned(
                                        bottom: 120,
                                        right: 30,
                                        child: Container(
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius: BorderRadius.circular(20)
                                          ),
                                          child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              FlatButton(
                                                onPressed: (){},
                                                child: Row(
                                                  mainAxisAlignment: MainAxisAlignment.start,
                                                  children: [
                                                    Icon(Icons.person_pin, color: Colors.black.withOpacity(0.5)),
                                                    SizedBox(width: queryData.size.width/50),
                                                    Text("Profil saya".toUpperCase(), style: TextStyle(
                                                      color: Colors.black.withOpacity(0.5),
                                                      fontFamily: "Avenir",
                                                      fontWeight: FontWeight.bold
                                                    ),)
                                                  ],
                                                ),
                                              ),
                                              FlatButton(
                                                onPressed: (){},
                                                child: Row(
                                                  mainAxisAlignment: MainAxisAlignment.start,
                                                  children: [
                                                    Icon(Icons.settings_rounded, color: Colors.black.withOpacity(0.5)),
                                                    SizedBox(width: queryData.size.width/50),
                                                    Text("Pengaturan".toUpperCase(), style: TextStyle(
                                                      color: Colors.black.withOpacity(0.5),
                                                      fontFamily: "Avenir",
                                                      fontWeight: FontWeight.bold
                                                    ),)
                                                  ],
                                                ),
                                              ),
                                              FlatButton(
                                                onPressed: (){},
                                                child: Row(
                                                  mainAxisAlignment: MainAxisAlignment.start,
                                                  children: [
                                                    Icon(Icons.logout, color: Colors.black.withOpacity(0.5)),
                                                    SizedBox(width: queryData.size.width/50),
                                                    Text("Keluar".toUpperCase(), style: TextStyle(
                                                      color: Colors.black.withOpacity(0.5),
                                                      fontFamily: "Avenir",
                                                      fontWeight: FontWeight.bold
                                                    ),)
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        )
                                      )
                                    ],
                                  ),
                                )
                              );
                            },
                            shape: CircleBorder(),
                            padding: EdgeInsets.all(queryData.size.width/40),
                            color: HexColor("#2ECC71"),
                            child: Icon(Icons.person, color: Colors.white, size: queryData.size.width/15),
                          ),
                          SizedBox(height: queryData.size.height/90),
                          Text("Profil", style: TextStyle(
                            fontSize: queryData.size.width/30,
                            fontFamily: "Avenir",
                            color: Colors.black.withOpacity(0.7),
                            fontWeight: FontWeight.w500
                          ))
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ]
          )
        )
      ),
    );
  }
}

class MyBehavior extends ScrollBehavior {
  @override
  Widget buildViewportChrome(
      BuildContext context, Widget child, AxisDirection axisDirection) {
    return child;
  }
}