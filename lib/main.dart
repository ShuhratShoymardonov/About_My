import 'package:flutter/material.dart';
import 'package:shuhrat/scren/splesh_scren.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SpleshScren(),
    );
  }
}
