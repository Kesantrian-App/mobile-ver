part of '../uiskesantrian.dart';

class ProfilKes extends StatefulWidget {
  @override
  _ProfilKesState createState() => _ProfilKesState();
}

class _ProfilKesState extends State<ProfilKes> {
  @override
  Widget build(BuildContext context) {
    Color colorApp = HexColor("#2ECC71");
    MediaQueryData queryData;
    queryData = MediaQuery.of(context);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        accentColor: colorApp,
        accentColorBrightness: Brightness.light,
      ),
      home: Scaffold(
        body: Stack(
          children: [
            Container(
              width: queryData.size.width,
              height: queryData.size.height,
              decoration: BoxDecoration(
                color: Colors.white
              ),
            ),
            Container(
              width: queryData.size.width,
              height: queryData.size.height* 0.3,
              decoration: BoxDecoration(
                color: colorApp
              ),
            ),
            Positioned(
              bottom: queryData.size.height/50,
              right: queryData.size.width/20,
              child: Text("Nyantren © v1.7", style: TextStyle(
                fontSize: queryData.size.width/35,
                fontFamily: "Avenir",
                fontWeight: FontWeight.bold,
                color: Colors.grey
              )),
            ),
            Container(
              padding: EdgeInsets.only(top: queryData.size.height/15.0),
              width: queryData.size.width * 1,
              child: Column(
                children: [
                  Stack(
                    children: [
                      Container(
                        width: queryData.size.width * 1,
                        height: queryData.size.height * 0.06,
                        alignment: Alignment.center,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("profil".toUpperCase(), style: TextStyle(fontSize: queryData.size.width/15, fontFamily: "Avenir", color: Colors.white, fontWeight: FontWeight.bold, letterSpacing: -0.5)),
                          ],
                        ),
                      ),
                      Positioned(
                        left: queryData.size.width/-60,
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
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: queryData.size.height/30),
                    padding: EdgeInsets.symmetric(vertical: queryData.size.height/40),
                    width: queryData.size.width*0.8,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.3),
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset: Offset(0, 3), // changes position of shadow
                        ),
                      ],
                    ),
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            CircularProfileAvatar(
                              "",
                              child: Image.asset("assets/icons/ustadz.png"),
                              borderColor: colorApp.withOpacity(0.3),
                              borderWidth: 5,
                              radius: 50,
                            ),
                            SizedBox(height: queryData.size.height/50),
                            Text("Ustadz Ahlal", style: TextStyle(
                              fontFamily: "Avenir",
                              fontWeight: FontWeight.bold,
                              fontSize: queryData.size.width/15,
                              color: Colors.black
                            ), textAlign: TextAlign.center),
                            Text("ustadzahlal@gmail.com", style: TextStyle(
                              fontFamily: "Avenir",
                              fontWeight: FontWeight.bold,
                              fontSize: queryData.size.width/30,
                              color: Colors.grey
                            ), textAlign: TextAlign.center),
                          ],
                        ),
                        Positioned(
                          right: queryData.size.width/30,
                          top: 0,
                          child: SizedBox(
                            width: queryData.size.width/10,
                            height: queryData.size.height/25,
                            child: RawMaterialButton(
                              padding: EdgeInsets.zero,
                              splashColor: Colors.transparent,
                              highlightColor: colorApp.withOpacity(0.3),
                              child: Icon(
                                Icons.info_outline,
                                color: colorApp,
                                size: 22,
                              ),
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => InfoProfil()),
                                );
                              },
                              shape: CircleBorder(),
                            ),
                          )
                        ),
                      ],
                    )
                  ),
                  ListTile(
                    contentPadding: EdgeInsets.symmetric(vertical: queryData.size.height/70, horizontal:queryData.size.width/20),
                    leading: Container(
                      width: queryData.size.width/7,
                      height: queryData.size.height/7,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: colorApp
                      ),
                      child: Icon(Icons.settings_rounded, color: Colors.white)
                    ),
                    title: Text("Pengaturan", style: TextStyle(
                      fontSize: queryData.size.width/20,
                      fontFamily: "Avenir",
                      fontWeight: FontWeight.bold,
                      color: Colors.black
                    )),
                    onTap: (){
                      print("tapped");
                    }
                  ),
                  ListTile(
                    contentPadding: EdgeInsets.symmetric(vertical: queryData.size.height/70, horizontal:queryData.size.width/20),
                    leading: Container(
                      width: queryData.size.width/7,
                      height: queryData.size.height/7,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: colorApp
                      ),
                      child: Icon(Icons.notifications_none_rounded, color: Colors.white)
                    ),
                    title: Text("Notification", style: TextStyle(
                      fontSize: queryData.size.width/20,
                      fontFamily: "Avenir",
                      fontWeight: FontWeight.bold,
                      color: Colors.black
                    )),
                    onTap: (){}
                  ),
                  ListTile(
                    contentPadding: EdgeInsets.symmetric(vertical: queryData.size.height/70, horizontal:queryData.size.width/20),
                    leading: Container(
                      width: queryData.size.width/7,
                      height: queryData.size.height/7,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: colorApp
                      ),
                      child: Icon(Icons.edit, color: Colors.white)
                    ),
                    title: Text("Edit Profil", style: TextStyle(
                      fontSize: queryData.size.width/20,
                      fontFamily: "Avenir",
                      fontWeight: FontWeight.bold,
                      color: Colors.black
                    )),
                    onTap: (){}
                  ),
                  ListTile(
                    contentPadding: EdgeInsets.symmetric(vertical: queryData.size.height/70, horizontal:queryData.size.width/20),
                    leading: Container(
                      width: queryData.size.width/7,
                      height: queryData.size.height/7,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: colorApp
                      ),
                      child: Icon(Icons.logout, color: Colors.white)
                    ),
                    title: Text("Log Out", style: TextStyle(
                      fontSize: queryData.size.width/20,
                      fontFamily: "Avenir",
                      fontWeight: FontWeight.bold,
                      color: Colors.black
                    )),
                    onTap: (){}
                  ),
                ],
              )
            ),
          ],
        ),
      ),
    );
  }
}