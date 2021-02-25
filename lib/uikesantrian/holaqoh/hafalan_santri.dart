part of '../uiskesantrian.dart';

class HafalanSantri extends StatefulWidget {
  @override
  _HafalanSantriState createState() => _HafalanSantriState();
}

class _HafalanSantriState extends State<HafalanSantri> {
  @override
  Widget build(BuildContext context) {
    MediaQueryData queryData;
    queryData = MediaQuery.of(context);

    // String namaSantri = "ArrizalBintang";
    String akunSantri = "ustadz.png";
    String lastSetoran = "25 Desember 2020";
    String lastSurah = "Ath-Thur";
    String lastAyat = "1-10";

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
          title: Text("Hafalan santri".toUpperCase(), style: TextStyle(
            fontFamily: "Avenir",
            letterSpacing: -0.5,
            fontWeight: FontWeight.bold,
            color: Colors.white,
            fontSize: queryData.size.width/18
          ),),
          leading: IconButton(
            icon: Icon(Icons.search, color: Colors.white),
            onPressed: (){},
            tooltip: "Cari",
          ),
          actions: [
            IconButton(
              icon: Icon(Icons.close_rounded, color: Colors.white),
              onPressed: (){
                Navigator.pop(context);
              },
              tooltip: "Tutup",
            ),
          ],
        ),
        body: ListView(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: queryData.size.width/25, vertical: queryData.size.height/35),
              child: Text("Kelas XII", style: TextStyle(
                fontFamily: "Avenir",
                fontSize: queryData.size.width/20,
                fontWeight: FontWeight.bold,
                color: Colors.black
              )),
            ),
            HistorySantri(namaSantri: "Arrizal Bintang R.", queryData: queryData, akunSantri: akunSantri, lastSetoran: lastSetoran, lastSurah: lastSurah, lastAyat: lastAyat),
            HistorySantri(namaSantri: "Yusuf M. Edward", queryData: queryData, akunSantri: akunSantri, lastSetoran: lastSetoran, lastSurah: lastSurah, lastAyat: lastAyat),
            HistorySantri(namaSantri: "M. Naufal Farros", queryData: queryData, akunSantri: akunSantri, lastSetoran: lastSetoran, lastSurah: lastSurah, lastAyat: lastAyat),
            HistorySantri(namaSantri: "Abdullah Said M.", queryData: queryData, akunSantri: akunSantri, lastSetoran: lastSetoran, lastSurah: lastSurah, lastAyat: lastAyat),
            HistorySantri(namaSantri: "A. Khaidir M.", queryData: queryData, akunSantri: akunSantri, lastSetoran: lastSetoran, lastSurah: lastSurah, lastAyat: lastAyat),
            HistorySantri(namaSantri: "M. Rifky Hidayatullah", queryData: queryData, akunSantri: akunSantri, lastSetoran: lastSetoran, lastSurah: lastSurah, lastAyat: lastAyat),
            HistorySantri(namaSantri: "Ridwan Firdaus", queryData: queryData, akunSantri: akunSantri, lastSetoran: lastSetoran, lastSurah: lastSurah, lastAyat: lastAyat),
            HistorySantri(namaSantri: "M. Giri", queryData: queryData, akunSantri: akunSantri, lastSetoran: lastSetoran, lastSurah: lastSurah, lastAyat: lastAyat),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: queryData.size.width/25, vertical: queryData.size.height/35),
              child: Text("Kelas XI", style: TextStyle(
                fontFamily: "Avenir",
                fontSize: queryData.size.width/20,
                fontWeight: FontWeight.bold,
                color: Colors.black
              )),
            ),
            HistorySantri(namaSantri: "M. Jaher", queryData: queryData, akunSantri: akunSantri, lastSetoran: lastSetoran, lastSurah: lastSurah, lastAyat: lastAyat),
            HistorySantri(namaSantri: "Ariq Aslan", queryData: queryData, akunSantri: akunSantri, lastSetoran: lastSetoran, lastSurah: lastSurah, lastAyat: lastAyat),
            HistorySantri(namaSantri: "Fadlan", queryData: queryData, akunSantri: akunSantri, lastSetoran: lastSetoran, lastSurah: lastSurah, lastAyat: lastAyat),
            HistorySantri(namaSantri: "Rifky Hidayat", queryData: queryData, akunSantri: akunSantri, lastSetoran: lastSetoran, lastSurah: lastSurah, lastAyat: lastAyat),
          ],
        ),
        floatingActionButton: SpeedDial(
          marginEnd: queryData.size.width/15,
          marginBottom: queryData.size.height/25,
          animatedIcon: AnimatedIcons.menu_close,
          buttonSize: queryData.size.width/6,
          visible: true,
          closeManually: false,
          renderOverlay: false,
          curve: Curves.bounceIn,
          overlayColor: Colors.black,
          overlayOpacity: 0.4,
          onOpen: () => print('Buka Menu'),
          onClose: () => print('Menu ditutup'),
          tooltip: 'Menu',
          backgroundColor: HexColor("#2ECC71"),
          foregroundColor: Colors.white,
          elevation: 8.0,
          shape: CircleBorder(),
          children: [
            SpeedDialChild(
              child: Icon(Icons.add_rounded),
              backgroundColor: HexColor("#2ECC71"),
              foregroundColor: Colors.white,
              label: 'Tambah Santri',
              labelStyle: TextStyle(
                fontSize: queryData.size.width/25,
                fontWeight: FontWeight.bold,
                fontFamily: "Avenir",
                color: Colors.white
              ),
              labelBackgroundColor: HexColor("#2ECC71"),
              onTap: () => print('Tombol Tambah Santri di Klik'),
            ),
            SpeedDialChild(
              child: Icon(Icons.remove_rounded),
              backgroundColor: HexColor("#2ECC71"),
              foregroundColor: Colors.white,
              label: 'Hapus Santri',
              labelStyle: TextStyle(
                fontSize: queryData.size.width/25,
                fontWeight: FontWeight.bold,
                fontFamily: "Avenir",
                color: Colors.white
              ),
              labelBackgroundColor: HexColor("#2ECC71"),
              onTap: () => print('Tombol Kurangi Santri di Klik'),
            ),
          ],
        ),
      ),
    );
  }
}

