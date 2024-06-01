import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color.fromARGB(255, 13, 71, 161),
      body: Center(
        child: Text(
          'NAME: MUHAMMAD HUSSAIN\nSKILLS: PROGRAMMING\nHOBBIES: CODING\nPROFESSION: WEB and APP DEVELOPER',
          style: TextStyle(
            fontSize: 20.0, // change the font size
            fontWeight: FontWeight.bold, // make the text bold
            color: Colors.white, // change the text color
          ),
        ),
      ),
    );
  }
}
