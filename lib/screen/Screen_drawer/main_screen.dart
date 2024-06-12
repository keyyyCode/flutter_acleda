import 'package:bank/screen/Screen_drawer/App_bar.dart';
import 'package:bank/menu_acc/navi.dart';
import 'package:bank/screen/home_body.dart';
import 'package:flutter/material.dart';

class HomepageSreen extends StatefulWidget {
  const HomepageSreen({super.key});

  @override
  State<HomepageSreen> createState() => _HomepageSreenState();
}

class _HomepageSreenState extends State<HomepageSreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(context),
      drawer: DrawerScreen(),
      body: Main_HomeScreen(),
    );
  }
}
