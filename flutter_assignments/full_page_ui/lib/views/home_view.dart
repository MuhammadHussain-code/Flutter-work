import 'package:full_page_ui/utils/color_constant.dart';
import 'package:flutter/material.dart';
import 'package:full_page_ui/components/category_list_item.dart';
import 'package:full_page_ui/components/custom_button.dart';
import 'package:flutter/widgets.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
              icon: const Icon(Icons.menu),
              tooltip: 'Open menu',
              onPressed: () {}),
          backgroundColor: Colors.transparent,
          title: Image.asset('assets/images/logo.png'),
          actions: <Widget>[
            IconButton(
              icon: const CircleAvatar(
                backgroundImage: AssetImage('assets/images/user.png'),
              ),
              tooltip: 'User',
              onPressed: () {},
            ),
          ],
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                const SizedBox(height: 10),
                const CategoryListItem(list: [
                  {"title": 'Beauty', "imagePath": 'assets/images/beauty.png'},
                  {
                    "title": 'Fashion',
                    "imagePath": 'assets/images/fashion.png'
                  },
                  {"title": 'Kids', "imagePath": 'assets/images/kids.png'},
                  {"title": 'Men', "imagePath": 'assets/images/men.png'}
                ]),
                Container(
                    width: MediaQuery.of(context).size.width * 0.9,
                    height: 200,
                    decoration: BoxDecoration(
                      color: pink,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("50-40% OFF",
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w800,
                                color: Colors.white)),
                        SizedBox(height: 10),
                        Text("Now in (product)",
                            style:
                                TextStyle(fontSize: 16, color: Colors.white)),
                        SizedBox(height: 5),
                        Text("All colours",
                            style:
                                TextStyle(fontSize: 16, color: Colors.white)),
                        SizedBox(height: 5),
                        CustomButton(
                            icon: Icons.arrow_forward, text: "Shop Now")
                      ],
                    )),
                const SizedBox(height: 10),
                Container(
                    width: MediaQuery.of(context).size.width * 0.9,
                    padding: const EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      color: blue,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Deal of the Day",
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white)),
                            Text("22h 55m 20s remaining",
                                style: TextStyle(
                                    fontSize: 16, color: Colors.white)),
                          ],
                        ),
                        CustomButton(
                            icon: Icons.arrow_forward, text: "View All")
                      ],
                    )),
                const SizedBox(height: 10),
                Container(
                    width: MediaQuery.of(context).size.width * 0.9,
                    padding: const EdgeInsets.symmetric(vertical: 15),
                    decoration: BoxDecoration(
                      color: white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Image.asset('assets/images/offer.png'),
                        const SizedBox(width: 20),
                        const Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Special Offers",
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  )),
                              Text(
                                  "We make sure you get the offer you need at best prices",
                                  style: TextStyle(
                                    fontSize: 16,
                                  )),
                            ],
                          ),
                        )
                      ],
                    )),
                const SizedBox(height: 10),
                Container(
                    width: MediaQuery.of(context).size.width * 0.9,
                    height: 200,
                    decoration: BoxDecoration(
                      color: grey,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Stack(children: [
                          Container(color: Colors.orange, width: 10),
                          Center(child: Image.asset('assets/images/spray.png')),
                          Center(
                              widthFactor: 1.3,
                              child: Image.asset('assets/images/heels.png')),
                        ]),
                        const SizedBox(width: 10),
                        const Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text("Flat and Heels",
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  )),
                              SizedBox(height: 5),
                              Text("Stand a chance to get rewarded",
                                  style: TextStyle(
                                    fontSize: 16,
                                  )),
                              SizedBox(height: 5),
                              CustomButton(
                                icon: Icons.arrow_forward,
                                text: "Visit Now",
                                isBackground: true,
                              )
                            ],
                          ),
                        ),
                        const SizedBox(width: 15),
                      ],
                    )),
                const SizedBox(height: 10),
                Container(
                    width: MediaQuery.of(context).size.width * 0.9,
                    padding: const EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      color: pink,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Trending Products",
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white)),
                            Wrap(
                              verticalDirection: VerticalDirection.up,
                              children: [
                                Icon(
                                  Icons.calendar_month_outlined,
                                  color: Colors.white,
                                ),
                                SizedBox(width: 5),
                                Text("Last Date 29/02/22",
                                    style: TextStyle(
                                        fontSize: 16, color: Colors.white))
                              ],
                            ),
                          ],
                        ),
                        CustomButton(
                            icon: Icons.arrow_forward, text: "View All")
                      ],
                    )),
                const SizedBox(height: 10),
                Container(
                    width: MediaQuery.of(context).size.width * 0.9,
                    decoration: BoxDecoration(
                      color: white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(children: [
                      Image.asset(
                        'assets/images/banner.png',
                        width: MediaQuery.of(context).size.width,
                        fit: BoxFit.fill,
                      ),
                      const SizedBox(height: 10),
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("New Arrivals",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold)),
                                SizedBox(width: 5),
                                Text("Summer’ 25 Collections",
                                    style: TextStyle(fontSize: 16)),
                              ],
                            ),
                            CustomButton(
                                icon: Icons.arrow_forward,
                                text: "View All",
                                isBackground: true)
                          ],
                        ),
                      ),
                      const SizedBox(height: 10)
                    ]))
              ],
            ),
          ),
        ));
  }
}