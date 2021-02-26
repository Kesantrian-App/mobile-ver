part of '../uiskesantrian.dart';

class HolaqohKes extends StatefulWidget {
  @override
  _HolaqohKesState createState() => _HolaqohKesState();
}

class _HolaqohKesState extends State<HolaqohKes> {
  @override
  Widget build(BuildContext context) {
    MediaQueryData queryData;
    queryData = MediaQuery.of(context);

    Color primaryColor = HexColor("#2ECC71");

    // String namaSantri = "Arrizal Bintang";
    String kelasSantri = "Kelas XII";
    String jurusan = "Rekayasa Perangkat Lunak";
    String gambarAkun = "ustadz.png";

    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: queryData.size.width,
            height: queryData.size.height,
            decoration: BoxDecoration(
              color: primaryColor
            ),
          ),
          Container(
            width: queryData.size.width,
            height: queryData.size.height*0.3,
            padding: EdgeInsets.only(top: queryData.size.height/20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    FlatButton(
                      splashColor: Colors.transparent,
                      highlightColor: Colors.green[800].withOpacity(0.3),
                      color: Colors.white.withOpacity(0.3),
                      child: Icon(
                        Icons.arrow_back_ios_rounded,
                        color: Colors.white,
                        size: 20,
                      ),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      shape: CircleBorder(),
                    ),
                    Container(
                      padding: EdgeInsets.only(left: queryData.size.width/10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Holaqoh", style: TextStyle(
                            fontSize: queryData.size.width/10,
                            fontFamily: "Avenir",
                            fontWeight: FontWeight.bold,
                            color: Colors.white
                          )),
                          Text("Ustadz Ahlal", style: TextStyle(
                            fontSize: queryData.size.width/20,
                            fontFamily: "Avenir",
                            fontWeight: FontWeight.bold,
                            color: Colors.white
                          )),
                        ],
                      ),
                    ),
                  ],
                ),
                Container(
                  width: queryData.size.width/3,
                  height: queryData.size.height/5,
                  child: Stack(
                    children: [
                      Positioned(
                        right: queryData.size.width/-8,
                        child: Container(
                          width: queryData.size.width/2,
                          height: queryData.size.height/5,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage("assets/icons/holaqohkes.png")
                            )
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          Positioned(
            bottom: 0,
            child: Container(
              width: queryData.size.width,
              height: queryData.size.height*0.7,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(50)
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.white.withOpacity(0.5),
                    spreadRadius: 10,
                    blurRadius: 0,
                    offset: Offset(10, -15)
                  ),
                ],
              ),
              padding: EdgeInsets.only(top: queryData.size.height/50),
              child: ScrollConfiguration(
                behavior: MyBehavior(),
                child: ListView(
                  children: [
                    AkunSantri(queryData: queryData, gambarAkun: gambarAkun, namaSantri: "Arkan Adil", kelasSantri: kelasSantri, jurusan: jurusan),
                    AkunSantri(queryData: queryData, gambarAkun: gambarAkun, namaSantri: "Farhan Khosyi", kelasSantri: kelasSantri, jurusan: jurusan),
                    AkunSantri(queryData: queryData, gambarAkun: gambarAkun, namaSantri: "Haikal Faruq", kelasSantri: kelasSantri, jurusan: jurusan),
                    AkunSantri(queryData: queryData, gambarAkun: gambarAkun, namaSantri: "Hanif Fadhlu", kelasSantri: kelasSantri, jurusan: jurusan),
                    AkunSantri(queryData: queryData, gambarAkun: gambarAkun, namaSantri: "Faiz Hasan", kelasSantri: kelasSantri, jurusan: jurusan),
                    AkunSantri(queryData: queryData, gambarAkun: gambarAkun, namaSantri: "Hanif Lathon", kelasSantri: kelasSantri, jurusan: jurusan),
                    AkunSantri(queryData: queryData, gambarAkun: gambarAkun, namaSantri: "M. Rifky", kelasSantri: kelasSantri, jurusan: jurusan),
                    AkunSantri(queryData: queryData, gambarAkun: gambarAkun, namaSantri: "Ridwan F.", kelasSantri: kelasSantri, jurusan: jurusan),
                    AkunSantri(queryData: queryData, gambarAkun: gambarAkun, namaSantri: "Rafi Mahindra", kelasSantri: kelasSantri, jurusan: jurusan),
                    AkunSantri(queryData: queryData, gambarAkun: gambarAkun, namaSantri: "Raqhib Hamdi", kelasSantri: kelasSantri, jurusan: jurusan),
                    AkunSantri(queryData: queryData, gambarAkun: gambarAkun, namaSantri: "Fajri M. Razan", kelasSantri: kelasSantri, jurusan: jurusan),
                  ],
                ),
              )
            ),
          )
        ],
      ),
    );
  }
}

class AkunSantri extends StatelessWidget {
  const AkunSantri({
    Key key,
    @required this.queryData,
    @required this.gambarAkun,
    @required this.namaSantri,
    @required this.kelasSantri,
    @required this.jurusan,
  }) : super(key: key);

  final MediaQueryData queryData;
  final String gambarAkun;
  final String namaSantri;
  final String kelasSantri;
  final String jurusan;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        width: queryData.size.width/5,
        height: queryData.size.height/5,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          image: DecorationImage(
            image: AssetImage("assets/icons/$gambarAkun")
          )
        ),
      ),
      title: Text(namaSantri, style: TextStyle(
        fontSize: queryData.size.width/18,
        fontWeight: FontWeight.bold,
        fontFamily: "Avenir",
        color: HexColor("#2ab967")
      )),
      subtitle: Text(kelasSantri + " • " + jurusan, style: TextStyle(
        fontSize: queryData.size.width/32,
        fontWeight: FontWeight.bold,
        fontFamily: "Avenir",
        color: Colors.grey[800]
      )),
      onTap: (){},
    );
  }
}