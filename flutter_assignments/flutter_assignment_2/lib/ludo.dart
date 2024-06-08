import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

class LudoScreen extends StatelessWidget {
  const LudoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    int totalColumns = 15;
    int middleColumns = 3;
    int startIndex = (totalColumns - middleColumns) ~/ 2;
    print(startIndex);
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
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                for (int i = 0; i < totalColumns; i++)
                  Container(
                    width: 20,
                    height: 20,
                    decoration: BoxDecoration(
                      color: i >= startIndex && i < startIndex + middleColumns
                          ? Colors.white
                          : i >= startIndex + middleColumns
                              ? Colors.amber
                              : Color.fromARGB(255, 165, 214, 167),
                      border: Border.all(
                        color: Colors.grey,
                        width: 1.0,
                      ),
                    ),
                  ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                for (int i = 0; i < totalColumns; i++)
                  Container(
                    width: 20,
                    height: 20,
                    decoration: BoxDecoration(
                      color: i >= startIndex && i < startIndex + middleColumns
                          ? Colors.white
                          : i >= startIndex + middleColumns
                              ? Colors.amber
                              : Color.fromARGB(255, 165, 214, 167),
                      border: Border.all(
                        color: Colors.grey,
                        width: 1.0,
                      ),
                    ),
                  ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                for (int i = 0; i < totalColumns; i++)
                  Container(
                    width: 20,
                    height: 20,
                    decoration: BoxDecoration(
                      color: i >= startIndex && i < startIndex + middleColumns
                          ? Colors.white
                          : i >= startIndex + middleColumns
                              ? Colors.amber
                              : Color.fromARGB(255, 165, 214, 167),
                      border: Border.all(
                        color: Colors.grey,
                        width: 1.0,
                      ),
                    ),
                  ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                for (int i = 0; i < totalColumns; i++)
                  Container(
                    width: 20,
                    height: 20,
                    decoration: BoxDecoration(
                      color: i >= startIndex && i < startIndex + middleColumns
                          ? Colors.white
                          : i >= startIndex + middleColumns
                              ? Colors.amber
                              : Color.fromARGB(255, 165, 214, 167),
                      border: Border.all(
                        color: Colors.grey,
                        width: 1.0,
                      ),
                    ),
                  ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                for (int i = 0; i < totalColumns; i++)
                  Container(
                    width: 20,
                    height: 20,
                    decoration: BoxDecoration(
                      color: i >= startIndex && i < startIndex + middleColumns
                          ? Colors.white
                          : i >= startIndex + middleColumns
                              ? Colors.amber
                              : Color.fromARGB(255, 165, 214, 167),
                      border: Border.all(
                        color: Colors.grey,
                        width: 1.0,
                      ),
                    ),
                  ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                for (int i = 0; i < totalColumns; i++)
                  Container(
                    width: 20,
                    height: 20,
                    decoration: BoxDecoration(
                      color: i >= startIndex && i < startIndex + middleColumns
                          ? Colors.white
                          : i >= startIndex + middleColumns
                              ? Colors.amber
                              : Color.fromARGB(255, 165, 214, 167),
                      border: Border.all(
                        color: Colors.grey,
                        width: 1.0,
                      ),
                    ),
                  ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
