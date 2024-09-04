import 'package:flutter/material.dart';
import 'package:flutter_application_str/pages/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(colorScheme: 
      ColorScheme.fromSeed(seedColor: Color.fromARGB(0, 0, 0, 0)),
      useMaterial3: true),
      home: Login(),
    );
  }
}