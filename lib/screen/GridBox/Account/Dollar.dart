import 'package:flutter/material.dart';

class DollarWallet extends StatelessWidget {
  const DollarWallet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'DollarWallet',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
        backgroundColor: const Color.fromARGB(255, 8, 59, 98),
        centerTitle: true,
        iconTheme: const IconThemeData(color: Colors.white),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Image.asset('assets/icons/body/acleda.png', width: 33, height: 33),
          ),
        ],
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 8, 59, 98),
              ],
              begin: Alignment.center,
              end: Alignment.bottomCenter,
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              // height: 80,
              color: Color.fromARGB(255, 28, 30, 52),
              width: double.infinity,
              child: Center(
                child: Text(
                  'USA 041 563 475\n  Wallet Account',
                  style: TextStyle(
                    color: Color.fromARGB(255, 184, 255, 18),
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 630,
          ),
          Container(
            height: 70,
            color: Color.fromARGB(255, 36, 41, 94),
            width: double.infinity,
            child: Row(children: [
              Padding(
                padding: const EdgeInsets.only(left: 70),
                child: Text(
                  'SORT ALL TRANSACTIONS',
                  style: TextStyle(
                    color: Color.fromARGB(255, 184, 255, 18),
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ),
              IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(
                  Icons.keyboard_arrow_down_outlined,
                  color: Color.fromARGB(255, 184, 255, 18),
                  size: 40,
                ),
              ),
            ]),
          ),
        ],
      ),
    );
  }
}
