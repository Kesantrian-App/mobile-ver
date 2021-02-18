part of '../uis.dart';

class IzinGadget extends StatefulWidget {
  @override
  _IzinGadgetState createState() => _IzinGadgetState();
}

class _IzinGadgetState extends State<IzinGadget> {
  int bottomPemilihanSelect = 0;

  List<BottomNavigationBarItem> buildBottomNavBarItems() {
    return [
      BottomNavigationBarItem(
        icon: Icon(Icons.laptop_chromebook_rounded),
        // ignore: deprecated_member_use
        title: Text("Laptop")
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.phone_android_rounded),
        // ignore: deprecated_member_use
        title: Text("Handphone")
      ),
    ];
  }

  PageController pageController = PageController(
    initialPage: 0,
    keepPage: true,
  );

  
  void pageChanged(int index) {
    setState(() {
      bottomPemilihanSelect = index;
    });
  }

  Widget buildPageView() {
    return ScrollConfiguration(
      behavior: MyBehavior(),
      child: PageView(
        controller: pageController,
        onPageChanged: (index) {
          pageChanged(index);
        },
        children: <Widget>[
          Laptop(),
          Handphone()
        ],
      ),
    );
  }

  @override
  void initState() {
    super.initState();
  }

  void bottomTapped(int index) {
    setState(() {
      bottomPemilihanSelect = index;
      pageController.animateToPage(index, duration: Duration(milliseconds: 500), curve: Curves.ease);
    });
  }

  @override
  Widget build(BuildContext context) {
    MediaQueryData queryData;
    queryData = MediaQuery.of(context);

    return Scaffold(
      body: buildPageView(),
      extendBody: true,
      bottomNavigationBar: 
        Container(
          margin: EdgeInsets.symmetric(horizontal: queryData.size.width / 8, vertical: 45.0),
          padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(300.0),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.2),
                spreadRadius: 1,
                blurRadius: 10,
                offset: Offset(1, 2),
              ),
            ],
          ),
          child: Container(
            child: GNav(
                  gap: 8,
                  activeColor: Colors.white,
                  color: HexColor("2ECC71"),
                  iconSize: 24,
                  padding: EdgeInsets.symmetric(horizontal: queryData.size.width / 20, vertical: 5),
                  duration: Duration(milliseconds: 800),
                  tabBackgroundColor: HexColor("2ECC71"),
                  tabs: [
                    GButton(
                      icon: Icons.laptop_chromebook_rounded,
                      text: 'Laptop',
                      textStyle: TextStyle(fontFamily: "Avenir", color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                    GButton(
                      icon: Icons.phone_android_rounded,
                      text: 'Handphone',
                      textStyle: TextStyle(fontFamily: "Avenir", color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ],
                  selectedIndex: bottomPemilihanSelect,
                  onTabChange: (index) {
                    bottomTapped(index);
                  }),
          ),
        ),
    );
  }
}

class Laptop extends StatefulWidget {
  @override
  _LaptopState createState() => _LaptopState();
}

class _LaptopState extends State<Laptop> {
  @override
  Widget build(BuildContext context) {
    MediaQueryData queryData;
    queryData = MediaQuery.of(context);
    
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
      ),
      child: Stack(
        children: [
          Positioned(
            bottom: -45,
            left: 0,
            child: Container(
                  width: MediaQuery.of(context).size.width * 0.85,
                  height: MediaQuery.of(context).size.height * 0.5,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/image/bglaptopui.png")
                    )
                  ),
                ),
          ),
          Container(
            child: Column(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width * 1,
                  height: MediaQuery.of(context).size.height * 0.5,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/image/bglaptop.png")
                    )
                  ),
                ),
                Center( 
                  child: RichText(
                    text: TextSpan(
                      text: 'Selamat Datang di ',
                      style: TextStyle(fontSize: queryData.size.width / 20, fontFamily: "Noto", color: Colors.grey[900], fontWeight: FontWeight.bold),
                      children: <TextSpan>[
                        TextSpan(text: 'Perizinan Laptop', style: TextStyle(fontWeight: FontWeight.w500)),
                      ],
                    ),
                    textAlign: TextAlign.center,
                  )
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.01),
                Text("Last borrowed: Sabtu, 20 Januari 2021", style: TextStyle(fontSize: queryData.size.width / 30, fontFamily: "Noto", color: Colors.grey, fontWeight: FontWeight.w500)),
                SizedBox(height: MediaQuery.of(context).size.height * 0.05),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 50.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100.0),
                    boxShadow: [
                      BoxShadow(
                        color: HexColor("2ECC71").withOpacity(0.2),
                        spreadRadius: 5,
                        blurRadius: 10,
                        offset: Offset(1, 8),
                      ),
                    ],
                  ),
                  child: RaisedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/izinlaptop');
                    },
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(100.0)),
                    padding: EdgeInsets.all(0.0),
                    child: Ink(
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                              begin: Alignment.centerLeft,
                              end: Alignment.centerRight,
                              colors: [
                                HexColor("2ECC71"),
                                HexColor("#54d88d"),
                              ]),
                          borderRadius: BorderRadius.circular(100.0)),
                      child: Container(
                        constraints: const BoxConstraints(
                            minWidth: 88.0, minHeight: 60.0),
                        alignment: Alignment.center,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.laptop_chromebook_rounded, color: Colors.white, size: 20,),
                            SizedBox(width: MediaQuery.of(context).size.width * 0.015,),
                            Text("Pinjam Laptop",
                              style: TextStyle(
                                  fontFamily: "Noto",
                                  fontSize: 15,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.white)),
                          ],
                        )
                      ),
                    ),
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                Container(
                  width: MediaQuery.of(context).size.width * 0.4,
                  child: RawMaterialButton(
                    splashColor: Colors.transparent,
                    highlightColor: Colors.grey.withOpacity(0.3),
                    onPressed: (){
                      Navigator.pop(context);
                    },
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(100.0)
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.home_outlined, color: Colors.grey, size: 20,),
                        SizedBox(width: MediaQuery.of(context).size.width * 0.015,),
                        Text("Go to Homepage",
                          style: TextStyle(
                              fontFamily: "Noto",
                              fontSize: 13,
                              fontWeight: FontWeight.w400,
                              color: Colors.grey)),
                      ],
                    ),
                  ),
                )
              ],
            )
          ),
        ],
      ),
    );
  }
}

