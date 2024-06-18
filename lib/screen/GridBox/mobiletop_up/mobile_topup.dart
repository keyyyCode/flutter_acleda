import 'package:bank/screen/GridBox/BalanceCard.dart';
import 'package:bank/screen/GridBox/mobiletop_up/Pinless.dart';
import 'package:bank/screen/GridBox/mobiletop_up/Pinvoucher.dart';
import 'package:bank/screen/GridBox/mobiletop_up/buttonsheet.dart';
import 'package:bank/screen/Screen_Main/main_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Mobile_Top_Up extends StatefulWidget {
  @override
  _MobileTopUpState createState() => _MobileTopUpState();
}

class _MobileTopUpState extends State<Mobile_Top_Up>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  int _selectedIndex = 0;
  final List<String> _titles = ['PINLESS', 'PIN VOUCHER'];

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

  void _PinlessSheet1(BuildContext context) {
    showModalBottomSheet<void>(
      context: context,
      builder: (BuildContext context) {
        return BottomSheetSelector(
          title: 'PLEASE SELECT ACCOUNT',
          items: [
            BalanceCard(
              context,
              '041 563 475',
              'Available balance',
              'Wallet Account',
              '0.00 KHR',
            ),
            BalanceCard(
              context,
              '051 845 455',
              'Available balance',
              'Wallet Account',
              '0.00 USD',
            ),
          ],
        );
      },
    );
  }

  void _PinlessSheet2(BuildContext context) {
    showModalBottomSheet<void>(
      context: context,
      builder: (BuildContext context) {
        return BottomSheetSelector(
          title: 'PLEASE SELECT FORM FAVORITE',
          items: [
            Row(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const HomepageScreen(),
                      ),
                    );
                  },
                  child: Container(
                    height: 40,
                    width: 250,
                    margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 196, 189, 189),
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 5),
                      child: Row(
                        // mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(
                            Icons.search_outlined,
                            size: 20,
                            color: Colors.blue,
                          ),
                          SizedBox(width: 10),
                          Text(
                            'Search',
                            style: TextStyle(fontSize: 16, color: Colors.black),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const HomepageScreen(),
                      ),
                    );
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Container(
                      height: 40,
                      width: 70,
                      decoration: BoxDecoration(
                        // color: const Color.fromARGB(255, 196, 189, 189),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 5),
                        child: Center(
                          child: Text(
                            'Cancel',
                            style: TextStyle(
                                fontSize: 18,
                                color: const Color.fromARGB(255, 255, 0, 0),
                                fontWeight: FontWeight.w800),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        );
      },
    );
  }

  void _PinvoucherSheet1(BuildContext context) {
    showModalBottomSheet<void>(
      context: context,
      builder: (BuildContext context) {
        return BottomSheetSelector(
          title: 'PLEASE SELECT ACCOUNT',
          items: [
            BalanceCard(
              context,
              '041 563 475',
              'Available balance',
              'Wallet Account',
              '0.00 KHR',
            ),
            BalanceCard(
              context,
              '051 845 455',
              'Available balance',
              'Wallet Account',
              '0.00 USD',
            ),
          ],
        );
      },
    );
  }

  void _PinvoucherSheet2(BuildContext context) {
    showModalBottomSheet<void>(
      context: context,
      builder: (BuildContext context) {
        return BottomSheetSelector1(
          title: 'SELECT MOBILE OPARETOR',
          items: [
            SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const HomepageScreen(),
                        ),
                      );
                    },
                    child: Container(
                      width: 411,
                      height: 50,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Color.fromARGB(255, 207, 196, 196),
                            spreadRadius: 0.5,
                            blurRadius: 4,
                            offset: Offset(0, 4),
                          ),
                        ],
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Row(
                          // mainAxisSize: MainAxisSize.min,
                          children: [
                            ClipOval(
                              child: Image.asset(
                                'assets/images/ahsmart.jpg',
                                width: 30,
                                height: 30,
                                fit: BoxFit.cover,
                              ),
                            ),
                            SizedBox(width: 10),
                            Text(
                              'Smart',
                              style:
                                  TextStyle(fontSize: 16, color: Colors.black),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const HomepageScreen(),
                        ),
                      );
                    },
                    child: Container(
                      width: 411,
                      height: 50,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Color.fromARGB(255, 207, 196, 196),
                            spreadRadius: 0.5,
                            blurRadius: 4,
                            offset: Offset(0, 4),
                          ),
                        ],
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Row(
                          // mainAxisSize: MainAxisSize.min,
                          children: [
                            ClipOval(
                              child: Image.asset(
                                'assets/images/metphone.jpg',
                                width: 30,
                                height: 30,
                                fit: BoxFit.cover,
                              ),
                            ),
                            SizedBox(width: 10),
                            Text(
                              'Metfone',
                              style:
                                  TextStyle(fontSize: 16, color: Colors.black),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const HomepageScreen(),
                        ),
                      );
                    },
                    child: Container(
                      width: 411,
                      height: 50,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Color.fromARGB(255, 207, 196, 196),
                            spreadRadius: 0.5,
                            blurRadius: 4,
                            offset: Offset(0, 4),
                          ),
                        ],
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Row(
                          // mainAxisSize: MainAxisSize.min,
                          children: [
                            ClipOval(
                              child: Image.asset(
                                'assets/images/cellcard.jpg',
                                width: 30,
                                height: 30,
                                fit: BoxFit.cover,
                              ),
                            ),
                            SizedBox(width: 10),
                            Text(
                              'CellCard',
                              style:
                                  TextStyle(fontSize: 16, color: Colors.black),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const HomepageScreen(),
                        ),
                      );
                    },
                    child: Container(
                      width: 411,
                      height: 50,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Color.fromARGB(255, 207, 196, 196),
                            spreadRadius: 0.5,
                            blurRadius: 4,
                            offset: Offset(0, 4),
                          ),
                        ],
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Row(
                          // mainAxisSize: MainAxisSize.min,
                          children: [
                            ClipOval(
                              child: Image.asset(
                                'assets/images/seatel.jpg',
                                width: 30,
                                height: 30,
                                fit: BoxFit.cover,
                              ),
                            ),
                            SizedBox(width: 10),
                            Text(
                              'Seatel',
                              style:
                                  TextStyle(fontSize: 16, color: Colors.black),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const HomepageScreen(),
                        ),
                      );
                    },
                    child: Container(
                      width: 411,
                      height: 50,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Color.fromARGB(255, 207, 196, 196),
                            spreadRadius: 0.5,
                            blurRadius: 4,
                            offset: Offset(0, 4),
                          ),
                        ],
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Row(
                          // mainAxisSize: MainAxisSize.min,
                          children: [
                            ClipOval(
                              child: Image.asset(
                                'assets/images/cootel.jpg',
                                width: 30,
                                height: 30,
                                fit: BoxFit.cover,
                              ),
                            ),
                            SizedBox(width: 10),
                            Text(
                              'Cootel',
                              style:
                                  TextStyle(fontSize: 16, color: Colors.black),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const HomepageScreen(),
                        ),
                      );
                    },
                    child: Container(
                      width: 411,
                      height: 50,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Color.fromARGB(255, 207, 196, 196),
                            spreadRadius: 0.5,
                            blurRadius: 4,
                            offset: Offset(0, 4),
                          ),
                        ],
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Row(
                          // mainAxisSize: MainAxisSize.min,
                          children: [
                            ClipOval(
                              child: Image.asset(
                                'assets/images/tvone.jpg',
                                width: 30,
                                height: 30,
                                fit: BoxFit.cover,
                              ),
                            ),
                            SizedBox(width: 10),
                            Text(
                              'One TV',
                              style:
                                  TextStyle(fontSize: 16, color: Colors.black),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        );
      },
    );
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
          PinlessTabContent(
            PinlessSheet1: () => _PinlessSheet1(context),
            PinlessSheet2: () => _PinlessSheet2(context),
          ),
          PinvoucherTap(
            PinvoucherSheet1: () => _PinvoucherSheet1(context),
            PinvoucherSheet2: () => _PinvoucherSheet2(context),
          ),
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

  IconData getTabIcon(int index) {
    switch (index) {
      case 0:
        return Icons.pin_drop_outlined;
      case 1:
        return Icons.pin_end_outlined;
      default:
        return Icons.home;
    }
  }
}
