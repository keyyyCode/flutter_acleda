import 'package:bank/screen/GridBox/Account/Accounts.dart';
import 'package:flutter/material.dart';
import 'package:bank/screen/BoxScroll/exchange.dart';
import 'package:bank/screen/BoxScroll/favorite.dart';

import 'package:bank/screen/GridBox/account.dart';
import 'package:bank/screen/GridBox/deposite.dart';
import 'package:bank/screen/GridBox/loan.dart';
import 'package:bank/screen/GridBox/mobiletop_up/mobile_topup.dart';
import 'package:bank/screen/GridBox/pay_me.dart';
import 'package:bank/screen/GridBox/payment.dart';
import 'package:bank/screen/GridBox/quick_cush.dart';
import 'package:bank/screen/GridBox/scan_qr.dart';
import 'package:bank/screen/GridBox/transfer.dart';

class HomeScreenData {
  static final List<GridBox> categories = [
    GridBox(
      name: "Payments",
      // icon: Icons.book_online,
      assetPath: 'assets/icons/body/payments.png',
      route: Payments(),
    ),
    GridBox(
      name: "Mobile Top-up",
      // icon: Icons.mobile_friendly,
      assetPath: 'assets/icons/body/mobile.png',
      route: Mobile_Top_Up(),
    ),
    GridBox(
      name: "Transfers",
      // icon: Icons.transfer_within_a_station_outlined,
      assetPath: 'assets/icons/body/transfer.png',
      route: Transfer(),
    ),
    GridBox(
      name: "Pay-Me",
      // icon: Icons.payment_rounded,
      assetPath: 'assets/icons/body/payme.png',
      route: PayMeScreens(),
    ),
    GridBox(
      name: "Scan QR",
      // icon: Icons.qr_code,
      assetPath: 'assets/icons/body/scan.png',
      route: ScreenAccount(),
    ),
    GridBox(
      name: "Accounts",
      // icon: Icons.person,
      assetPath: 'assets/icons/body/account.png',
      route: Account(),
    ),
    GridBox(
      name: "Deposits",
      // icon: Icons.leaderboard,
      assetPath: 'assets/icons/body/deposite.png',
      route: Deposite(),
    ),
    GridBox(
      name: "Loans",
      // icon: Icons.balance,
      assetPath: 'assets/icons/body/loan.png',
      route: Loans(),
    ),
    GridBox(
      name: "Quick Cash",
      // icon: Icons.currency_bitcoin_sharp,
      assetPath: 'assets/icons/body/cash.png',
      route: Quick_Cush(),
    ),
  ];

  static final List<String> bannerImages = [
    "assets/images/bannerbank1.jpg",
    "assets/images/bannerbank2.jpg",
    "assets/images/bannerbank3.jpg",
  ];
}

class DrawerData {
  static final List<GridBox> drawerItems = [
    GridBox(
      name: 'Country and Language',
      // icon: Icons.location_city,
      assetPath: 'assets/icons/menu/country.png',
      route: ScreenAccount(),
    ),
    GridBox(
      name: 'Settings',
      // icon: Icons.settings,
      assetPath: 'assets/icons/menu/settings.png',
      route: Deposite(),
    ),
    GridBox(
      name: 'Location',
      // icon: Icons.location_on,
      assetPath: 'assets/icons/menu/location.png',
      route: Loans(),
    ),
    GridBox(
      name: 'Terms and Conditions',
      // icon: Icons.terminal,
      assetPath: 'assets/icons/menu/terms.png',
      route: Mobile_Top_Up(),
    ),
    GridBox(
      name: 'Security & Services',
      // icon: Icons.security,
      assetPath: 'assets/icons/menu/security.png',
      route: PayMeScreens(),
    ),
    GridBox(
      name: 'FAQs',
      // icon: Icons.format_quote,
      assetPath: 'assets/icons/menu/faqs.png',
      route: Payments(),
    ),
    GridBox(
      name: 'Invite Friends',
      // icon: Icons.people_alt_sharp,
      assetPath: 'assets/icons/menu/addfriend.png',
      route: Quick_Cush(),
    ),
    GridBox(
      name: 'ACLEDA Banks Stock',
      // icon: Icons.equalizer,
      assetPath: 'assets/icons/menu/stock.png',
      route: Scan_Qr(),
    ),
    GridBox(
      name: 'Customer Loyalty',
      // icon: Icons.dashboard_customize,
      assetPath: 'assets/icons/menu/customer.png',
      route: Transfer(),
    ),
    GridBox(
      name: 'Contact Us (24/7)',
      // icon: Icons.call_end_sharp,
      assetPath: 'assets/icons/menu/call.png',
      route: ExchangeRateWidget(),
    ),
    GridBox(
      name: 'Help',
      // icon: Icons.question_answer,
      assetPath: 'assets/icons/menu/question.png',
      route: Favorites(),
    ),
  ];
}

class GridBox {
  final String name;

  // final IconData assetPath;
  final String assetPath;

  final Widget route;

  GridBox({
    required this.name,
    required this.assetPath,
    required this.route,
  });
}
