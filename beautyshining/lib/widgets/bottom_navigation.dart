import 'package:beautyshining/pages/favorite_page.dart';
import 'package:beautyshining/pages/shop_page.dart';
import 'package:fancy_bottom_navigation/fancy_bottom_navigation.dart';
import 'package:beautyshining/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:beautyshining/common/style.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({ Key? key }) : super(key: key);

  @override
  _BottomNavigationState createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int currentPage = 1;
  GlobalKey bottomNavigationKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _getPage(currentPage),
      ),
      bottomNavigationBar: FancyBottomNavigation(
        tabs: [
          TabData(
              iconData: Icons.favorite,
              title: "Favorite",
              onclick: () => Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => HomePage()))
          ),
          TabData(
              iconData: Icons.home,
              title: "Home",
              onclick: () => Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => HomePage()))
          ),
          TabData(
              iconData: Icons.local_mall,
              title: "Shop",
              onclick: () => Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => HomePage()))
          ),
        ],
        initialSelection: 1,
        key: bottomNavigationKey,
        activeIconColor: ColorStyles.primaryColor,
        inactiveIconColor: ColorStyles.secondaryColor,
        circleColor: ColorStyles.secondaryColor,
        onTabChangedListener: (position) {
          setState(() {
            currentPage = position;
          });
        },
      ),
    );
  }

  _getPage(int page) {
    switch (page) {
      case 0:
        return FavoritePage();
      case 1:
        return HomePage();
      case 2:
        return ShopPage();
    }
  }
}
