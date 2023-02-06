import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.cyan,
        colorScheme: const ColorScheme.light().copyWith(
          primary: Colors.cyan,
        ),
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Pokemon List App',
          ),
          centerTitle: true,
        ),
        body: const Center(
          child: Text(
            'Pokemon List App',
          ),
        ),
      ),
    );
  }
}
