import 'package:bank/screen/GridBox/BalanceCard.dart';
import 'package:bank/screen/GridBox/Qr_me/subscreenQr.dart';
import 'package:bank/screen/GridBox/mobiletop_up/buttonsheet.dart';
import 'package:bank/screen/Screen_Main/main_screen.dart';
import 'package:flutter/material.dart';

class QR_Screens extends StatelessWidget {
  const QR_Screens({super.key});
  void _Qrsheet(BuildContext context) {
    showModalBottomSheet<void>(
      context: context,
      builder: (BuildContext context) {
        return BottomSheetSelector(
          title: 'PLEASE SELECT ACCOUNT',
          items: [
            BalanceCard2(
              '041 563 475',
              'Available balance',
              'Wallet Account',
              '0.00 KHR',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SubQr()),
                );
              },
            ),
            BalanceCard2(
              '051 845 455',
              'Available balance',
              'Wallet Account',
              '0.00 USD',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => QR_Screens()),
                );
              },
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
        leading: Builder(
          builder: (context) => IconButton(
            icon: Image.asset(
              'assets/images/backicon.png',
              width: 30,
              height: 30,
              color: Color.fromARGB(255, 255, 255, 255),
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => HomepageScreen(),
                ),
              );
            },
          ),
        ),
        // backgroundColor: const Color.fromARGB(255, 8, 59, 98),
        centerTitle: true,
        iconTheme: const IconThemeData(color: Colors.white),
        title: const Text(
          'MY KHQR',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const HomepageScreen()));
            },
            icon: Image.asset(
              'assets/icons/body/acleda.png',
              width: 33,
              height: 33,
            ),
          )
        ],
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            boxShadow: [
              BoxShadow(
                  color: Color.fromARGB(255, 35, 33, 33),
                  blurRadius: 2.0,
                  spreadRadius: 1.0,
                  offset: Offset(0, 2))
            ],
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 8, 59, 98),
                Color.fromARGB(255, 13, 66, 107),
              ],
              begin: Alignment.center,
              end: Alignment.bottomCenter,
            ),
          ),
        ),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [
              Color.fromARGB(255, 52, 71, 120),
              Color.fromARGB(255, 59, 82, 139),
              Color.fromARGB(255, 11, 58, 94),
              Color.fromARGB(255, 4, 35, 58),
            ],
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(50),
                child: Stack(
                  children: [
                    Container(
                      height: 466,
                      width: 300,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15.0),
                        gradient: const LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.center,
                          colors: [
                            Color.fromARGB(255, 255, 47, 0),
                            Color.fromARGB(255, 255, 0, 0),
                            Color.fromARGB(255, 255, 255, 255),
                            Colors.white,
                          ],
                        ),
                        boxShadow: const [
                          BoxShadow(
                            color: Color.fromARGB(169, 46, 45, 45),
                            blurRadius: 6,
                            spreadRadius: 5,
                          )
                        ],
                      ),
                      child: const Padding(
                        padding: EdgeInsets.only(left: 120, top: 20),
                        child: Text(
                          'KHQR',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 490,
                      child: Container(
                        height: 60,
                        width: 300,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15.0),
                          color: const Color.fromARGB(255, 59, 82, 139),
                          boxShadow: const [
                            BoxShadow(
                              color: Color.fromARGB(202, 23, 23, 23),
                              blurRadius: 8,
                              spreadRadius: 3,
                              offset: Offset(2, 2),
                            )
                          ],
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Row(
                            children: [
                              Text(
                                'Wallet Account USA | 051 845 455',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14,
                                ),
                              ),
                              Spacer(),
                              IconButton(
                                onPressed: () {
                                  _Qrsheet(context);
                                },
                                icon: Icon(
                                  Icons.arrow_drop_down_sharp,
                                  color: Colors.white,
                                  size: 40,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 570),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              SizedBox(width: 20),
                              _buildIconButton(
                                  Icons.save_alt_outlined, context),
                              SizedBox(width: 40),
                              _buildIconButton(
                                  Icons.discount_outlined, context),
                              SizedBox(width: 40),
                              _buildIconButton(
                                  Icons.insert_link_outlined, context),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 10), // Adjust top padding as needed
                            child: Text(
                              '     SAVE        SET AMOUNT     SHARE LINK',
                              style: TextStyle(
                                color: const Color.fromARGB(255, 237, 232, 232),
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                      top: 160,
                      left: 5,
                      child: Center(
                        child: Container(
                          height: 300,
                          width: 290,
                          color: const Color.fromARGB(255, 255, 255, 255),
                          child: Image.asset(
                            'assets/images/Originalqr.jpg',
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 60,
                      child: ClipPath(
                        clipper: TopRightCornerClipper(),
                        child: Container(
                          height: 50,
                          width: 300,
                          color: const Color.fromARGB(255, 255, 255, 255),
                          child: const Padding(
                            padding: EdgeInsets.only(left: 20, top: 10),
                            child: Text(
                              'SOMART SOPHEAK',
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w500,
                                fontSize: 18,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 110,
                      child: Container(
                        height: 50,
                        width: 300,
                        color: const Color.fromARGB(255, 255, 255, 255),
                        child: const Center(
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 16),
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Row(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(left: 10, top: 5),
                                    child: Text(
                                      '\$',
                                      style: TextStyle(
                                        color: Color.fromARGB(255, 0, 0, 0),
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: 8),
                                  Flexible(
                                    child: TextField(
                                      keyboardType: TextInputType.number,
                                      decoration: InputDecoration(
                                        border: InputBorder.none,
                                        hintText: '0 USA',
                                        hintStyle: TextStyle(
                                          color: Color.fromARGB(
                                              255, 184, 174, 174),
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
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

  Widget _buildIconButton(IconData icon, BuildContext context) {
    return Container(
      height: 60,
      width: 60,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30.0),
        color: const Color.fromARGB(255, 59, 82, 139),
        boxShadow: const [
          BoxShadow(
            color: Color.fromARGB(119, 0, 0, 0),
            blurRadius: 8,
            spreadRadius: 2,
            offset: Offset(2, 2),
          )
        ],
      ),
      child: Center(
        child: IconButton(
          onPressed: () {
            _Qrsheet(context);
          },
          icon: Icon(
            icon,
            color: Colors.white,
            size: 30,
          ),
        ),
      ),
    );
  }
}

class TopRightCornerClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.moveTo(0, 0);
    path.lineTo(size.width - 40, 0);
    path.lineTo(size.width, 40);
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}
