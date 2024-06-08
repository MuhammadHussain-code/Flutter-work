import 'package:flutter/material.dart';

class PriodicTable extends StatelessWidget {
  const PriodicTable({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 207, 106, 79),
          title: const Center(
            child: Text(
              'Ludo',
              style: TextStyle(
                  color: Color(0xffffffff), fontWeight: FontWeight.bold),
            ),
          ),
        ),
        body: Text("Priodic Table"));
  }
}
