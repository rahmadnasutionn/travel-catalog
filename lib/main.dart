import 'package:flutter/material.dart';
import 'package:flutter_application_1/main_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Wisata Bandung',
      theme: ThemeData(
        fontFamily: 'Oswald',
        primarySwatch: Colors.blue,
      ),
      home: const MainScreen(title: 'Wisata Bandung'),
      debugShowCheckedModeBanner: false,
    );
  }
}
