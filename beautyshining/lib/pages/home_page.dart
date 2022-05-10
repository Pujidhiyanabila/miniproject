import 'package:beautyshining/pages/profile_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  static const route = "/home";

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isInit = true;
  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Beauty Shining"),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: (){
              showModalBottomSheet(
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(20),
                  ),
                ),
                context: context, 
                builder: (context) => const ProfilePage(),
              );
            },
            icon: Icon(Icons.account_circle),
          ),
        ],
      ),
    );
  }
}