class Handphone extends StatefulWidget {
  @override
  _HandphoneState createState() => _HandphoneState();
}

class _HandphoneState extends State<Handphone> {
  @override
  Widget build(BuildContext context) {
    MediaQueryData queryData;
    queryData = MediaQuery.of(context);
    
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
      ),
      child: Stack(
        children: [
          Positioned(
            bottom: -45,
            right: 0,
            child: Container(
                  width: MediaQuery.of(context).size.width * 0.85,
                  height: MediaQuery.of(context).size.height * 0.5,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/image/bgandroidui.png")
                    )
                  ),
                ),
          ),
          Container(
            child: Column(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width * 1,
                  height: MediaQuery.of(context).size.height * 0.5,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/image/bgandroid.png")
                    )
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: queryData.size.width / 20),
                  alignment: Alignment.center,
                  child: RichText(
                    text: TextSpan(
                      text: 'Selamat Datang di ',
                      style: TextStyle(fontSize: queryData.size.width / 20, fontFamily: "Noto", color: Colors.grey[900], fontWeight: FontWeight.bold),
                      children: <TextSpan>[
                        TextSpan(text: 'Perizinan Handphone', style: TextStyle(fontWeight: FontWeight.w500)),
                      ],
                    ),
                    textAlign: TextAlign.center,
                  )
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.01),
                Text("Last borrowed: Sabtu, 20 Januari 2021", style: TextStyle(fontSize: queryData.size.width / 30, fontFamily: "Noto", color: Colors.grey, fontWeight: FontWeight.w500)),
                SizedBox(height: MediaQuery.of(context).size.height * 0.05),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 50.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100.0),
                    boxShadow: [
                      BoxShadow(
                        color: HexColor("2ECC71").withOpacity(0.2),
                        spreadRadius: 5,
                        blurRadius: 10,
                        offset: Offset(1, 8),
                      ),
                    ],
                  ),
                  child: RaisedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/izinhp');
                    },
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(100.0)),
                    padding: EdgeInsets.all(0.0),
                    elevation: 0,
                    child: Ink(
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                              begin: Alignment.centerLeft,
                              end: Alignment.centerRight,
                              colors: [
                                HexColor("2ECC71"),
                                HexColor("#54d88d"),
                              ]),
                          borderRadius: BorderRadius.circular(100.0)),
                      child: Container(
                        constraints: const BoxConstraints(
                            minWidth: 88.0, minHeight: 60.0),
                        alignment: Alignment.center,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.phone_android_rounded, color: Colors.white, size: 20,),
                            SizedBox(width: MediaQuery.of(context).size.width * 0.015,),
                            Text("Pinjam Handphone",
                              style: TextStyle(
                                  fontFamily: "Noto",
                                  fontSize: 15,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.white)),
                          ],
                        )
                      ),
                    ),
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                Container(
                  width: MediaQuery.of(context).size.width * 0.4,
                  child: RawMaterialButton(
                    splashColor: Colors.transparent,
                    highlightColor: Colors.grey.withOpacity(0.3),
                    onPressed: (){
                      Navigator.pop(context);
                    },
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(100.0)
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.home_outlined, color: Colors.grey, size: 20,),
                        SizedBox(width: MediaQuery.of(context).size.width * 0.015,),
                        Text("Go to Homepage",
                          style: TextStyle(
                              fontFamily: "Noto",
                              fontSize: 13,
                              fontWeight: FontWeight.w400,
                              color: Colors.grey)),
                      ],
                    ),
                  ),
                )
              ],
            )
          ),
        ],
      ),
    );
  }
}