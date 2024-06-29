import 'package:flutter/material.dart';

class CustomHeader extends StatelessWidget implements PreferredSizeWidget {
  const CustomHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: IconButton(
        icon: Image.asset(
            'assets/icons/hamburger.png'), // Your hamburger icon asset
        onPressed: () {
          // Action for the hamburger menu
        },
      ),
      title: Row(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Image.asset('assets/icons/logo.png', height: 20), // Your logo asset
          const SizedBox(width: 8),
          const Text('Stylish'), // Your text next to the logo
        ],
      ),
      centerTitle: true,
      actions: const <Widget>[
        CircleAvatar(
          backgroundImage: AssetImage(
              'assets/icons/profile_pic.png'), // Your user picture URL
        ),
        SizedBox(width: 16),
      ],
      backgroundColor: const Color.fromARGB(
          255, 255, 255, 255), // Customize your app bar color
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
