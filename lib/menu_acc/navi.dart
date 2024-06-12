import 'package:bank/menu_acc/navi_item.dart';
import 'package:bank/screen/hometest.dart';
import 'package:flutter/material.dart';

class DrawerScreen extends StatelessWidget {
  const DrawerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: const Color.fromARGB(235, 22, 14, 80),
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          Container(
            decoration: const BoxDecoration(
              color: Color.fromARGB(255, 8, 59, 98),
            ),
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: Row(
              children: [
                const Padding(
                  padding:
                      EdgeInsets.only(left: 16, bottom: 5, right: 16, top: 15),
                  child: CircleAvatar(
                    radius: 40,
                    backgroundColor: Color.fromARGB(255, 209, 204, 204),
                    child: Icon(
                      Icons.person,
                      color: Colors.white,
                      size: 60,
                    ),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      'Person Name',
                      style: TextStyle(
                        fontSize: 20,
                        color: Color.fromARGB(255, 106, 234, 64),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    // SizedBox(height: 5),
                    Text(
                      '034 838 664',
                      style: TextStyle(
                        fontSize: 15,
                        color: Color.fromARGB(255, 223, 218, 218),
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: 15,
          ),
          DrawerItem(
            name: 'Country and Language',
            icon: Icons.location_city,
            onPressed: () => onItemPressed(context, index: 0),
          ),
          DrawerItem(
            name: 'Settings',
            icon: Icons.settings,
            onPressed: () => onItemPressed(context, index: 1),
          ),
          DrawerItem(
            name: 'Location',
            icon: Icons.location_on,
            onPressed: () => onItemPressed(context, index: 2),
          ),
          DrawerItem(
            name: 'Terms and Conditions',
            icon: Icons.terminal,
            onPressed: () => onItemPressed(context, index: 3),
          ),
          DrawerItem(
            name: 'Security & Services',
            icon: Icons.security,
            onPressed: () => onItemPressed(context, index: 4),
          ),
          DrawerItem(
            name: 'FAQs',
            icon: Icons.format_quote,
            onPressed: () => onItemPressed(context, index: 5),
          ),
          DrawerItem(
            name: 'Invite Friends',
            icon: Icons.people_alt_sharp,
            onPressed: () => onItemPressed(context, index: 6),
          ),
          DrawerItem(
            name: 'ACLEDA Banks Stock',
            icon: Icons.equalizer,
            onPressed: () => onItemPressed(context, index: 7),
          ),
          DrawerItem(
            name: 'Customer Loyalty',
            icon: Icons.dashboard_customize,
            onPressed: () => onItemPressed(context, index: 8),
          ),
          DrawerItem(
            name: 'Contact Us (24/7)',
            icon: Icons.call_end_sharp,
            onPressed: () => onItemPressed(context, index: 9),
          ),
          DrawerItem(
            name: 'Help',
            icon: Icons.question_answer,
            onPressed: () => onItemPressed(context, index: 10),
          ),
          SizedBox(
            height: 180,
          ),
          Center(
            child: Text(
              'Version 6.29\nRelease Date: May 31, 24\nYour ACLEDA mobile version is up to date',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 13,
                color: Color.fromARGB(255, 163, 152, 152),
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
        ],
      ),
    );
  }

  void onItemPressed(BuildContext context, {required int index}) {
    Navigator.pop(context);
    // Add logic for each item here, e.g.:
    switch (index) {
      case 0:
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => HomeScreen()));
        break;
      case 1:
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => HomeScreen()));
        break;
      case 2:
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => HomeScreen()));
        break;
      case 3:
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => HomeScreen()));
        break;
      case 4:
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => HomeScreen()));
        break;
      case 5:
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => HomeScreen()));
        break;
      case 6:
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => HomeScreen()));
        break;
      case 7:
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => HomeScreen()));
        break;
      case 8:
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => HomeScreen()));
        break;
      case 9:
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => HomeScreen()));
        break;
      case 10:
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => HomeScreen()));
        break;
      case 11:
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => HomeScreen()));
        break;
      // Add more cases for other screens
    }
  }
}
