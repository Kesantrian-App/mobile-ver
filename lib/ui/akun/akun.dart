part of '../uis.dart';

class Akun extends StatefulWidget {
  @override
  _AkunState createState() => _AkunState();
}

class _AkunState extends State<Akun> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: <Widget>[
            Container(
              width: MediaQuery.of(context).size.width * 1,
              height: MediaQuery.of(context).size.height * 1.1,
              decoration: BoxDecoration(color: Colors.grey[100]),
            ),
            Container(
                width: MediaQuery.of(context).size.width * 1,
                height: MediaQuery.of(context).size.height * 0.3,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [HexColor("#2ECC71"), HexColor("#82caa0")]),
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(30),
                      bottomRight: Radius.circular(30)),
                ),
                padding: EdgeInsets.all(20),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                        width: MediaQuery.of(context).size.width * 0.1,
                        height: MediaQuery.of(context).size.height * 0.1,
                        child: FlatButton(
                          child: Icon(
                            Icons.arrow_back_ios,
                            color: Colors.white,
                            size: 20,
                          ),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          shape: CircleBorder(),
                        )),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.7,
                      height: MediaQuery.of(context).size.height * 0.1,
                      alignment: Alignment.center,
                      child: Text(
                        "Profil Siswa",
                        style: TextStyle(
                            fontFamily: "Avenir",
                            fontSize: 18,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                )),
            Positioned(
              top: 130,
              left: 20.0,
              right: 20.0,
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    gradient: LinearGradient(
                        begin: Alignment.topRight,
                        end: Alignment.bottomLeft,
                        colors: [HexColor("#f7f9fc"), Colors.white])),
                child: Column(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(top: 20),
                      padding: EdgeInsets.all(3),
                      width: MediaQuery.of(context).size.width * 0.2,
                      height: MediaQuery.of(context).size.height * 0.11,
                      decoration: BoxDecoration(
                        border:
                            Border.all(color: HexColor("#2ecc71"), width: 3),
                        borderRadius: BorderRadius.all(Radius.circular(300.0)),
                        color: Colors.white,
                      ),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius:
                              BorderRadius.all(Radius.circular(300.0)),
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage("assets/image/akun2.jpg")),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 20),
                      child: Text("Arrizal Bintang Ramadhan",
                          style: TextStyle(
                              fontFamily: "Avenir",
                              fontSize: 17,
                              fontWeight: FontWeight.w500)),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 5, bottom: 30),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            padding: EdgeInsets.all(5),
                            margin: EdgeInsets.all(3),
                            decoration: BoxDecoration(
                                color: Colors.red,
                                borderRadius: BorderRadius.circular(8.0)),
                            child: Text("Kelas XII",
                                style: TextStyle(
                                    fontFamily: "Avenir",
                                    fontSize: 11,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.white)),
                          ),
                          Container(
                            padding: EdgeInsets.all(5),
                            margin: EdgeInsets.all(3),
                            decoration: BoxDecoration(
                                color: Colors.blue,
                                borderRadius: BorderRadius.circular(8.0)),
                            child: Text("Rekayasa Perangkat Lunak",
                                style: TextStyle(
                                    fontFamily: "Avenir",
                                    fontSize: 11,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.white)),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            Positioned(
              top: 380,
              left: 20.0,
              right: 20.0,
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    gradient: LinearGradient(
                        begin: Alignment.topRight,
                        end: Alignment.bottomLeft,
                        colors: [HexColor("#f7f9fc"), Colors.white])),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                      Container(
                        margin:
                            EdgeInsets.symmetric(horizontal: 10, vertical: 30),
                        padding: EdgeInsets.all(3),
                        width: MediaQuery.of(context).size.width * 0.16,
                        height: MediaQuery.of(context).size.height * 0.09,
                        decoration: BoxDecoration(
                          border:
                              Border.all(color: HexColor("#2ecc71"), width: 3),
                          borderRadius:
                              BorderRadius.all(Radius.circular(300.0)),
                          color: Colors.white,
                        ),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.all(Radius.circular(300.0)),
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage("assets/image/akun2.jpg")),
                          ),
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.5,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Arrizal Bintang",
                                style: TextStyle(
                                    fontFamily: "Avenir",
                                    fontSize: 17,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black)),
                            Row(
                              children: [
                                Container(
                                  margin: EdgeInsets.only(top: 3, right: 2),
                                  child: Icon(
                                    Icons.location_on,
                                    color: Colors.blue[300],
                                    size: 15,
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(top: 5),
                                  child: Text("SMK Madinatulquran",
                                      style: TextStyle(
                                          fontFamily: "Avenir",
                                          fontSize: 10,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.grey)),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Container(
                          width: MediaQuery.of(context).size.width * 0.12,
                          height: MediaQuery.of(context).size.height * 0.08,
                          child: FlatButton(
                            child: Icon(
                              Icons.edit,
                              color: HexColor("#4ad64f"),
                              size: 25,
                            ),
                            onPressed: () {},
                            shape: CircleBorder(),
                            color: Colors.white,
                            splashColor: Colors.grey[200],
                            highlightColor: Colors.grey[100],
                          )),
                    ]),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 35),
                      child: Row(
                        children: <Widget>[
                          Container(
                            width: MediaQuery.of(context).size.width * 0.37,
                            height: MediaQuery.of(context).size.height * 0.21,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("NISN",
                                    style: TextStyle(
                                        fontFamily: "Avenir",
                                        fontSize: 11,
                                        color: Colors.grey,
                                        fontWeight: FontWeight.w500)),
                                SizedBox(height: 5),
                                Text("002312341232",
                                    style: TextStyle(
                                        fontFamily: "Avenir",
                                        fontSize: 15,
                                        fontWeight: FontWeight.w500)),
                                SizedBox(height: 20),
                                Text("Email",
                                    style: TextStyle(
                                        fontFamily: "Avenir",
                                        fontSize: 11,
                                        color: Colors.grey,
                                        fontWeight: FontWeight.w500)),
                                SizedBox(height: 5),
                                Text("abr@distro.co.id",
                                    style: TextStyle(
                                        fontFamily: "Avenir",
                                        fontSize: 15,
                                        fontWeight: FontWeight.w500)),
                                SizedBox(height: 20),
                                Text("Nama Ayah",
                                    style: TextStyle(
                                        fontFamily: "Avenir",
                                        fontSize: 11,
                                        color: Colors.grey,
                                        fontWeight: FontWeight.w500)),
                                SizedBox(height: 5),
                                Text("Abi",
                                    style: TextStyle(
                                        fontFamily: "Avenir",
                                        fontSize: 15,
                                        fontWeight: FontWeight.w500)),
                              ],
                            ),
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width * 0.4,
                            height: MediaQuery.of(context).size.height * 0.22,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Kelahiran",
                                    style: TextStyle(
                                        fontFamily: "Avenir",
                                        fontSize: 11,
                                        color: Colors.grey,
                                        fontWeight: FontWeight.w500)),
                                SizedBox(height: 5),
                                Text("Malang, 09 Agustus 2003",
                                    style: TextStyle(
                                        fontFamily: "Avenir",
                                        fontSize: 15,
                                        fontWeight: FontWeight.w500)),
                                SizedBox(height: 20),
                                Text("Tahun Ajaran",
                                    style: TextStyle(
                                        fontFamily: "Avenir",
                                        fontSize: 11,
                                        color: Colors.grey,
                                        fontWeight: FontWeight.w500)),
                                SizedBox(height: 5),
                                Text("2020/2021",
                                    style: TextStyle(
                                        fontFamily: "Avenir",
                                        fontSize: 15,
                                        fontWeight: FontWeight.w500)),
                                SizedBox(height: 20),
                                Text("Nama Ibu",
                                    style: TextStyle(
                                        fontFamily: "Avenir",
                                        fontSize: 11,
                                        color: Colors.grey,
                                        fontWeight: FontWeight.w500)),
                                SizedBox(height: 5),
                                Text("Ummi",
                                    style: TextStyle(
                                        fontFamily: "Avenir",
                                        fontSize: 15,
                                        fontWeight: FontWeight.w500)),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                        padding: EdgeInsets.symmetric(horizontal: 35),
                        width: MediaQuery.of(context).size.width * 1,
                        height: MediaQuery.of(context).size.height * 0.2,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 20),
                            Text("Alamat Sekolah",
                                style: TextStyle(
                                    fontFamily: "Avenir",
                                    fontSize: 11,
                                    color: Colors.grey,
                                    fontWeight: FontWeight.w500)),
                            SizedBox(height: 5),
                            Text(
                                "Kp. Kebon Kelapa RT. 002/011 Desa Singasari Kecamatan Jonggol Kabupaten Bogor - Jawa Barat 16830",
                                style: TextStyle(
                                    fontFamily: "Avenir",
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500)),
                          ],
                        )),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
