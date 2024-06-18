import 'package:bank/screen/GridBox/mobiletop_up/CustomTextField.dart';
import 'package:bank/screen/Screen_Main/main_screen.dart';
import 'package:flutter/material.dart';

class PinvoucherTap extends StatelessWidget {
  final Function PinvoucherSheet1;
  final Function PinvoucherSheet2;

  const PinvoucherTap({
    required this.PinvoucherSheet1,
    required this.PinvoucherSheet2,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 120,
          width: double.infinity,
          // margin: const EdgeInsets.only(bottom: 4),
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: const Color(0xFF131B53).withOpacity(0.8),
                blurRadius: 8,
              )
            ],
            color: Color.fromARGB(255, 234, 228, 228),
          ),

          child: IconButton(
            onPressed: () {},
            icon: Image.asset(
              'assets/icons/mobile_topUp/bannerpin_voucher.png',
              height: 120,
              width: 120,
              fit: BoxFit.cover,
            ),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          color: Color.fromARGB(255, 255, 255, 255),
          width: double.infinity,
          // height: 583,
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              CustomTextFieldContainer(
                icon: null,
                labelText: 'Select Account',
                onChanged: (value) {},
                showAdditionalText: true,
                iconButton: IconButton(
                  onPressed: () {
                    PinvoucherSheet1();
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
                icon: null,
                labelText: 'Select mobile operator',
                onChanged: (value) {},
                iconButton: IconButton(
                  onPressed: () {
                    PinvoucherSheet2();
                  },
                  icon: Image.asset(
                    'assets/icons/payment/wifi.png',
                    color: Colors.red,
                    height: 40,
                    width: 40,
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              SizedBox(height: 16.0),
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
