import 'package:bank/screen/Screen_Main/main_screen.dart';
import 'package:flutter/material.dart';

class Promotions extends StatelessWidget {
  const Promotions({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 8, 59, 98),
        centerTitle: true,
        iconTheme: const IconThemeData(color: Colors.white),
        title: const Text(
          'PROMOTIONS',
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
      body: ListView(
        children: <Widget>[
          Image.asset(
            'assets/images/bannerpromotion.jpg',
            fit: BoxFit.cover,
          ),
          SizedBox(height: 20),
          Text(
            'GET UP TO KHR1,200,000',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 20),
          Text(
            'Terms and conditions apply.',
            style: TextStyle(
              fontSize: 16,
              color: Colors.grey,
            ),
          ),
          SizedBox(height: 10),
          Image.asset(
            'assets/images/bannerpromotion.jpg',
            fit: BoxFit.cover,
          ),
          SizedBox(height: 20),
          Text(
            'GET UP TO KHR1,200,000',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 10),
          Text(
            'Terms and conditions apply.',
            style: TextStyle(
              fontSize: 16,
              color: Colors.grey,
            ),
          ),
          SizedBox(height: 10),
          Image.asset(
            'assets/images/bannerpromotion.jpg',
            fit: BoxFit.cover,
          ),
          SizedBox(height: 20),
          Text(
            'GET UP TO KHR1,200,000',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 10),
          Text(
            'Terms and conditions apply.',
            style: TextStyle(
              fontSize: 16,
              color: Colors.grey,
            ),
          ),
          SizedBox(height: 10),
          Image.asset(
            'assets/images/bannerpromotion.jpg',
            fit: BoxFit.cover,
          ),
          SizedBox(height: 20),
          Text(
            'GET UP TO KHR1,200,000',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 10),
          Text(
            'Terms and conditions apply.',
            style: TextStyle(
              fontSize: 16,
              color: Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}
