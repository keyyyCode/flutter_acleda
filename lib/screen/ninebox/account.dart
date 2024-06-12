import 'package:bank/screen/Screen_drawer/main_screen.dart';
import 'package:flutter/material.dart';

class ScreenAccount extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 8, 59, 98),
        centerTitle: true,
        iconTheme: const IconThemeData(color: Colors.white),
        title: const Text(
          'ACCOUNTS',
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => HomepageSreen(),
                ),
              );
            },
            icon: Image.asset(
              'assets/icons/acleda.png',
              width: 33,
              height: 33,
            ),

            // padding: const EdgeInsets.all(16.0),
          )
        ],
      ),
      body: ColorChanger(),
    );
  }
}

class ColorChanger extends StatefulWidget {
  @override
  _ColorChangerState createState() => _ColorChangerState();
}

class _ColorChangerState extends State<ColorChanger> {
  final List<Color> initialColors =
      List.filled(4, Color.fromARGB(255, 19, 27, 83));
  final List<Color> initialTextColors =
      List.filled(4, Color.fromARGB(255, 95, 207, 80));
  late List<Color> currentColors;
  late List<Color> currentTextColors;

  @override
  void initState() {
    super.initState();
    currentColors = List.from(initialColors);
    currentTextColors = List.from(initialTextColors);
  }

  void changeColor(int index) {
    setState(() {
      currentColors[index] = (currentColors[index] == initialColors[index])
          ? Color.fromARGB(255, 8, 59, 98)
          : initialColors[index];
      currentTextColors[index] = (currentColors[index] == initialColors[index])
          ? Colors.white
          : initialTextColors[index];
    });
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        body: Center(
          child: Column(
            children: [
              Row(
                children: List.generate(
                  4,
                  (index) => buildAccountBox(
                      index, currentColors[index], currentTextColors[index]),
                ),
              ),
              balanceCard(context, '041 563 475', 'Available balance',
                  'Wallet Account', '0.00 KHR'),
              balanceCard(context, '051 845 455', 'Available balance',
                  'Wallet Account', '0.00 USD'),
              SizedBox(height: 473),
              transactionHistory(context),
            ],
          ),
        ),
      );

  Widget buildAccountBox(int index, Color color, Color textColor) => Expanded(
        child: InkWell(
          onTap: () => changeColor(index),
          child: Container(
            height: 50,
            color: color,
            child: Center(
              child: Text(
                ['ACCOUNTS', 'TRADING', 'CARDS', 'LINK'][index],
                style: TextStyle(
                    color: textColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 16),
              ),
            ),
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

  Widget transactionHistory(BuildContext context) => Container(
        height: 60,
        color: const Color.fromARGB(255, 19, 27, 83),
        width: double.infinity,
        child: const Center(
          child: Text(
            'TRANSACTION HISTORY',
            style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 45, 231, 116)),
          ),
        ),
      );
}
