import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import './providers/auth.dart';
import './pages/auth_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (ctx) => Auths(),
        ),
        // ChangeNotifierProvider(
        //   create: (ctx) => Products(),
        // ),
      ],
      builder: (context, child) => MaterialApp(
        debugShowCheckedModeBanner: false,
        home: LoginPage(),
        routes: {
          // AddProductPage.route: (ctx) => AddProductPage(),
          // EditProductPage.route: (ctx) => EditProductPage(),
        },
      ),
    );
  }
}