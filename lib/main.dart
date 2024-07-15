import 'package:flutter/material.dart';
import 'package:insta/myHomePage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        iconTheme: IconThemeData(
          color: Color.fromRGBO(203, 73, 101, 1),
        ),
        appBarTheme: AppBarTheme(
          elevation: 1,
          color: Colors.white,
          // iconTheme: IconThemeData(
          //   color: Color.fromRGBO(203, 73, 101, 1),
          // ),
        ),
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Myhomepage(),
    );
  }
}
