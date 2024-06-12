
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);

  final List<String> catNames = [
    "Category",
    'Classes',
    'Free Course',
    'BookStore',
    'Live Course',
    'Leaderboard',
  ];

  final List<Color> catColors = [
    Color.fromARGB(255, 30, 41, 94),
    Colors.blue,
    Colors.green,
    Colors.orange,
    Colors.purple,
    Colors.teal,
  ];

  final List<Icon> catIcons = [
    Icon(Icons.category, color: Colors.white, size: 30),
    Icon(Icons.payment, color: Colors.white, size: 30),
    Icon(Icons.book, color: Colors.white, size: 30),
    Icon(Icons.store, color: Colors.white, size: 30),
    Icon(Icons.live_tv, color: Colors.white, size: 30),
    Icon(Icons.leaderboard, color: Colors.white, size: 30),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            padding: const EdgeInsets.only(
                top: 20, left: 20, bottom: 10, right: 20),
            decoration: const BoxDecoration(
              color: Colors.blue,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    const Icon(
                      Icons.dashboard,
                      size: 30,
                      color: Colors.white,
                    ),
                    const SizedBox(width: 80),
                    const Padding(
                      padding: EdgeInsets.only(left: 3),
                      child: Center(
                        child: Text(
                          "BANK APP",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                            fontWeight: FontWeight.w500,
                            letterSpacing: 1,
                            wordSpacing: 2,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 55),
                    const Icon(
                      Icons.notifications,
                      size: 30,
                      color: Colors.white,
                    ),
                    const SizedBox(width: 10),
                    const Icon(
                      Icons.scanner,
                      size: 30,
                      color: Colors.white,
                    ),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 30, left: 10, right: 10),
            child: GridView.builder(
              itemCount: catNames.length,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                childAspectRatio: 1.1,
              ),
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    Container(
                      height: 80,
                      width: 80,
                      decoration: BoxDecoration(
                        color: catColors[index],
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.3),
                            blurRadius: 5,
                          ),
                        ],
                      ),
                      child: Center(child: catIcons[index]),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      catNames[index],
                      style: const TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
