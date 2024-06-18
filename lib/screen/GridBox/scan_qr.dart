import 'package:bank/screen/Screen_Main/main_screen.dart';
import 'package:flutter/material.dart';

class Scan_Qr extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: const Text(
            'Scan_Qr',
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),
          ),
          backgroundColor: const Color.fromARGB(255, 8, 59, 98),
          centerTitle: true,
          iconTheme: const IconThemeData(color: Colors.white),
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
              balanceCard(context, '041 563 475', 'Available balance',
                  'Wallet Account', '0.00 KHR'),
              balanceCard(context, '051 845 455', 'Available balance',
                  'Wallet Account', '0.00 USD'),
            ],
          ),
        ),
      );
  Widget balanceCard(BuildContext context, String phoneNum, String accountName,
          String amount, String Wallet) =>
      Card(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: 50.0,
                height: 50.0,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: AssetImage('assets/icons/menus.png'),
                  ),
                ),
                margin: const EdgeInsets.only(right: 10.0),
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(phoneNum, style: const TextStyle(fontSize: 16.0)),
                    Text(accountName, style: const TextStyle(fontSize: 14.0)),
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(amount, style: const TextStyle(fontSize: 16.0)),
                    Text(Wallet, style: const TextStyle(fontSize: 14.0)),
                  ],
                ),
              ),
            ],
          ),
        ),
      );
}
