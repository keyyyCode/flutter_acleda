import 'package:bank/Icon_click/Icon_home.dart';
import 'package:flutter/material.dart';

class Drawering extends StatelessWidget {
  const Drawering({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      // backgroundColor: Colors.black.withOpacity(0.5),
      backgroundColor: const Color.fromARGB(235, 12, 2, 83),
      child: ListView(
        children: [
          DrawerHeader(
              child: Image.network(
                  "https://www.acledasecurities.com.kh/as/assets/layout/logo1.png")),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const IconHomes()),
              );
              print("Container pressed!");
            },
            child: Container(
              child: const ListTile(
                iconColor: Colors.white,
                leading: Icon(Icons.home),
                title: Text(
                  "Home",
                  style: TextStyle(color: Colors.white),
                ),
                trailing: Icon(Icons.navigate_next),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const IconHomes()),
              );
              print("Container pressed!");
            },
            child: Container(
              child: ListTile(
                iconColor: Colors.white,
                leading: Icon(Icons.call),
                title: Text(
                  "Contact",
                  style: TextStyle(color: Colors.white),
                ),
                trailing: Icon(Icons.navigate_next),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const IconHomes()),
              );
              print("Container pressed!");
            },
            child: Container(
              child: const ListTile(
                // tileColor: const Color.fromARGB(177, 255, 153, 0).withOpacity(0.7),
                iconColor: Colors.white,
                leading: Icon(Icons.person),
                title: Text(
                  "Account",
                  style: TextStyle(color: Colors.white),
                ),
                trailing: Icon(Icons.navigate_next),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
