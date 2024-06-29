import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('First Screen'),
      ),
      body: customListViewBuild(),
    );
  }
}

Widget customListView() {
  return ListView(
    physics: const BouncingScrollPhysics(),
    children: [
      Container(
        width: 200,
        height: 200,
        color: Colors.red,
      ),
      Container(
        width: 200,
        height: 200,
        color: Colors.blue,
      ),
      Container(
        width: 200,
        height: 200,
        color: Colors.green,
      ),
      Container(
        width: 200,
        height: 200,
        color: Colors.red,
      ),
      Container(
        width: 200,
        height: 200,
        color: Colors.blue,
      ),
      Container(
        width: 200,
        height: 200,
        color: Colors.green,
      ),
    ],
  );
}

Widget customListViewBuild() {
  Widget? returnFunc(context, index) {
    return Row(
      children: [
        Column(
          children: [
            Container(
                width: MediaQuery.of(context).size.height,
                margin: const EdgeInsets.all(8),
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: index % 2 == 0 ? Colors.orange : Colors.blue,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Text(
                  'Item $index',
                  style: const TextStyle(
                    fontSize: 24,
                    color: Colors.white,
                  ),
                )),
          ],
        ),
        Column(
          children: [
            Container(
                width: MediaQuery.of(context).size.width * 0.5,
                margin: const EdgeInsets.all(8),
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: index % 2 == 0 ? Colors.orange : Colors.blue,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Text(
                  'Item $index',
                  style: const TextStyle(
                    fontSize: 24,
                    color: Colors.white,
                  ),
                )),
          ],
        ),
      ],
    );
  }

  return ListView.builder(
    physics: const BouncingScrollPhysics(),
    itemCount: 100,
    itemBuilder: returnFunc,
  );
}
