import 'package:bank/screen/Screen_Main/main_screen.dart';
import 'package:flutter/material.dart';

class ExchangeRateWidget extends StatelessWidget {
  final List<Map<String, dynamic>> rates = [
    {'currency': 'USD', 'buy': 4120.00, 'sell': 4131.00, 'flag': '🇺🇸'},
    {'currency': 'THB', 'buy': 111.10, 'sell': 113.90, 'flag': '🇹🇭'},
    {'currency': 'EUR', 'buy': 4284.56, 'sell': 4548.09, 'flag': '🇪🇺'},
    {'currency': 'AUD', 'buy': 2596.18, 'sell': 2853.56, 'flag': '🇦🇺'},
    {'currency': 'VND', 'buy': 0.1587, 'sell': 0.1643, 'flag': '🇻🇳'},
    {'currency': 'CAD', 'buy': 2501.90, 'sell': 3089.50, 'flag': '🇨🇦'},
    {'currency': 'JPY', 'buy': 25.3151, 'sell': 26.5553, 'flag': '🇯🇵'},
    {'currency': 'LAK', 'buy': 0.1555, 'sell': 0.2023, 'flag': '🇱🇦'},
    {'currency': 'CNY', 'buy': 555.60, 'sell': 574.22, 'flag': '🇨🇳'},
    {'currency': 'GBP', 'buy': 5093.96, 'sell': 5360.44, 'flag': '🇬🇧'},
    {'currency': 'USD/VND', 'buy': 25500.00, 'sell': 25950.00, 'flag': '🇺🇸'},
    {'currency': 'USD/JPY', 'buy': 155.60, 'sell': 162.63, 'flag': '🇺🇸'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 8, 59, 98),
        centerTitle: true,
        iconTheme: const IconThemeData(color: Colors.white),
        title: const Text(
          'EXCHANGE',
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
            color: const Color.fromARGB(255, 8, 59, 98),
            padding: const EdgeInsets.all(16.0),
            child: const Column(
              children: [
                Text(
                  'June 17, 2024 04:05: PM',
                  style: TextStyle(color: Colors.amber, fontSize: 16.0),
                ),
                SizedBox(height: 8.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('CURRENCY',
                        style: TextStyle(color: Colors.white, fontSize: 16.0)),
                    Text('BUY',
                        style: TextStyle(color: Colors.white, fontSize: 16.0)),
                    Text('SELL',
                        style: TextStyle(color: Colors.white, fontSize: 16.0)),
                  ],
                ),
              ],
            ),
          ),
          Container(
            height: 100,
            color: const Color.fromARGB(255, 233, 242, 178),
            padding: const EdgeInsets.all(16.0),
            child: const Column(
              children: [
                Text(
                  'Specail rate for transection on ACLEDA mobile',
                  style: TextStyle(
                      color: Color.fromARGB(255, 164, 138, 58), fontSize: 16.0),
                ),
                SizedBox(height: 15.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('USD',
                        style: TextStyle(
                            color: Color.fromARGB(255, 26, 18, 66),
                            fontSize: 16.0,
                            fontWeight: FontWeight.bold)),
                    Text('KHR 4,1200',
                        style: TextStyle(
                            color: Color.fromARGB(255, 26, 18, 66),
                            fontSize: 16.0,
                            fontWeight: FontWeight.bold)),
                    Text('KHR 4,1200',
                        style: TextStyle(
                            color: Color.fromARGB(255, 26, 18, 66),
                            fontSize: 16.0,
                            fontWeight: FontWeight.bold)),
                  ],
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: rates.length,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: Text(
                    rates[index]['flag'],
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 23),
                  ),
                  title: Text(
                    rates[index]['currency'],
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 17,
                    ),
                  ),
                  subtitle: Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Buy: ${rates[index]['buy']}',
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 16,
                          ),
                        ),
                        Text(
                          'Sell: ${rates[index]['sell']}',
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
