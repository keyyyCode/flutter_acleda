import 'package:bank/Models/data/boxfour.dart';
import 'package:bank/Models/data/route_data..dart';
import 'package:bank/screen/BoxScroll/promotion.dart';
import 'package:bank/screen/password.dart/passpin.dart';
import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MainHomeScreens extends StatelessWidget {
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
                      itemCount: HomeScreenData.categories.length,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3,
                        childAspectRatio: 1,
                        crossAxisSpacing: 2,
                        mainAxisSpacing: 2,
                      ),
                      itemBuilder: (context, index) {
                        final category = HomeScreenData.categories[index];
                        return GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        PIN(route: category.route)));
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
                                Image.asset(
                                  category.assetPath,
                                  width: 70,
                                  height: 70,
                                  color: const Color.fromARGB(255, 222, 216,
                                      216), // Adjust the color as needed
                                ),
                                // Icon(category.assetPath,
                                //     color: const Color.fromARGB(
                                //         255, 227, 103, 103),
                                //     size: 30),
                                const SizedBox(height: 10),
                                Text(category.name,
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
          Container(
            // padding: EdgeInsets.only(
            //   top: 20,
            //   bottom: 20,
            // ),
            child: Container(
              // padding: ,
              // color: Colors.red,
              height: 180,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: HomeScreenData2.listItems.map((item) {
                  return BoxWidget(item: item);
                }).toList(),
              ),
            ),
          ),

          
          SizedBox(
            height: 170,
            width: double.infinity,
            child: CarouselSlider.builder(
              itemCount: HomeScreenData.bannerImages.length,
              itemBuilder: (context, index, realIndex) {
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => PIN(route: Promotions()),
                      ),
                    );
                  },
                  child: Image.asset(HomeScreenData.bannerImages[index],
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

class BoxWidget extends StatelessWidget {
  final Box item;

  const BoxWidget({Key? key, required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => PIN(route: item.route)),
        );
      },
      child: Container(
        width: 130,
        height: 160,
        margin: const EdgeInsets.only(top: 20, bottom: 20, left: 10, right: 10),
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: const Color(0xFF131B53).withOpacity(0.8),
              blurRadius: 8,
            ),
          ],
          borderRadius: BorderRadius.circular(20.0),
          color: Colors.white,
        ),
        child: Column(
          children: [
            Container(
              height: 50,
              width: 50,
              margin: const EdgeInsets.only(right: 50, top: 10, bottom: 5),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: const Color.fromARGB(255, 52, 71, 120),
              ),
              child: Center(
                child: Icon(
                  item.icon,
                  size: 30,
                  color: Colors.white,
                ),
              ),
            ),
            SizedBox(
              height: 20,
              width: 100,
              child: Text(
                item.name,
                style: const TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(
              height: 40,
              width: 100,
              child: Text(
                item.text,
                style: const TextStyle(
                  fontSize: 8,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
