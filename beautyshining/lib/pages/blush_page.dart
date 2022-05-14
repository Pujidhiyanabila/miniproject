import 'package:flutter/material.dart';
import 'package:beautyshining/common/style.dart';

class BlushPage extends StatefulWidget {
  const BlushPage({ Key? key }) : super(key: key);

  @override
  _BlushPageState createState() => _BlushPageState();
}

class _BlushPageState extends State<BlushPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Blush Category"),
        centerTitle: true,
        backgroundColor: ColorStyles.secondaryColor,
      ),
      backgroundColor: ColorStyles.primaryColor,
    );
  }
}