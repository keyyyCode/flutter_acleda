import 'package:bank/screen/hometest.dart';
import 'package:bank/screen/ninebox/deposite.dart';
import 'package:bank/screen/ninebox/loan.dart';
import 'package:bank/screen/ninebox/mobile_topup.dart';
import 'package:bank/screen/ninebox/pay_me.dart';
import 'package:bank/screen/ninebox/payment.dart';
import 'package:bank/screen/ninebox/quick_cush.dart';
import 'package:bank/screen/ninebox/account.dart';
import 'package:bank/screen/ninebox/scan_qr.dart';
import 'package:bank/screen/ninebox/transfer.dart';
import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class Main_HomeScreen extends StatelessWidget {
  Main_HomeScreen({Key? key}) : super(key: key);

  final List<String> catNames = [
    "Pay-Me",
    'Deposits',
    'Transfers',
    'Mobile Top-up',
    'Loans',
    'Quick Cush',
    'Payments',
    'Scan QR',
    'Accounts',
  ];

  final List<Icon> catIcons = [
    const Icon(Icons.payment_rounded, color: Colors.white, size: 30),
    const Icon(Icons.leaderboard, color: Colors.white, size: 30),
    const Icon(Icons.transfer_within_a_station_outlined,
        color: Colors.white, size: 30),
    const Icon(Icons.mobile_friendly, color: Colors.white, size: 30),
    const Icon(Icons.balance, color: Colors.white, size: 30),
    const Icon(Icons.currency_bitcoin_sharp, color: Colors.white, size: 30),
    const Icon(Icons.book_online, color: Colors.white, size: 30),
    const Icon(Icons.qr_code, color: Colors.white, size: 30),
    const Icon(Icons.person, color: Colors.white, size: 30),
  ];

  final List<String> bannerImages = [
    "assets/images/bannerbank1.jpg",
    "assets/images/bannerbank2.jpg",
    "assets/images/bannerbank3.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: LayoutBuilder(
              builder: (context, constraints) {
                return Center(
                  child: Container(
                    decoration: const BoxDecoration(
                      gradient: RadialGradient(
                        colors: [Color(0xFF6486DA), Color(0xFF083B62)],
                        radius: 0.5,
                      ),
                      boxShadow: [BoxShadow(blurRadius: 2)],
                    ),
                    child: GridView.builder(
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: catNames.length,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3,
                        childAspectRatio: 1,
                        crossAxisSpacing: 2,
                        mainAxisSpacing: 2,
                      ),
                      itemBuilder: (context, index) {
                        return GestureDetector(
                          onTap: () {
                            final screens = [
                              Pay_Me(),
                              Deposite(),
                              Transfer(),
                              Mobile_Top_Up(),
                              Loans(),
                              Quick_Cush(),
                              Payments(),
                              Scan_Qr(),
                              ScreenAccount()
                            ];
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => screens[index]));
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              color: const Color(0xFF083B62),
                              boxShadow: [
                                BoxShadow(
                                    color: const Color(0xFF131B53)
                                        .withOpacity(0.3),
                                    blurRadius: 5)
                              ],
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                catIcons[index],
                                const SizedBox(height: 10),
                                Text(catNames[index],
                                    style: const TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                    textAlign: TextAlign.center),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                );
              },
            ),
          ),
          SizedBox(
            height: 180,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                for (var item in [
                  {
                    "icon": Icons.favorite,
                    "label": "FAVORITES",
                    "subLabel":
                        "Save recipent information for quick translation."
                  },
                  {
                    "icon": Icons.discount,
                    "label": "PROMOTIONS",
                    "subLabel":
                        "More discounts and special offer from ACLEDA'S partners"
                  },
                  {
                    "icon": Icons.qr_code,
                    "label": "SERVICES",
                    "subLabel": "Other services with partner"
                  },
                  {
                    "icon": Icons.leaderboard_outlined,
                    "label": "CSX TRADE",
                    "subLabel": "Cambodia Securities Exchange."
                  },
                ])
                  GestureDetector(
                    // onTap: () {
                    //   final screenMap = {
                    //     "HEART": ScreenAccount(),
                    //     "speaker": ScreenAccount(),
                    //     "kid": Loans(),
                    //     "bed": HomeScreen()
                    //   };
                    //   Navigator.push(
                    //       context,
                    //       MaterialPageRoute(
                    //           builder: (context) => screenMap[item["label"]]!));
                    // },
                    onTap: () {
                      final screenMap = {
                        "FAVORITES": ScreenAccount(),
                        "PROMOTIONS": ScreenAccount(),
                        "SERVICES": Loans(),
                        "CSX TRADE": HomeScreen()
                      };
                      if (screenMap.containsKey(item["label"])) {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => screenMap[item["label"]]!,
                          ),
                        );
                      } else {
                        print("No screen found for ${item["label"]}");
                      }
                    },
                    child: Container(
                      width: 130,
                      height: 160,
                      margin:
                          const EdgeInsets.only(top: 20, bottom: 20, left: 20),
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                              color: const Color(0xFF131B53).withOpacity(0.8),
                              blurRadius: 8)
                        ],
                        borderRadius: BorderRadius.circular(20.0),
                        color: Colors.white,
                      ),
                      child: Column(
                        children: [
                          Container(
                            height: 50,
                            width: 50,
                            margin: const EdgeInsets.only(
                                right: 50, top: 10, bottom: 5),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(25),
                              color: const Color.fromARGB(255, 52, 71, 120),
                            ),
                            child: Center(
                              child: Icon(
                                item["icon"] as IconData?,
                                size: 30,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          Container(
                            height: 20,
                            width: 100,
                            child: Text(
                              item["label"] as String,
                              style: const TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          if (item.containsKey("subLabel"))
                            Container(
                              height: 40,
                              width: 100,
                              child: Text(
                                item["subLabel"] as String,
                                style: const TextStyle(fontSize: 9),
                              ),
                            ),
                        ],
                      ),
                    ),
                  ),
              ],
            ),
          ),
          SizedBox(
            height: 170,
            width: double.infinity,
            child: CarouselSlider.builder(
              itemCount: bannerImages.length,
              itemBuilder: (context, index, realIndex) {
                return GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => HomeScreen()));
                  },
                  child: Image.asset(bannerImages[index],
                      fit: BoxFit.cover,
                      width: MediaQuery.of(context).size.width),
                );
              },
              options: CarouselOptions(
                height: 170,
                enlargeCenterPage: true,
                autoPlay: true,
                aspectRatio: 16 / 9,
                autoPlayInterval: const Duration(seconds: 5),
                autoPlayAnimationDuration: const Duration(milliseconds: 800),
                autoPlayCurve: Curves.fastOutSlowIn,
                pauseAutoPlayOnTouch: true,
                viewportFraction: 1.0,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
