import 'package:ajheryuk/screens/bottom_screens/discovery_screen.dart';
import 'package:ajheryuk/screens/bottom_screens/menu_screen.dart';
import 'package:ajheryuk/screens/bottom_screens/message_screen.dart';
import 'package:ajheryuk/screens/bottom_screens/profile_screen.dart';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';

class MainScreens extends StatelessWidget {
  static String routName = 'mainScreen';
  MainScreens({Key? key}) : super(key: key);
  PersistentTabController _controller =
      PersistentTabController(initialIndex: 0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PersistentTabView(
        context,
        controller: _controller,

        screens: _buildScreens(),
        items: _navBarsItems(),
        confineInSafeArea: true,
        backgroundColor: Colors.white, // Default is Colors.white.
        handleAndroidBackButtonPress: true, // Default is true.
        resizeToAvoidBottomInset:
            true, // This needs to be true if you want to move up the screen when keyboard appears. Default is true.
        stateManagement: true, // Default is true.
        hideNavigationBarWhenKeyboardShows:
            true, // Recommended to set 'resizeToAvoidBottomInset' as true while using this argument. Default is true.
        decoration: NavBarDecoration(
          borderRadius: BorderRadius.circular(10.0),
          colorBehindNavBar: Colors.white,
        ),
        popAllScreensOnTapOfSelectedTab: true,
        popActionScreens: PopActionScreensType.all,
        itemAnimationProperties: ItemAnimationProperties(
          // Navigation Bar's items animation properties.
          duration: Duration(milliseconds: 200),
          curve: Curves.ease,
        ),
        screenTransitionAnimation: ScreenTransitionAnimation(
          // Screen transition animation on change of selected tab.
          animateTabTransition: true,
          curve: Curves.ease,
          duration: Duration(milliseconds: 200),
        ),
        navBarStyle:
            NavBarStyle.style6, // Choose the nav bar style with this property.
      ),
    );
  }
}

List<Widget> _buildScreens() {
  return [MenuScreen(), DiscoveryScreen(), MessageScreen(), ProfileScreen()];
}

List<PersistentBottomNavBarItem> _navBarsItems() {
  return [
    PersistentBottomNavBarItem(
      icon: SvgPicture.asset('assets/icons/footer/menu.svg'),
      inactiveIcon: SvgPicture.asset('assets/icons/footer/menu_unactive.svg'),
    ),
    PersistentBottomNavBarItem(
      icon: SvgPicture.asset(
        'assets/icons/footer/discover.svg',
      ),
    ),
    PersistentBottomNavBarItem(
      icon: SvgPicture.asset(
        'assets/icons/footer/message_fill.svg',
      ),
      inactiveIcon: SvgPicture.asset(
        'assets/icons/footer/message.svg',
      ),
    ),
    PersistentBottomNavBarItem(
      icon: SvgPicture.asset(
        'assets/icons/footer/profile.svg',
      ),
    ),
  ];
}
// class MainScreens extends StatefulWidget {
//   MainScreens({Key? key}) : super(key: key);

//   @override
//   _MainScreensState createState() => _MainScreensState();
// }

// class _MainScreensState extends State<MainScreens> {
//   int selectedIndex = 0;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: CustomAppBar(
//         context: context,
//       ),
//       body: getBody(),

//       //TODO bottom navigation
//       bottomNavigationBar: BottomNavigationBar(
//         type: BottomNavigationBarType.fixed,
//         currentIndex: selectedIndex,
//         items: <BottomNavigationBarItem>[
//           BottomNavigationBarItem(
//             activeIcon: SvgPicture.asset(
//               'assets/icons/footer/menu.svg',
//             ),
//             icon: SvgPicture.asset(
//               'assets/icons/footer/menu_unactive.svg',
//             ),
//             label: '',
//           ),
//           BottomNavigationBarItem(
//             activeIcon: SvgPicture.asset(
//               'assets/icons/footer/discover.svg',
//               color: AppColor.backgroundRed,
//             ),
//             icon: SvgPicture.asset(
//               'assets/icons/footer/discover.svg',
//             ),
//             label: '',
//           ),
//           BottomNavigationBarItem(
//             activeIcon: SvgPicture.asset(
//               'assets/icons/footer/message_fill.svg',
//             ),
//             icon: SvgPicture.asset(
//               'assets/icons/footer/message.svg',
//             ),
//             label: '',
//           ),
//           BottomNavigationBarItem(
//             activeIcon: SvgPicture.asset(
//               'assets/icons/footer/profile.svg',
//               color: AppColor.backgroundRed,
//             ),
//             icon: SvgPicture.asset(
//               'assets/icons/footer/profile.svg',
//             ),
//             label: '',
//           ),
//         ],
//         onTap: (int index) {
//           this.onTapHandler(index);
//         },
//       ),
//     );
//   }

//   Widget getBody() {
//     if (selectedIndex == 0) {
//       return MainScreens();
//     } else if (selectedIndex == 1) {
//       return DiscoveryScreen();
//     } else if (selectedIndex == 2) {
//       return MessageScreen();
//     } else {
//       return ProfileScreen();
//     }
//   }

//   void onTapHandler(int index) {
//     this.setState(() {
//       selectedIndex = index;
//     });
//   }
// }
