import 'package:bank/screen/GridBox/loan.dart';
import 'package:bank/screen/Screen_Main/main_screen.dart';
import 'package:flutter/material.dart';

class Quick_Cush extends StatefulWidget {
  @override
  _QuickCashScreenState createState() => _QuickCashScreenState();
}

class _QuickCashScreenState extends State<Quick_Cush> {
  String recipientAccountNumber = "";
  String amount = "";
  String remark = "";

  void _showBottomSheet() {
    showModalBottomSheet<void>(
      context: context,
      builder: (BuildContext context) {
        return Container(
          height: 300,
          child: Column(
            children: [
              Container(
                  height: 50,
                  decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 34, 56, 164),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    ),
                    // border:
                    //     Border.all(color: Color.fromARGB(255, 65, 57, 57)),
                  ),
                  child: const Center(
                      child: Text(
                    'PLEASE SELECT ACCOUNT',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ))),
              balanceCard(context, '041 563 475', 'Available balance',
                  'Wallet Account', '0.00 KHR'),
              balanceCard(context, '051 845 455', 'Available balance',
                  'Wallet Account', '0.00 USD'),
            ],
          ),
        );
      },
    );
  }

  void _showBottomSheet2() {
    showModalBottomSheet<void>(
      context: context,
      builder: (BuildContext context) {
        return Container(
          height: 300,
          child: Column(
            children: [
              Container(
                height: 50,
                decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 34, 56, 164),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                ),
                child: const Center(
                  child: Text(
                    'PLEASE SELECT CURRENCY',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
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
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 80,
                  margin: const EdgeInsets.only(top: 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    boxShadow: [
                      BoxShadow(
                        color: const Color.fromARGB(255, 74, 109, 162)
                            .withOpacity(0.3),
                        blurRadius: 8,
                      ),
                    ],
                  ),
                  child: const Card(
                    child: Padding(
                      padding: EdgeInsets.only(top: 16, left: 16, bottom: 16),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'USA',
                            style: TextStyle(
                              fontSize: 16.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
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
                      builder: (context) => Loans(),
                    ),
                  );
                },
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 80,
                  margin: const EdgeInsets.only(top: 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    boxShadow: [
                      BoxShadow(
                        color: const Color.fromARGB(255, 74, 109, 162)
                            .withOpacity(0.3),
                        blurRadius: 8,
                      ),
                    ],
                  ),
                  child: const Card(
                    child: Padding(
                      padding: EdgeInsets.only(top: 16, left: 16, bottom: 16),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'KHR',
                            style: TextStyle(
                              fontSize: 16.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'QUICK CASH',
          style: TextStyle(
              color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 8, 59, 98),
        iconTheme: const IconThemeData(color: Colors.white),
        actions: [
          IconButton(
            icon: Image.asset('assets/icons/body/acleda.png',
                width: 33, height: 33),
            onPressed: () => Navigator.pop(
              context,
              MaterialPageRoute(builder: (context) => const HomepageScreen()),
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 100),
              child: Container(
                color: const Color.fromARGB(255, 205, 192, 192),
                width: double.infinity,
                height: 700,
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    _buildTextFieldContainer(
                      labelText: 'Recipient Account Number',
                      onChanged: (value) {},
                      icona: IconButton(
                        onPressed: () {
                          _showBottomSheet();
                        },
                        icon: const Icon(
                          Icons.folder_copy_outlined,
                          size: 25,
                          color: Color.fromARGB(255, 54, 93, 176),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    _buildTextFieldContainer(
                      labelText: 'Amount (USD)',
                      onChanged: (value) {},
                      icona: IconButton(
                        onPressed: () {
                          _showBottomSheet2();
                        },
                        icon: const Icon(
                          Icons.arrow_downward_outlined,
                          size: 25,
                          color: Color.fromARGB(255, 54, 93, 176),
                        ),
                      ),
                    ),
                    const SizedBox(height: 16.0),
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const HomepageScreen(),
                          ),
                        );
                      },
                      child: Container(
                        width: 200,
                        height: 50,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 54, 149, 232),
                          borderRadius: BorderRadius.circular(20.0),
                          boxShadow: [
                            BoxShadow(
                              color: const Color(0xFF131B53).withOpacity(0.8),
                              blurRadius: 4,
                            ),
                          ],
                        ),
                        child: const Center(
                          child: Text(
                            'OK',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              height: 100,
              width: double.infinity,
              margin: const EdgeInsets.only(bottom: 4),
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: const Color(0xFF131B53).withOpacity(0.8),
                    blurRadius: 8,
                  )
                ],
                color: const Color.fromARGB(255, 255, 255, 255),
              ),
              child: IconButton(
                onPressed: () {},
                icon: Image.asset(
                  'assets/icons/body/quick_cashfull.png',
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTextFieldContainer({
    required String labelText,
    required Function(String) onChanged,
    required Widget icona,
  }) {
    return Container(
      height: 50,
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 255, 255, 255),
        borderRadius: BorderRadius.circular(20.0),
        boxShadow: [
          BoxShadow(
            color: const Color(0xFF131B53).withOpacity(0.8),
            blurRadius: 4,
          )
        ],
      ),
      child: Row(
        children: [
          Expanded(
            child: Padding(
              padding:
                  const EdgeInsets.only(left: 20.0, bottom: 10.0, right: 60.0),
              child: TextField(
                decoration: InputDecoration(
                  // border: InputBorder.none,
                  labelText: labelText,
                ),
                onChanged: onChanged,
              ),
            ),
          ),
          icona,
        ],
      ),
    );
  }

  Widget balanceCard(BuildContext context, String phoneNum, String accountName,
          String amount, String Wallet) =>
      Container(
        width: MediaQuery.of(context).size.width,
        height: 90,
        margin: const EdgeInsets.only(top: 10),
        decoration: BoxDecoration(
          // color: Color.fromARGB(255, 255, 255, 255),
          borderRadius: BorderRadius.circular(20.0),
          boxShadow: [
            BoxShadow(
              color: const Color.fromARGB(255, 74, 109, 162).withOpacity(0.3),
              blurRadius: 8,
            ),
          ],
        ),
        child: Card(
          child: Padding(
            padding: const EdgeInsets.only(top: 16, left: 16, bottom: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
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
                const SizedBox(
                  width: 60,
                ),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Column(
                        children: [
                          Text(amount, style: const TextStyle(fontSize: 16.0)),
                          Text(Wallet, style: const TextStyle(fontSize: 14.0)),
                        ],
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.arrow_forward_ios),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      );
}
