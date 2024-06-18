import 'package:bank/screen/Screen_Main/main_screen.dart';
import 'package:flutter/material.dart';

class Favorites extends StatelessWidget {
  const Favorites({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 8, 59, 98),
        centerTitle: true,
        iconTheme: const IconThemeData(color: Colors.white),
        title: const Text(
          'FAVORITE',
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pop(
                context,
                MaterialPageRoute(
                  builder: (context) => const HomepageScreen(),
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
      body: Container(),
      floatingActionButton: Container(
        width: 70.0,
        height: 70.0,
        child: FloatingActionButton(
          shape: RoundedRectangleBorder(
            borderRadius:
                BorderRadius.circular(50.0), // Set your desired corner radius
          ),
          onPressed: () {
            // Handle add favorite button press
          },
          backgroundColor: const Color.fromARGB(255, 10, 52, 124),
          child: const Icon(
            Icons.add,
            color: Colors.yellow,
            size: 50,
          ),
        ),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(
            color: const Color.fromARGB(255, 133, 154, 191),
            width: 5.0,
          ),
        ),
      ),
      bottomNavigationBar: const BottomAppBar(
        color: Color.fromARGB(255, 10, 52, 124),
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Center(
                child: Text(
                  'AZ alphabetical order',
                  style: TextStyle(
                    color: Colors.yellow,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Icon(
                Icons.filter_list,
                color: Colors.yellow,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
