import 'package:flutter/material.dart';
import 'package:flutter_assignment_2/priodic_table_elements.dart';

class PriodicTableScreen extends StatelessWidget {
  const PriodicTableScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan[50],
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 207, 106, 79),
        title: const Center(
          child: Text(
            'Priodic Table',
            style: TextStyle(
                color: Color(0xffffffff), fontWeight: FontWeight.bold),
          ),
        ),
      ),
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        // crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              makeAContainer(
                index: 1,
                symbol: 'H',
                name: 'Hydrogen',
                color: Colors.green,
              ),
              makeAContainer(
                index: 2,
                symbol: 'He',
                name: 'Helium',
                color: Colors.blue,
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              makeARow(
                startIndex: 3,
                endIndex: 4,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                color: Colors.green,
              ),
              makeARow(
                startIndex: 5,
                endIndex: 10,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                color: Colors.red,
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              makeARow(
                startIndex: 11,
                endIndex: 12,
                color: Colors.red,
              ),
              makeARow(
                startIndex: 13,
                endIndex: 18,
                color: Colors.grey,
              ),
            ],
          ),
          makeARow(
            startIndex: 19,
            endIndex: 36,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            color: Colors.indigoAccent,
          ),
          makeARow(
            startIndex: 37,
            endIndex: 54,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            color: Colors.red,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              makeARow(
                startIndex: 55,
                endIndex: 56,
                color: Colors.deepOrange,
              ),
              makeARow(
                startIndex: 72,
                endIndex: 86,
                color: Colors.deepOrange,
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              makeARow(
                startIndex: 87,
                endIndex: 88,
                mainAxisAlignment: MainAxisAlignment.center,
                color: Colors.blueAccent,
              ),
              makeARow(
                startIndex: 104,
                endIndex: 118,
                mainAxisAlignment: MainAxisAlignment.center,
                color: Colors.blueAccent,
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              makeAContainer(
                index: 119,
                symbol: priodicTableElements.firstWhere(
                    (element) => element['number'] == 119)['symbol'],
                name: priodicTableElements
                    .firstWhere((element) => element['number'] == 119)['name'],
                color: Colors.deepOrange,
              ),
            ],
          ),
          makeARow(
            startIndex: 57,
            endIndex: 71,
            mainAxisAlignment: MainAxisAlignment.center,
            color: Colors.redAccent,
          ),
          makeARow(
            startIndex: 89,
            endIndex: 103,
            mainAxisAlignment: MainAxisAlignment.center,
            color: Colors.pink,
          ),
        ],
      ),
    );
  }
}

Widget makeAContainer({
  required int index,
  required String symbol,
  required String name,
  required Color color,
}) {
  return Container(
    width: 65,
    height: 55,
    margin: const EdgeInsets.all(6),
    decoration: BoxDecoration(
      border: Border.all(
        color: color,
        width: 2.0,
      ),
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 1),
          child: Text(
            index.toString(),
            style: TextStyle(
              fontSize: 8,
              color: color,
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              symbol,
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
                color: color,
                shadows: <Shadow>[
                  Shadow(
                    offset: const Offset(0.1, 0.1),
                    blurRadius: 2.5,
                    color: color,
                  ),
                ],
              ),
            ),
          ],
        ),
        Center(child: Text(name, style: TextStyle(fontSize: 8, color: color))),
      ],
    ),
  );
}

Widget makeARow({
  required int startIndex,
  required int endIndex,
  MainAxisAlignment mainAxisAlignment = MainAxisAlignment.start,
  Color color = Colors.yellow,
}) {
  return Row(
    mainAxisAlignment: mainAxisAlignment,
    children: [
      for (int i = startIndex; i <= endIndex; i++)
        makeAContainer(
          index: i,
          symbol: priodicTableElements[i]['symbol'],
          name: priodicTableElements[i]['name'],
          color: color,
        ),
    ],
  );
}
