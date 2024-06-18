import 'package:flutter/material.dart';
import 'package:bank/screen/Screen_Main/main_screen.dart';

class Payments extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Payments',
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
                Color.fromARGB(255, 146, 135, 135),
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
              context, 'assets/icons/payment/water.png', 'WATER SUPPLY BILL'),
          _buildPaymentOption(context, 'assets/icons/payment/electricity.png',
              'ELECTRICITY BILL'),
          _buildPaymentOption(context, 'assets/icons/payment/home.png',
              'ENTERPRICE FOR MANAGING MUNICIPAL\nSOLID WASTE IN PHNOM PENH(EWP)'),
          _buildPaymentOption(
              context, 'assets/icons/payment/clear.png', 'FINANCAIL BILL'),
          _buildPaymentOption(context, 'assets/icons/payment/share.png',
              'MOBILE OPERATOR BILL'),
          _buildPaymentOption(context, 'assets/icons/payment/financial.png',
              'INTERNET & TV BILL'),
          _buildPaymentOption(
              context, 'assets/icons/payment/school.png', 'SCHOOL BILL'),
          _buildPaymentOption(
              context, 'assets/icons/payment/iphone.png', 'INSURANCE BILL'),
          _buildPaymentOption(
              context, 'assets/icons/payment/wifi.png', 'AGRICALTURE BILL'),
          _buildPaymentOption(
              context, 'assets/icons/payment/school.png', 'REAL ESTATE BILL'),
          _buildPaymentOption(context, 'assets/icons/payment/insurance.png',
              'PRIVATE SOLID WSTATE BILL'),
          _buildPaymentOption(
              context, 'assets/icons/payment/tree.png', 'B24 BILL'),
          _buildPaymentOption(
              context, 'assets/icons/payment/home.png', 'MEMBERSHIP '),
          _buildPaymentOption(context, 'assets/icons/payment/remove.png',
              'CHARITY & DONATION '),
          _buildPaymentOption(
              context, 'assets/icons/payment/b.png', 'PANDING PAYMENTS'),
          _buildPaymentOption(context, 'assets/icons/payment/membership.png',
              'PUBLIC SERVICES BILL'),
          _buildPaymentOption(context, 'assets/icons/payment/carbig.png',
              'TRANDING & DISTRIBUTION BILL'),
          _buildPaymentOption(
              context, 'assets/icons/payment/handgame.png', 'ENTERTAINMENT'),
          _buildPaymentOption(
              context, 'assets/icons/payment/bagecommerce.png', 'ECOMMERCE'),
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
            spreadRadius: 0.5,
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
