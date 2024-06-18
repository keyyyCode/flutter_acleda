
import 'package:flutter/material.dart';

class CustomTextFieldContainer extends StatelessWidget {
  final String labelText;
  final Function(String) onChanged;
  final Widget iconButton;
  final Widget? icon;
  final bool showAdditionalText; // Flag to conditionally show additional text

  CustomTextFieldContainer({
    required this.labelText,
    required this.onChanged,
    required this.iconButton,
    this.icon,
    this.showAdditionalText = false,
  });

  @override
  Widget build(BuildContext context) {
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
          if (icon != null) // Check if icon is not null
            Padding(
              padding: const EdgeInsets.only(top: 8, left: 10, bottom: 8),
              child: icon!,
            ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 20.0, bottom: 10.0, top: 10),
              child: TextField(
                decoration: InputDecoration(
                  labelText: labelText,
                  border: InputBorder.none,
                ),
                onChanged: onChanged,
              ),
            ),
          ),
          if (showAdditionalText) // Conditionally show additional text
            const Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 5),
                  child: Text(
                    '032 023 344',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                      fontSize: 14,
                    ),
                  ),
                ),
                Text(
                  '0.00 USA',
                  style: TextStyle(
                    color: Colors.orange,
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                  ),
                ),
              ],
            ),
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: iconButton,
          ),
        ],
      ),
    );
  }
}
