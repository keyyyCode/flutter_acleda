import 'package:bank/screen/Screen_Main/main_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Deposite extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: const Text(
            'Deposite',
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),
          ),
          backgroundColor: const Color.fromARGB(255, 8, 59, 98),
          centerTitle: true,
          iconTheme: const IconThemeData(color: Colors.white),
          // leading: GestureDetector(
          //   child: Icon(Icons.arrow_back),
          //   onTap: () {
          //     Navigator.push(
          //       context,
          //       MaterialPageRoute(builder: (context) => HomepageSreen()),
          //     );
          //   },
          // ),
          actions: [
            IconButton(
              onPressed: () {
                Navigator.pop(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HomepageScreen(),
                  ),
                );
              },
              icon: Image.asset(
                'assets/icons/body/acleda.png',
                width: 33,
                height: 33,
              ),

              // padding: const EdgeInsets.all(16.0),
            )
          ],
        ),
        body: Center(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 16, right: 16, top: 350),
                child: Container(
                  height: 60,
                  width: 400,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 190, 163, 163),
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        color: Color.fromARGB(255, 83, 79, 79),
                        spreadRadius: 0.5,
                        blurRadius: 4,
                        offset: Offset(4, 4),
                      ),
                    ],
                  ),
                  child: Center(
                    child: Text(
                      'COMMING SOON',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: const Color.fromARGB(255, 255, 255, 255)),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      );
}
