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

    String akunSantri = "ustadz.png";
    // String namaSantri = "Arrizal Bintang R.";
    String peringatan1 = "belum menyelesaikan hafalan";
    String peringatan2 = "belum mengumpulkan laptop";
    String waktu = "Kemarin";

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        accentColor: HexColor("#2ECC71"),
        accentColorBrightness: Brightness.light,
      ),
      home: Scaffold(
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
        body: ListView(
          children: [
            NotifSantri(queryData: queryData, akunSantri: akunSantri, namaSantri: "Arrizal Bintang R.", peringatan1: peringatan1, waktu: waktu),
            NotifSantri(queryData: queryData, akunSantri: akunSantri, namaSantri: "Yusuf M. Edward", peringatan1: peringatan2, waktu: waktu),
            NotifSantri(queryData: queryData, akunSantri: akunSantri, namaSantri: "Abdullah Said M.", peringatan1: peringatan1, waktu: waktu),
            NotifSantri(queryData: queryData, akunSantri: akunSantri, namaSantri: "M. Naufal Farros", peringatan1: peringatan1, waktu: waktu),
            NotifSantri(queryData: queryData, akunSantri: akunSantri, namaSantri: "A. Khaidir M.", peringatan1: peringatan2, waktu: waktu),
            NotifSantri(queryData: queryData, akunSantri: akunSantri, namaSantri: "Ridwan Firdaus", peringatan1: peringatan1, waktu: waktu),
            NotifSantri(queryData: queryData, akunSantri: akunSantri, namaSantri: "M. Rifky Hidayatullah", peringatan1: peringatan1, waktu: waktu),
            NotifSantri(queryData: queryData, akunSantri: akunSantri, namaSantri: "M. Giri", peringatan1: peringatan2, waktu: waktu),
          ],
        ),
      ),
    );
  }
}

class NotifSantri extends StatelessWidget {
  const NotifSantri({
    Key key,
    @required this.queryData,
    @required this.akunSantri,
    @required this.namaSantri,
    @required this.peringatan1,
    @required this.waktu,
  }) : super(key: key);

  final MediaQueryData queryData;
  final String akunSantri;
  final String namaSantri;
  final String peringatan1;
  final String waktu;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Stack(
        children: [
          Container(
            width: queryData.size.width/6,
            height: queryData.size.height/5,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: AssetImage("assets/icons/$akunSantri")
              )
            ),
          ),
          Positioned(
            top: 0,
            right: queryData.size.width/95,
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
      title: Text(namaSantri + " " + peringatan1 + "\n", style: TextStyle(
        fontSize: queryData.size.width/25,
        fontFamily: "Avenir",
        fontWeight: FontWeight.w500,
        color: Colors.black,
      ),),
      subtitle: Text(waktu, style: TextStyle(
        fontSize: queryData.size.width/30,
        color: Colors.grey,
        fontFamily: "Avenir",
        fontWeight: FontWeight.w500
      )),
      isThreeLine: true,
      contentPadding: EdgeInsets.symmetric(horizontal: queryData.size.width/25, vertical: queryData.size.height/50),
      onTap: (){},
    );
  }
}