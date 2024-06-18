import 'package:bank/screen/GridBox/mobiletop_up/CustomTextField.dart';
import 'package:flutter/material.dart';
import 'package:bank/screen/Screen_Main/main_screen.dart';

class PinlessTabContent extends StatelessWidget {
  final Function PinlessSheet1;
  final Function PinlessSheet2;

  const PinlessTabContent({
    required this.PinlessSheet1,
    required this.PinlessSheet2,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 120,
          width: double.infinity,
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: const Color(0xFF131B53).withOpacity(0.8),
                blurRadius: 8,
              )
            ],
            color: const Color.fromARGB(255, 234, 228, 228),
          ),
          child: IconButton(
            onPressed: () {},
            icon: Image.asset(
              'assets/icons/mobile_topUp/bannerpinless.png',
              height: 120,
              width: 120,
              fit: BoxFit.cover,
            ),
          ),
        ),
        const SizedBox(height: 10),
        Container(
          color: const Color.fromARGB(255, 255, 255, 255),
          width: double.infinity,
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              CustomTextFieldContainer(
                icon: null,
                labelText: 'Select Account',
                onChanged: (value) {},
                showAdditionalText: true, // Flag to show additional text
                iconButton: IconButton(
                  onPressed: () {
                    PinlessSheet1();
                  },
                  icon: const Icon(
                    Icons.keyboard_double_arrow_down_outlined,
                    size: 30,
                    color: Color.fromARGB(255, 54, 93, 176),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              CustomTextFieldContainer(
                icon: Image.asset(
                  'assets/icons/payment/wifi.png', // Replace with your asset path
                  height: 30,
                  width: 30,
                  color: const Color.fromARGB(255, 210, 208, 201),
                  fit: BoxFit.contain,
                ),
                labelText: 'To mobile number',
                onChanged: (value) {},
                iconButton: IconButton(
                  onPressed: () {
                    PinlessSheet2();
                  },
                  icon: const Icon(
                    Icons.menu_book_outlined,
                    size: 25,
                    color: Color.fromARGB(255, 0, 81, 255),
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
      ],
    );
  }
}
