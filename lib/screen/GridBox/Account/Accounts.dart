import 'package:bank/screen/GridBox/Account/Dollar.dart';
import 'package:bank/screen/GridBox/Account/khmer.dart';
import 'package:bank/screen/Screen_Main/main_screen.dart';
import 'package:flutter/material.dart';

class Account extends StatefulWidget {
  @override
  _AccountState createState() => _AccountState();
}

class _AccountState extends State<Account> with SingleTickerProviderStateMixin {
  int _selectedIndex = 0;
  late TabController _tabController;
  final List<String> _titles = ['ACCOUNTS', 'TRADING', 'CARDS', 'LINKS'];

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: _titles.length, vsync: this);
    _tabController.addListener(() {
      setState(() {
        _selectedIndex = _tabController.index;
      });
    });
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 8, 59, 98),
        centerTitle: true,
        iconTheme: const IconThemeData(color: Colors.white),
        title: Text(
          _titles[_selectedIndex],
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pop(
                context,
                MaterialPageRoute(builder: (context) => const HomepageScreen()),
              );
            },
            icon: Image.asset(
              'assets/icons/body/acleda.png',
              width: 33,
              height: 33,
            ),
          )
        ],
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(60.0),
          child: buildTabBar(),
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          buildAccountTab(
              '041 563 475', 'Available balance', '0.00 USA', 'Wallet Account'),
          buildSimpleTab('COMING SOON', 'Trading Tab Content'),
          buildSimpleTab('COMING SOON', 'Card Tab Content'),
          buildLinkTab(),
        ],
      ),
    );
  }

  Widget buildTabBar() {
    return Container(
      color: const Color.fromARGB(255, 28, 30, 52),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: List.generate(
          _titles.length,
          (index) => Expanded(
            child: GestureDetector(
              onTap: () {
                setState(() {
                  _selectedIndex = index;
                  _tabController.index = index;
                });
              },
              child: Container(
                height: 60,
                color: _selectedIndex == index
                    ? const Color.fromARGB(255, 8, 59, 98)
                    : const Color.fromARGB(255, 28, 30, 52),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      getTabIcon(index),
                      size: 24.0,
                      color: _selectedIndex == index
                          ? Colors.white
                          : const Color.fromARGB(255, 165, 219, 57),
                    ),
                    Text(
                      _titles[index],
                      style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                        color: _selectedIndex == index
                            ? Colors.white
                            : const Color.fromARGB(255, 165, 219, 57),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget buildAccountTab(
      String phoneNum, String accountName, String amount, String wallet) {
    return SingleChildScrollView(
      child: Column(
        children: [
          AccountInfoDollar(phoneNum, accountName, amount, wallet),
          AccountInfoKhmer(
              '056 456 434', 'Available balance', '0.00 KHR', 'Wallet Account'),
          const SizedBox(
            height: 426,
          ),
          buildTransactionHistory(),
        ],
      ),
    );
  }

  Widget AccountInfoKhmer(
      String phoneNum, String accountName, String amount, String wallet) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const KhmerWallet()));
      },
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Container(
          height: 80,
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10.0),
            boxShadow: [
              const BoxShadow(
                  color: Colors.black, blurRadius: 6.0, offset: Offset(0, 2))
            ],
          ),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                buildIconContainer('assets/icons/curency/real.png'),
                buildAccountDetails(phoneNum, accountName),
                buildAccountDetails(wallet, amount, isRightAligned: true),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget AccountInfoDollar(
      String phoneNum, String accountName, String amount, String wallet) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const DollarWallet()));
      },
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Container(
          height: 80,
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10.0),
            boxShadow: [
              const BoxShadow(
                  color: Colors.black, blurRadius: 6.0, offset: Offset(0, 2))
            ],
          ),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                buildIconContainer('assets/icons/curency/dollarss.png'),
                buildAccountDetails(phoneNum, accountName),
                buildAccountDetails(wallet, amount, isRightAligned: true),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget buildIconContainer(String assetPath) {
    return Container(
      width: 50.0,
      height: 50.0,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(image: AssetImage(assetPath), fit: BoxFit.cover),
      ),
      margin: const EdgeInsets.only(right: 10.0),
    );
  }

  Widget buildAccountDetails(String title, String subtitle,
      {bool isRightAligned = false}) {
    return Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment:
            isRightAligned ? CrossAxisAlignment.end : CrossAxisAlignment.start,
        children: [
          Text(title, style: const TextStyle(fontSize: 16.0)),
          Text(subtitle,
              style: const TextStyle(fontSize: 14.0, color: Colors.grey)),
        ],
      ),
    );
  }

  Widget buildTransactionHistory() {
    return Container(
      height: 70,
      width: double.infinity,
      color: const Color.fromARGB(255, 65, 76, 194),
      child: const Center(
        child: Text('TRANSACTION HISTORY',
            style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
                color: Colors.white)),
      ),
    );
  }

  Widget buildSimpleTab(String message, String centerText) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Container(
              margin: const EdgeInsets.only(top: 250),
              height: 80,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10.0),
                boxShadow: [
                  const BoxShadow(
                      color: Colors.black,
                      blurRadius: 6.0,
                      offset: Offset(4, 4))
                ],
              ),
              child: Center(
                child: Text(message,
                    style: const TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 219, 37, 37))),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildLinkTab() {
    return SingleChildScrollView(
      child: Column(
        children: [
          buildLinkSection('ACLEDA BANK ACCOUNT / CARD',
              const Color.fromARGB(255, 18, 21, 63)),
          buildLinkSection(
              'LINK OTHER ACCOUNT', const Color.fromARGB(255, 255, 7, 7)),
          buildLinkSection(
              'TRADING ACCOUNT', const Color.fromARGB(255, 18, 21, 63)),
          buildLinkSection(
              'LINK OTHER TRADING', const Color.fromARGB(255, 255, 7, 7)),
        ],
      ),
    );
  }

  Widget buildLinkSection(String text, Color color) {
    return Container(
      height: 60,
      width: double.infinity,
      color: color.withAlpha(80),
      child: Center(
        child: Text(text,
            style: TextStyle(
                fontSize: 20.0, fontWeight: FontWeight.bold, color: color)),
      ),
    );
  }

  IconData getTabIcon(int index) {
    switch (index) {
      case 0:
        return Icons.account_balance;
      case 1:
        return Icons.star;
      case 2:
        return Icons.card_giftcard;
      case 3:
        return Icons.link_outlined;
      default:
        return Icons.home;
    }
  }
}
