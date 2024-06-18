import 'package:bank/screen/Screen_Main/AppBars/App_bar.dart';
import 'package:bank/screen/Screen_Main/list_drawer.dart';
import 'package:bank/screen/Screen_Main/body_home.dart';
import 'package:flutter/material.dart';

class HomepageScreen extends StatefulWidget {
  const HomepageScreen({super.key});

  @override
  State<HomepageScreen> createState() => _HomepageScreenState();
}

class _HomepageScreenState extends State<HomepageScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(context),
      drawer: DrawerScreen(),
      body: MainHomeScreens(),
    );
  }
}
