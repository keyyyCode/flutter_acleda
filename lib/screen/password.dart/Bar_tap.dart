import 'package:flutter/material.dart';

class NotificationPage extends StatefulWidget {
  @override
  _NotificationPageState createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  int _selectedIndex = 0;

  final List<String> _titles = ['Home', 'Favoritessss', 'Profile', 'Pro'];

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
        backgroundColor: Color.fromARGB(255, 8, 59, 98),
        centerTitle: true,
        iconTheme: IconThemeData(color: Colors.white),
        title: Text(
          _titles[_selectedIndex],
          style: TextStyle(
            color: Color.fromARGB(255, 255, 255, 255),
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Image.asset(
              'assets/icons/body/acleda.png',
              width: 33,
              height: 33,
            ),
          )
        ],
        // bottom: PreferredSize(
        //   preferredSize: Size.fromHeight(kToolbarHeight),
        //   child: Container(
        //     height: 60,
        //     color: Color.fromARGB(255, 28, 30, 52),
        //     child: TabBar(
        //       controller: _tabController,
        //       isScrollable: false, // Allow tabs to scroll horizontally
        //       onTap: (index) {
        //         setState(() {
        //           _selectedIndex = index;
        //         });
        //       },
        //       tabs: List.generate(
        //         _titles.length,
        //         (index) => Container(
        //           height: 100,
        //           width: double.infinity,
        //           color: _selectedIndex == index
        //               ? Color.fromARGB(255, 8, 59, 98)
        //               : Color.fromARGB(255, 28, 30, 52),
        //           child: Tab(
        //             icon: Icon(
        //               getTabIcon(index),
        //               size: 24.0,
        //               color: _selectedIndex == index
        //                   ? Colors.white
        //                   : Color.fromARGB(255, 165, 219, 57),
        //             ),
        //             text: _titles[index],
        //           ),
        //         ),
        //       ),
        //       labelStyle: TextStyle(
        //         fontSize: 16.0,
        //         fontWeight: FontWeight.bold,
        //       ),
        //       unselectedLabelStyle: TextStyle(
        //         fontSize: 16.0,
        //         color: Color.fromARGB(255, 165, 219, 57),
        //       ),
        //       labelColor: Colors.white,
        //     ),
        //   ),
        // ),
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(kToolbarHeight),
          child: Container(
            height: 60,
            color: Color.fromARGB(255, 28, 30, 52),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: List.generate(
                _titles.length,
                (index) => Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 0),
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          _selectedIndex = index;
                          _tabController.index =
                              index; // Update the TabController index
                        });
                      },
                      child: Container(
                        height: 60,
                        color: _selectedIndex == index
                            ? Color.fromARGB(255, 8, 59, 98)
                            : Color.fromARGB(255, 28, 30, 52),
                        child: Tab(
                          icon: Icon(
                            getTabIcon(index),
                            size: 24.0,
                            color: _selectedIndex == index
                                ? Colors.white
                                : Color.fromARGB(255, 165, 219, 57),
                          ),
                          text: _titles[index],
                          //             labelStyle: TextStyle(
                          //   fontSize: 16.0,
                          //   fontWeight: FontWeight.bold,
                          // ),
                          // unselectedLabelStyle: TextStyle(
                          //   fontSize: 16.0,
                          //   color: Color.fromARGB(255, 165, 219, 57),
                          // ),
                          // labelColor: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        physics: NeverScrollableScrollPhysics(),
        children: [
          _buildTabContent('Home Screen', 0),
          _buildTabContent('Favorites Screen', 1),
          _buildTabContent('Profile Screen', 2),
          _buildTabContent('Pro Screen', 3),
        ],
      ),
    );
  }

  Widget _buildTabContent(String text, int index) {
    return Container(
      color: _selectedIndex == index
          ? Color.fromARGB(255, 98, 175, 98)
          : Color.fromARGB(255, 55, 122, 174),
      child: Center(
        child: Text(
          text,
          style: TextStyle(
            color: Colors.amber,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }

  IconData getTabIcon(int index) {
    switch (index) {
      case 0:
        return Icons.home;
      case 1:
        return Icons.star;
      case 2:
        return Icons.person;
      case 3:
        return Icons.percent_outlined;
      default:
        return Icons.home;
    }
  }
}
