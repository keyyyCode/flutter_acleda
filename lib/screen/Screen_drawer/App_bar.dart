import 'package:flutter/material.dart';

AppBar appBar(context) {
  return AppBar(
    // leading: Image.asset("assets/icons/menus.png"),
    // shadowColor: Color.fromARGB(212, 217, 63, 63),
    title: const Text(
      "ACLEDA",
      style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
    ),
    iconTheme: const IconThemeData(color: Colors.white),
    actions: [
      IconButton(
        icon: Icon(Icons.notification_add_outlined, color: Colors.white),
        onPressed: () {},
      ),
      IconButton(
        icon: Icon(
          Icons.qr_code_2,
          color: const Color.fromARGB(255, 224, 8, 8),
        ),
        onPressed: () {},
      ),
    ],
    flexibleSpace: Stack(
      // Use a Stack widget
      children: [
        Container(
          // Background with gradient
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 8, 59, 98),
                Color.fromARGB(255, 29, 74, 112),
              ],
              begin: Alignment.topCenter,
              end: Alignment.center,
            ),
          ),
        ),
      ],
    ),
  );
}
