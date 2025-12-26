import 'package:brasileirao/gui/home_brasileirao.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const Brasileirao());
}

class Brasileirao extends StatelessWidget{
  const Brasileirao({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Brasileirão',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomeBrasileirao(),
    );
  }
}