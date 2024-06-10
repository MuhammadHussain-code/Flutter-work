import 'package:flutter/material.dart';
import 'package:flutter_assignment_2/ludo.dart';
import 'package:flutter_assignment_2/priodic_table.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Assignment 2',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      // home: const PriodicTableScreen(),
      home: const LudoScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
