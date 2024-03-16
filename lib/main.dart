
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quize_app/quiz.dart';



// very important application
// i learn a lot from it
void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home:Quize(),
    );
  }
}