class HistorySantri extends StatelessWidget {
  const HistorySantri({
    Key key,
    @required this.namaSantri,
    @required this.queryData,
    @required this.akunSantri,
    @required this.lastSetoran,
    @required this.lastSurah,
    @required this.lastAyat,
  }) : super(key: key);

  final String namaSantri;
  final MediaQueryData queryData;
  final String akunSantri;
  final String lastSetoran;
  final String lastSurah;
  final String lastAyat;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(namaSantri, style: TextStyle(
        fontSize: queryData.size.width/18,
        fontWeight: FontWeight.bold,
        fontFamily: "Avenir",
        color: HexColor("#2ab967")
      )),
      leading: Container(
        width: queryData.size.width/6,
        height: queryData.size.height/5,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          image: DecorationImage(
            image: AssetImage("assets/icons/$akunSantri")
          )
        ),
      ),
      subtitle: RichText(
                  textAlign: TextAlign.start,
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "Setoran Terakhir",
                        style: TextStyle(
                          fontSize: queryData.size.width/32,
                          fontWeight: FontWeight.w500,
                          fontFamily: "Avenir",
                          color: HexColor("#2ab967")),
                      ),
                      TextSpan(
                        text: " • ".toUpperCase(),
                        style: TextStyle(
                          fontSize: queryData.size.width/32,
                          fontWeight: FontWeight.bold,
                          fontFamily: "Avenir",
                          color: Colors.grey[800]),
                      ),
                      TextSpan(
                        text: lastSetoran + "\n",
                        style: TextStyle(
                          fontSize: queryData.size.width/32,
                          fontWeight: FontWeight.w500,
                          fontFamily: "Avenir",
                          color: Colors.black),
                      ),
                      TextSpan(
                        text: "Surah " + lastSurah,
                        style: TextStyle(
                          fontSize: queryData.size.width/32,
                          fontWeight: FontWeight.w500,
                          fontFamily: "Avenir",
                          color: HexColor("#2ab967")),
                      ),
                      TextSpan(
                        text: " • ".toUpperCase(),
                        style: TextStyle(
                          fontSize: queryData.size.width/32,
                          fontWeight: FontWeight.bold,
                          fontFamily: "Avenir",
                          color: Colors.grey[800]),
                      ),
                      TextSpan(
                        text: "Ayat " + lastAyat,
                        style: TextStyle(
                          fontSize: queryData.size.width/32,
                          fontWeight: FontWeight.w500,
                          fontFamily: "Avenir",
                          color: Colors.black),
                      ),
                    ]
                  )
                ),
      contentPadding: EdgeInsets.symmetric(horizontal: queryData.size.width/25),
      isThreeLine: true,
      onTap: (){},
    );
  }
}