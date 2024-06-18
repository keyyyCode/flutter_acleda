// import 'package:bank/screen/Screen_Main/list_drawer.dart';
import 'package:bank/screen/GridBox/Qr_me/ScreenQr.dart';
import 'package:bank/screen/GridBox/loan.dart';
// import 'package:bank/screen/scanners/main_scan.dart';
import 'package:flutter/material.dart';

AppBar appBar(context) {
  return AppBar(
    leading: Builder(
      builder: (context) => IconButton(
        icon: Image.asset(
          'assets/icons/body/menus.png',
          width: 25,
          height: 25,
          color: Color.fromARGB(255, 255, 255, 255),
        ),
        onPressed: () {
          Scaffold.of(context).openDrawer();
        },
      ),
    ),
    actions: [
      IconButton(
        icon: const Icon(
          Icons.notifications_none_outlined,
          color: Color.fromARGB(255, 255, 255, 255),
          size: 30,
        ),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => Loans(),
            ),
          );
        },
      ),
      IconButton(
        icon: const Icon(
          Icons.qr_code_2,
          color: Color.fromARGB(255, 224, 8, 8),
          size: 30,
        ),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => QR_Screens(),
            ),
          );
        },
      ),
    ],
    flexibleSpace: Stack(
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
        Padding(
          padding: const EdgeInsets.only(left: 20, top: 33),
          child: Image.asset(
            'assets/icons/body/acledalogofull.png',
            fit: BoxFit.cover,
            width: 200, // Adjust the width as needed
            height: 40, // Adjust the height as needed
          ),
        ),
      ],
    ),
  );
}
