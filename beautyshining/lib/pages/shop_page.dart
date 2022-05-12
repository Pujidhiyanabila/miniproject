import 'package:flutter/material.dart';
import 'package:beautyshining/common/style.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({ Key? key }) : super(key: key);

  @override
  _ShopPageState createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Product Category"),
        centerTitle: true,
        backgroundColor: ColorStyles.secondaryColor,
      ),
      backgroundColor: ColorStyles.primaryColor,
      body: Container(
        padding: EdgeInsets.all(30.0),
        child: GridView.count(
          crossAxisCount: 2,
          children: <Widget> [
            Card(
              color: ColorStyles.secondaryColor,
              child: InkWell(
                onTap: () {},
                splashColor: ColorStyles.secondaryColor,
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      CircleAvatar(
                        radius: 60,
                        backgroundImage: AssetImage("assets/images/blush.png"),
                        backgroundColor: ColorStyles.primaryColor,
                      ),
                      FittedBox(child: Text("Blush", style: new TextStyle(fontSize: 18.0)))
                    ],
                  ),
                ),
              ),
            ),
            Card(
              color: ColorStyles.secondaryColor,
              child: InkWell(
                onTap: () {},
                splashColor: ColorStyles.secondaryColor,
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      CircleAvatar(
                        radius: 60,
                        backgroundImage: AssetImage("assets/images/bronzer.png"),
                        backgroundColor: ColorStyles.primaryColor,
                      ),
                      FittedBox(child: Text("Bronzer", style: new TextStyle(fontSize: 18.0)))
                    ],
                  ),
                ),
              ),
            ),
            Card(
              color: ColorStyles.secondaryColor,
              child: InkWell(
                onTap: () {},
                splashColor: ColorStyles.secondaryColor,
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      CircleAvatar(
                        radius: 60,
                        backgroundImage: AssetImage("assets/images/eyebrow.png"),
                        backgroundColor: ColorStyles.primaryColor,
                      ),
                      FittedBox(child: Text("Eyebrow", style: new TextStyle(fontSize: 18.0)))
                    ],
                  ),
                ),
              ),
            ),
            Card(
              color: ColorStyles.secondaryColor,
              child: InkWell(
                onTap: () {},
                splashColor: ColorStyles.secondaryColor,
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      CircleAvatar(
                        radius: 60,
                        backgroundImage: AssetImage("assets/images/eyeliner.png"),
                        backgroundColor: ColorStyles.primaryColor,
                      ),
                      FittedBox(child: Text("Eyeliner", style: new TextStyle(fontSize: 18.0)))
                    ],
                  ),
                ),
              ),
            ),
            Card(
              color: ColorStyles.secondaryColor,
              child: InkWell(
                onTap: () {},
                splashColor: ColorStyles.secondaryColor,
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      CircleAvatar(
                        radius: 60,
                        backgroundImage: AssetImage("assets/images/eyeshadow.png"),
                        backgroundColor: ColorStyles.primaryColor,
                      ),
                      FittedBox(child: Text("Eyeshadow", style: new TextStyle(fontSize: 18.0)))
                    ],
                  ),
                ),
              ),
            ),
            Card(
              color: ColorStyles.secondaryColor,
              child: InkWell(
                onTap: () {},
                splashColor: ColorStyles.secondaryColor,
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      CircleAvatar(
                        radius: 60,
                        backgroundImage: AssetImage("assets/images/foundation.png"),
                        backgroundColor: ColorStyles.primaryColor,
                      ),
                      FittedBox(child: Text("Foundation", style: new TextStyle(fontSize: 18.0)))
                    ],
                  ),
                ),
              ),
            ),
            Card(
              color: ColorStyles.secondaryColor,
              child: InkWell(
                onTap: () {},
                splashColor: ColorStyles.secondaryColor,
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      CircleAvatar(
                        radius: 60,
                        backgroundImage: AssetImage("assets/images/lip_liner.png"),
                        backgroundColor: ColorStyles.primaryColor,
                      ),
                      FittedBox(child: Text("Lip liner", style: new TextStyle(fontSize: 18.0)))
                    ],
                  ),
                ),
              ),
            ),
            Card(
              color: ColorStyles.secondaryColor,
              child: InkWell(
                onTap: () {},
                splashColor: ColorStyles.secondaryColor,
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      CircleAvatar(
                        radius: 60,
                        backgroundImage: AssetImage("assets/images/lipstick.png"),
                        backgroundColor: ColorStyles.primaryColor,
                      ),
                      FittedBox(child: Text("Lipstick", style: new TextStyle(fontSize: 18.0)))
                    ],
                  ),
                ),
              ),
            ),
            Card(
              color: ColorStyles.secondaryColor,
              child: InkWell(
                onTap: () {},
                splashColor: ColorStyles.secondaryColor,
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      CircleAvatar(
                        radius: 60,
                        backgroundImage: AssetImage("assets/images/mascara.png"),
                        backgroundColor: ColorStyles.primaryColor,
                      ),
                      FittedBox(child: Text("Mascara", style: new TextStyle(fontSize: 18.0)))
                    ],
                  ),
                ),
              ),
            ),
            Card(
              color: ColorStyles.secondaryColor,
              child: InkWell(
                onTap: () {},
                splashColor: ColorStyles.secondaryColor,
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      CircleAvatar(
                        radius: 60,
                        backgroundImage: AssetImage("assets/images/nail_polish.png"),
                        backgroundColor: ColorStyles.primaryColor,
                      ),
                      FittedBox(child: Text("Nail polish", style: new TextStyle(fontSize: 18.0)))
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}