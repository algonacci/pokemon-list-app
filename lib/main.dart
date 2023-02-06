import 'package:flutter/material.dart';
import 'package:pokemon_list_app/fetch_data.dart';

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
      home: const FetchData(),
    );
  }
}
