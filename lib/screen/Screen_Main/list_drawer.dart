// import 'package:bank/Models/data/Data_homePage.dart';
import 'package:bank/Models/data/route_data..dart';
import 'package:flutter/material.dart';

class DrawerScreen extends StatelessWidget {
  const DrawerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: const Color.fromARGB(255, 8, 59, 98),
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          Container(
            decoration: const BoxDecoration(
              color: Color.fromARGB(255, 19, 27, 83),
              boxShadow: [
                const BoxShadow(
                    color: Color.fromARGB(255, 35, 33, 33),
                    blurRadius: 6.0,
                    offset: Offset(0, 2))
              ],
            ),
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: const Row(
              children: [
                Padding(
                  padding: EdgeInsets.all(16),
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
                  children: [
                    Text(
                      'SOMART SOPHEAK',
                      style: TextStyle(
                        fontSize: 18,
                        color: Color.fromARGB(255, 106, 234, 64),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
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
          ...DrawerData.drawerItems.map((item) {
            return SizedBox(
              height: 45,
              child: ListTile(
                leading: Image.asset(
                  item.assetPath,
                  width: 35,
                  height: 35,
                  color: Color.fromARGB(
                      255, 124, 203, 71), // Adjust the color as needed
                ),
                title: Text(item.name,
                    style: const TextStyle(
                        color: Color.fromARGB(255, 217, 213, 213))),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => item.route));
                },
              ),
            );
          }).toList(),
          const SizedBox(height: 150),
          const Center(
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
}
