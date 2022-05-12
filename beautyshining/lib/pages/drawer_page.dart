import 'package:beautyshining/common/style.dart';
import 'package:beautyshining/pages/auth_page.dart';
import 'package:beautyshining/pages/shop_page.dart';
import 'package:flutter/material.dart';

class DrawerPage extends StatefulWidget {
  const DrawerPage({ Key? key }) : super(key: key);

  @override
  _DrawerPageState createState() => _DrawerPageState();
}

class _DrawerPageState extends State<DrawerPage> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: ColorStyles.primaryColor,
      child: ListView(
        children: <Widget>[
          UserAccountsDrawerHeader(
            accountName: Text("No Name"),
            currentAccountPicture: CircleAvatar(
              backgroundImage: AssetImage("assets/images/user.png"),
            ),
            accountEmail: Text("Beauty Shining"),
            decoration: BoxDecoration(
              color: ColorStyles.secondaryColor,
            ),
          ),
          DrawerListTile(
            iconData: Icons.home,
            title: "Home",
            onTilePressed: () {},
          ),
          DrawerListTile(
            iconData: Icons.local_mall,
            title: "Shop",
            onTilePressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (_) => ShopPage()));
            },
          ),
          DrawerListTile(
            iconData: Icons.favorite,
            title: "Favorite",
            onTilePressed: () {},
          ),
          DrawerListTile(
            iconData: Icons.info_outline,
            title: "About",
            onTilePressed: () {},
          ),
          DrawerListTile(
            iconData: Icons.logout,
            title: "Logout",
            onTilePressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (_) => LoginPage()));
            },
          ),
        ],
      ),
    );
  }
}

class DrawerListTile extends StatelessWidget {
  final IconData iconData;
  final String title;
  final VoidCallback onTilePressed;

  const DrawerListTile({Key? key, required this.iconData, required this.title, required this.onTilePressed}):super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTilePressed,
      dense: true,
      leading: Icon(iconData),
      title: Text(title, style: TextStyle(fontSize: 16)),
    );
  }
}