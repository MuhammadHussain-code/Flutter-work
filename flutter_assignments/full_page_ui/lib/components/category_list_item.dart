import 'package:flutter/material.dart';

class CategoryListItem extends StatelessWidget {
  const CategoryListItem({super.key, required this.list});

  final List<Map> list;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      child: Center(
        child: ListView.builder(
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemBuilder: (_, index) {
              return Column(
                children: <Widget>[
                  Container(
                      margin: const EdgeInsets.all(10),
                      width: 90,
                      height: 90,
                      child: Image.asset(list[index]["imagePath"],
                          fit: BoxFit.fill)),
                  Text(list[index]["title"],
                      style: const TextStyle(fontWeight: FontWeight.bold))
                ],
              );
            },
            itemCount: list.length),
      ),
    );
  }
}