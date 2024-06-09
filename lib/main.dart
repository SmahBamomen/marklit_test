import 'package:flutter/material.dart';
import 'features/creative_content/view/adding_creative_content.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Marklit Test',
      debugShowCheckedModeBanner: false,
      home: AddingCreativeContent(),
    );
  }
}
