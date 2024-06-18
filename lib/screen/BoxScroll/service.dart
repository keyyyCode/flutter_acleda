import 'package:flutter/material.dart';
import 'package:bank/screen/Screen_Main/main_screen.dart';

class Services extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'SERVICES',
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),
        ),
        backgroundColor: const Color.fromARGB(255, 8, 59, 98),
        centerTitle: true,
        iconTheme: const IconThemeData(color: Colors.white),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pop(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const HomepageScreen()));
            },
            icon: Image.asset('assets/icons/body/acleda.png',
                width: 33, height: 33),
          ),
        ],
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 8, 59, 98),
                Color.fromARGB(255, 8, 59, 98),
                Color.fromARGB(255, 8, 59, 98),
                Color.fromARGB(255, 8, 59, 98),
                Color.fromARGB(255, 8, 59, 98),
                Color.fromARGB(255, 8, 59, 98),
                Color.fromARGB(255, 216, 207, 207)
              ],
              begin: Alignment.center,
              end: Alignment.bottomCenter,
            ),
          ),
        ),
      ),
      body: ListView(
        children: [
          _buildPaymentOption(
              context, 'assets/icons/payment/insurance.png', 'INSURANCE'),
          _buildPaymentOption(
              context, 'assets/icons/payment/membership.png', 'ENTERTAINMENT'),
        ],
      ),
    );
  }

  Widget _buildPaymentOption(
      BuildContext context, String iconPath, String text) {
    return Container(
      height: 70,
      margin: const EdgeInsets.only(bottom: 10),
      decoration: const BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Color.fromARGB(255, 207, 196, 196),
            spreadRadius: 1,
            blurRadius: 4,
            offset: Offset(0, 4),
          ),
        ],
      ),
      child: Row(
        children: [
          IconButton(
            onPressed: () {
              Navigator.pop(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const HomepageScreen()));
            },
            icon: Image.asset(iconPath, width: 50, height: 50),
          ),
          Expanded(
            child: Text(
              text,
              style: const TextStyle(
                  fontSize: 17,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}
