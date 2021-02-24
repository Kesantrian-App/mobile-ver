part of '../uiskesantrian.dart';

class Pengumuman extends StatefulWidget {
  @override
  _PengumumanState createState() => _PengumumanState();
}

class _PengumumanState extends State<Pengumuman> {
  @override
  Widget build(BuildContext context) {
    MediaQueryData queryData;
    queryData = MediaQuery.of(context);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: HexColor("#2ECC71"),
        centerTitle: true,
        title: Text("Pengumuman".toUpperCase(), style: TextStyle(
          fontFamily: "Avenir",
          letterSpacing: -0.5,
          fontWeight: FontWeight.bold,
          color: Colors.white,
          fontSize: queryData.size.width/18
        ),),
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_rounded, color: Colors.white),
          onPressed: (){
            Navigator.pop(context);
          },
          tooltip: "Kembali",
        ),
      ),
      body: Container(
        child: ListView(
          children: [
            ListTile(
              leading: Stack(
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage("assets/image/akun2.jpg"),
                  ),
                  Positioned(
                    top: -5,
                    right: 0,
                    child: Container(
                      width: queryData.size.width/30,
                      height: queryData.size.height/30,
                      decoration: BoxDecoration(
                        color: Colors.red,
                        shape: BoxShape.circle
                      ),
                    ),
                  )
                ],
              ),
              title: Text("Arrizal Bintang R. mempunyai hutang hafalan. Ayo lunaskan!\n", style: TextStyle(
                fontSize: queryData.size.width/25,
                fontFamily: "Avenir",
                fontWeight: FontWeight.w500,
                color: Colors.black,
              ),),
              subtitle: Text("Kemarin", style: TextStyle(
                fontSize: queryData.size.width/30,
                color: Colors.grey,
                fontFamily: "Avenir",
                fontWeight: FontWeight.w500
              )),
              isThreeLine: true,
              contentPadding: EdgeInsets.symmetric(horizontal: queryData.size.width/30, vertical: queryData.size.height/50),
              onTap: (){},
            ),
            ListTile(
              leading: Stack(
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage("assets/image/akun2.jpg"),
                  ),
                  Positioned(
                    top: -5,
                    right: 0,
                    child: Container(
                      width: queryData.size.width/30,
                      height: queryData.size.height/30,
                      decoration: BoxDecoration(
                        color: Colors.red,
                        shape: BoxShape.circle
                      ),
                    ),
                  )
                ],
              ),
              title: Text("Arrizal Bintang R. mempunyai hutang hafalan. Ayo lunaskan!\n", style: TextStyle(
                fontSize: queryData.size.width/25,
                fontFamily: "Avenir",
                fontWeight: FontWeight.w500,
                color: Colors.black,
              ),),
              subtitle: Text("Kemarin", style: TextStyle(
                fontSize: queryData.size.width/30,
                color: Colors.grey,
                fontFamily: "Avenir",
                fontWeight: FontWeight.w500
              )),
              isThreeLine: true,
              contentPadding: EdgeInsets.symmetric(horizontal: queryData.size.width/30, vertical: queryData.size.height/50),
              onTap: (){},
            ),
            ListTile(
              leading: Stack(
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage("assets/image/akun2.jpg"),
                  ),
                  Positioned(
                    top: -5,
                    right: 0,
                    child: Container(
                      width: queryData.size.width/30,
                      height: queryData.size.height/30,
                      decoration: BoxDecoration(
                        color: Colors.red,
                        shape: BoxShape.circle
                      ),
                    ),
                  )
                ],
              ),
              title: Text("Arrizal Bintang R. mempunyai hutang hafalan. Ayo lunaskan!\n", style: TextStyle(
                fontSize: queryData.size.width/25,
                fontFamily: "Avenir",
                fontWeight: FontWeight.w500,
                color: Colors.black,
              ),),
              subtitle: Text("Kemarin", style: TextStyle(
                fontSize: queryData.size.width/30,
                color: Colors.grey,
                fontFamily: "Avenir",
                fontWeight: FontWeight.w500
              )),
              isThreeLine: true,
              contentPadding: EdgeInsets.symmetric(horizontal: queryData.size.width/30, vertical: queryData.size.height/50),
              onTap: (){},
            ),

            ListTile(
              leading: Stack(
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage("assets/image/akun2.jpg"),
                  ),
                  Positioned(
                    top: -5,
                    right: 0,
                    child: Container(
                      width: queryData.size.width/30,
                      height: queryData.size.height/30,
                      decoration: BoxDecoration(
                        color: Colors.red,
                        shape: BoxShape.circle
                      ),
                    ),
                  )
                ],
              ),
              title: Text("Arrizal Bintang R. mempunyai hutang hafalan. Ayo lunaskan!\n", style: TextStyle(
                fontSize: queryData.size.width/25,
                fontFamily: "Avenir",
                fontWeight: FontWeight.w500,
                color: Colors.black,
              ),),
              subtitle: Text("Kemarin", style: TextStyle(
                fontSize: queryData.size.width/30,
                color: Colors.grey,
                fontFamily: "Avenir",
                fontWeight: FontWeight.w500
              )),
              isThreeLine: true,
              contentPadding: EdgeInsets.symmetric(horizontal: queryData.size.width/30, vertical: queryData.size.height/50),
              onTap: (){},
            ),
            ListTile(
              leading: Stack(
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage("assets/image/akun2.jpg"),
                  ),
                  Positioned(
                    top: -5,
                    right: 0,
                    child: Container(
                      width: queryData.size.width/30,
                      height: queryData.size.height/30,
                      decoration: BoxDecoration(
                        color: Colors.red,
                        shape: BoxShape.circle
                      ),
                    ),
                  )
                ],
              ),
              title: Text("Arrizal Bintang R. mempunyai hutang hafalan. Ayo lunaskan!\n", style: TextStyle(
                fontSize: queryData.size.width/25,
                fontFamily: "Avenir",
                fontWeight: FontWeight.w500,
                color: Colors.black,
              ),),
              subtitle: Text("Kemarin", style: TextStyle(
                fontSize: queryData.size.width/30,
                color: Colors.grey,
                fontFamily: "Avenir",
                fontWeight: FontWeight.w500
              )),
              isThreeLine: true,
              contentPadding: EdgeInsets.symmetric(horizontal: queryData.size.width/30, vertical: queryData.size.height/50),
              onTap: (){},
            ),
            ListTile(
              leading: Stack(
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage("assets/image/akun2.jpg"),
                  ),
                  Positioned(
                    top: -5,
                    right: 0,
                    child: Container(
                      width: queryData.size.width/30,
                      height: queryData.size.height/30,
                      decoration: BoxDecoration(
                        color: Colors.red,
                        shape: BoxShape.circle
                      ),
                    ),
                  )
                ],
              ),
              title: Text("Arrizal Bintang R. mempunyai hutang hafalan. Ayo lunaskan!\n", style: TextStyle(
                fontSize: queryData.size.width/25,
                fontFamily: "Avenir",
                fontWeight: FontWeight.w500,
                color: Colors.black,
              ),),
              subtitle: Text("Kemarin", style: TextStyle(
                fontSize: queryData.size.width/30,
                color: Colors.grey,
                fontFamily: "Avenir",
                fontWeight: FontWeight.w500
              )),
              isThreeLine: true,
              contentPadding: EdgeInsets.symmetric(horizontal: queryData.size.width/30, vertical: queryData.size.height/50),
              onTap: (){},
            ),
            ListTile(
              leading: Stack(
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage("assets/image/akun2.jpg"),
                  ),
                  Positioned(
                    top: -5,
                    right: 0,
                    child: Container(
                      width: queryData.size.width/30,
                      height: queryData.size.height/30,
                      decoration: BoxDecoration(
                        color: Colors.red,
                        shape: BoxShape.circle
                      ),
                    ),
                  )
                ],
              ),
              title: Text("Arrizal Bintang R. mempunyai hutang hafalan. Ayo lunaskan!\n", style: TextStyle(
                fontSize: queryData.size.width/25,
                fontFamily: "Avenir",
                fontWeight: FontWeight.w500,
                color: Colors.black,
              ),),
              subtitle: Text("Kemarin", style: TextStyle(
                fontSize: queryData.size.width/30,
                color: Colors.grey,
                fontFamily: "Avenir",
                fontWeight: FontWeight.w500
              )),
              isThreeLine: true,
              contentPadding: EdgeInsets.symmetric(horizontal: queryData.size.width/30, vertical: queryData.size.height/50),
              onTap: (){},
            ),
            ListTile(
              leading: Stack(
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage("assets/image/akun2.jpg"),
                  ),
                  Positioned(
                    top: -5,
                    right: 0,
                    child: Container(
                      width: queryData.size.width/30,
                      height: queryData.size.height/30,
                      decoration: BoxDecoration(
                        color: Colors.red,
                        shape: BoxShape.circle
                      ),
                    ),
                  )
                ],
              ),
              title: Text("Arrizal Bintang R. mempunyai hutang hafalan. Ayo lunaskan!\n", style: TextStyle(
                fontSize: queryData.size.width/25,
                fontFamily: "Avenir",
                fontWeight: FontWeight.w500,
                color: Colors.black,
              ),),
              subtitle: Text("Kemarin", style: TextStyle(
                fontSize: queryData.size.width/30,
                color: Colors.grey,
                fontFamily: "Avenir",
                fontWeight: FontWeight.w500
              )),
              isThreeLine: true,
              contentPadding: EdgeInsets.symmetric(horizontal: queryData.size.width/30, vertical: queryData.size.height/50),
              onTap: (){},
            ),
          ],
        ),
      ),
    );
  }
}