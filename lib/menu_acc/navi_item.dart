import 'package:flutter/material.dart';

class DrawerItem extends StatelessWidget {
  const DrawerItem(
      {super.key,
      required this.name,
      required this.icon,
      required this.onPressed});
  final String name;
  final IconData icon;
  final VoidCallback onPressed; // Corrected type

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: SizedBox(
        height: 40,
        width: 350,
        child: Row(
          children: [
            SizedBox(
              width: 15,
            ),
            Icon(
              icon,
              size: 20,
              color: Color.fromARGB(255, 106, 234, 64),
            ),
            SizedBox(
              width: 15,
            ),
            Text(
              name,
              style: TextStyle(
                  fontSize: 15,
                  color: Color.fromARGB(255, 217, 213, 213),
                  fontWeight: FontWeight.w400),
            )
          ],
        ),
      ),
    );
  }
}
