import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:full_page_ui/components/header.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    List<Map<String, String>> Categories = [
      {
        "name": 'Beauty',
        "image": 'assets/images/avatar_1.png',
      },
      {
        "name": 'Fashion',
        "image": 'assets/images/avatar_2.png',
      },
      {
        "name": 'Kids',
        "image": 'assets/images/avatar_3.png',
      },
      {
        "name": 'Mens',
        "image": 'assets/images/avatar_4.png',
      },
    ];
    return Scaffold(
      appBar: const CustomHeader(),
      backgroundColor: const Color(0xFFF9F9F9),
      body: ListView(
        padding: const EdgeInsets.all(10),
        physics: const BouncingScrollPhysics(),
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                for (Map<String, String> category in Categories)
                  Container(
                    margin: const EdgeInsets.only(right: 10, left: 10),
                    child: Column(
                      children: [
                        CircleAvatar(
                          radius: 30,
                          backgroundImage: AssetImage(category['image']!),
                        ),
                        Text(category['name']!),
                      ],
                    ),
                  ),
              ],
            ),
          ),
          Container(
            height: 200,
            decoration: BoxDecoration(
              color: const Color(0xFFFD6E86),
              borderRadius: BorderRadius.circular(10),
            ),
            margin: const EdgeInsets.only(top: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  '50-40% OFF',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                      color: Colors.white),
                ),
                const Text(
                  'Now in (product)',
                  style: TextStyle(fontSize: 14, color: Colors.white),
                ),
                const Text(
                  'All colours',
                  style: TextStyle(fontSize: 14, color: Colors.white),
                ),
                const SizedBox(
                  height: 10,
                ),
                CustomButton('Show Now'),
              ],
            ),
          ),
          Container(
            height: 80,
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(10),
            ),
            margin: const EdgeInsets.only(top: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Deal of the Day',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                    Text(
                      '22h 55m 20s remaining ',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                      ),
                    )
                  ],
                ),
                CustomButton('View All')
              ],
            ),
          ),
          Container(
            height: 100,
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            margin: const EdgeInsets.only(top: 20),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 30,
                  backgroundImage: AssetImage('assets/images/offer.png'),
                ),
                SizedBox(
                  width: 20,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Special Offers',
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                    Text(
                      'We make sure you get the\noffer you need at best prices',
                      style: TextStyle(
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            height: 80,
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: const Color(0xFFFD6E86),
              borderRadius: BorderRadius.circular(10),
            ),
            margin: const EdgeInsets.only(top: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Column(
                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Trending Products ',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                    // ElevatedButton.icon(
                    //   onPressed: () {},
                    //   style: ElevatedButton.styleFrom(
                    //     backgroundColor: Colors.transparent,
                    //     foregroundColor: Colors.white,
                    //     padding: const EdgeInsets.all(0),
                    //     elevation: 0,
                    //   ),

                    //   icon: const Icon(
                    //     Icons.calendar_month_outlined,
                    //     size: 20,
                    //   ),
                    //   label: const Text(
                    //     'Last Date 29/02/22',
                    //     style: TextStyle(
                    //       color: Colors.white,
                    //       fontSize: 14,
                    //     ),
                    //   ),
                    // ),
                  ],
                ),
                CustomButton('View All')
              ],
            ),
          ),
        ],
      ),
    );
  }
}

Widget CustomButton(label) {
  return ElevatedButton(
    onPressed: () {},
    style: ElevatedButton.styleFrom(
      backgroundColor: Colors.transparent,
      foregroundColor: Colors.white,
      side: const BorderSide(
        color: Colors.white,
        width: 2,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      elevation: 0,
    ),
    child: Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          label,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w700,
          ),
        ),
        const SizedBox(width: 8),
        Image.asset(
          'assets/icons/arrow-right.png',
          width: 20,
        ),
      ],
    ),
  );
}
