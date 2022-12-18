import 'package:cleaning_comp/resources/color_manager.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        backgroundColor: ColorManager.black,
        body: const Text("data"),
      ),
    );
  }
}
