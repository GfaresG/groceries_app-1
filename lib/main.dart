import 'package:flutter/material.dart';
import 'package:groceries_app/src/features/screens/beverages.dart';
import 'package:groceries_app/src/features/screens/explore.dart';
import 'package:groceries_app/src/features/screens/search.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:  Find_products(),
    );
  }
}
