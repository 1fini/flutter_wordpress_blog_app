import 'package:flutter/material.dart';
//import 'package:goo';
import 'package:pi_blog_app/ui/screens/home.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        backgroundColor: Colors.white,
        scaffoldBackgroundColor: Colors.white,
        appBarTheme: const AppBarTheme(color: Colors.white),
        primarySwatch: Colors.blue,
        //textTheme: GoogleFonts.latoTextTheme(),
      ),
      home: const HomeScreen(),
    );
  }
}
