// part of 'uis.dart';

// class Home extends StatefulWidget {
//   @override
//   _HomeState createState() => _HomeState();
// }

// class _HomeState extends State<Home> {
//   int _pageNow = 0;
//   final List<Widget> _pilihan = [Dashboard(), Akun()];

//   void onTabTapped(int index) {
//     setState(() {
//       _pageNow = index;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
//     return Scaffold(
//       body: _pilihan[_pageNow],
//       bottomNavigationBar: FFNavigationBar(
//           onSelectTab: (index) {
//             setState(() {
//               _pageNow = index;
//             });
//           },
//           items: [
//             FFNavigationBarItem(
//               iconData: Icons.home_filled,
//               label: 'Dashboard',
//             ),
//             FFNavigationBarItem(
//               iconData: Icons.person,
//               label: 'Akun',
//             )
//           ],
//           selectedIndex: _pageNow,
//           theme: FFNavigationBarTheme(
//               barBackgroundColor: Colors.white,
//               selectedItemBorderColor: Colors.green[400],
//               selectedItemBackgroundColor: Colors.green[400],
//               selectedItemIconColor: Colors.white,
//               selectedItemLabelColor: Colors.black,
//               barHeight: 70)),
//     );
//   }
// }
