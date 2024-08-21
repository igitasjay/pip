import 'package:flutter/material.dart';
import 'package:pip/pip.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Picture-in-Picture',
      debugShowCheckedModeBanner: false,
      home: PipHomePage(),
    );
  }
}
