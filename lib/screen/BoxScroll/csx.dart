import 'package:bank/screen/Screen_Main/main_screen.dart';
import 'package:flutter/material.dart';

class CSX_Trade extends StatelessWidget {
  final List<Map<String, dynamic>> securities = [
    {'name': 'ABC', 'logo': 'assets/images/logo.png'},
    {'name': 'PPSP', 'logo': 'assets/images/psp.png'},
    {'name': 'DBDE', 'logo': 'assets/images/dbde.png'},
    {'name': 'GTI', 'logo': 'assets/images/gti.png'},
    {'name': 'MJQE', 'logo': 'assets/images/mjqe.jpg'},
    {'name': 'PPAP', 'logo': 'assets/images/ppap.png'},
    {'name': 'PWSA', 'logo': 'assets/images/pwsa.png'},
    {'name': 'JSL', 'logo': 'assets/images/jsl.png'},
    {'name': 'PEPC', 'logo': 'assets/images/pepc.png'},
    {'name': 'PEPC', 'logo': 'assets/images/pas.jpg'},
    {'name': 'PEPC', 'logo': 'assets/images/cgsm.png'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 8, 59, 98),
        centerTitle: true,
        iconTheme: const IconThemeData(color: Colors.white),
        title: const Text(
          'CHS Trade',
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
      body: Column(
        children: [
          Container(
            // color: const Color(0xFF131B53).withOpacity(0.8),
            padding: const EdgeInsets.all(8.0),
            child: const Column(
              children: [
                Text(
                  'Jun 18, 2024 12:17:08 AM',
                  style: TextStyle(color: Colors.amber, fontSize: 16.0),
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: securities.length,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: Image.asset(securities[index]['logo'],
                      width: 40, height: 40),
                  title: Text(securities[index]['name'],
                      style: const TextStyle(color: Colors.white)),
                  trailing: const Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text('0', style: TextStyle(color: Colors.white)),
                      Icon(Icons.arrow_forward_ios,
                          color: Colors.white, size: 16.0),
                      Text('0៛', style: TextStyle(color: Colors.white)),
                    ],
                  ),
                );
              },
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
            child: Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        // foregroundColor: Colors.white,
                        backgroundColor: const Color.fromARGB(255, 211, 46, 46),
                      ),
                      child: const Text(
                        'SELL',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      )),
                ),
                const SizedBox(width: 16.0),
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      // foregroundColor: Colors.white,
                      backgroundColor: const Color.fromARGB(255, 85, 138, 32),
                    ),
                    child: const Text(
                      'BUY',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: [
          const BottomNavigationBarItem(icon: Icon(Icons.home), label: 'HOME'),
          const BottomNavigationBarItem(
              icon: Icon(Icons.show_chart), label: 'QUOTES'),
          const BottomNavigationBarItem(
              icon: Icon(Icons.receipt), label: 'ORDERS'),
          const BottomNavigationBarItem(
              icon: Icon(Icons.account_balance_wallet), label: 'BALANCE'),
        ],
        selectedItemColor: Colors.amber,
        unselectedItemColor: Colors.white,
        backgroundColor: const Color.fromARGB(255, 8, 59, 98),
      ),
      backgroundColor: const Color.fromARGB(255, 8, 41, 66),
    );
  }
}
