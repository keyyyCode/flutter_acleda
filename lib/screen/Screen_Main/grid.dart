import 'package:bank/Models/data/route_data..dart';
import 'package:flutter/material.dart';

class GridBox extends StatelessWidget {
  const GridBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) {
          return Center(
            child: Container(
              decoration: const BoxDecoration(
                gradient: RadialGradient(
                  colors: [Color(0xFF6486DA), Color(0xFF083B62)],
                  radius: 0.5,
                ),
                boxShadow: [BoxShadow(blurRadius: 2)],
              ),
              child: GridView.builder(
                physics: const NeverScrollableScrollPhysics(),
                itemCount: HomeScreenData.categories.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  childAspectRatio: 1,
                  crossAxisSpacing: 2,
                  mainAxisSpacing: 2,
                ),
                itemBuilder: (context, index) {
                  final category = HomeScreenData.categories[index];
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => category.route));
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: const Color(0xFF083B62),
                        boxShadow: [
                          BoxShadow(
                              color: const Color(0xFF131B53).withOpacity(0.3),
                              blurRadius: 5)
                        ],
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            category.assetPath,
                            width: 50,
                            height: 50,
                            color: Color.fromARGB(255, 222, 216,
                                216), // Adjust the color as needed
                          ),
                          const SizedBox(height: 10),
                          Text(category.name,
                              style: const TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                              textAlign: TextAlign.center),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          );
        },
      ),
    );
  }
}
