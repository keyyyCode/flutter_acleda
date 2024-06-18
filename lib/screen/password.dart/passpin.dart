import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_icon_snackbar/flutter_icon_snackbar.dart';

class PIN extends StatefulWidget {
  final Widget route;
  const PIN({super.key, required this.route});

  @override
  State<PIN> createState() => _PINState();
}

class _PINState extends State<PIN> {
  String numPIN = '';
  void _checkPIN() {
    SchedulerBinding.instance.addPostFrameCallback((_) {
      if (numPIN == '111111') {
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => widget.route));
      } else {
        print("Failed to login with " + numPIN);
        SchedulerBinding.instance.addPostFrameCallback(
          (_) => IconSnackBar.show(
            context,
            snackBarType: SnackBarType.alert,
            snackBarStyle: const SnackBarStyle(
              maxLines: 3,
            ),
            label: 'Not Correct, Please Try Again!',
          ),
        );
        setState(() {
          numPIN = '';
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    if (numPIN.length >= 6) {
      _checkPIN();
    }
    return Scaffold(
      backgroundColor: Color.fromARGB(127, 52, 71, 120),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(height: 60),
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: const Padding(
              padding: EdgeInsets.only(left: 20),
              child: Row(
                children: [
                  Text(
                    "Cancel",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 255, 0, 0),
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 20),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  // color: BackgroundColor.colorWhite.withOpacity(0.9),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Image.asset(
                    "assets/icons/body/key.png",
                    height: 80,
                  ),
                ),
              ),
              const SizedBox(height: 5),
              const Text(
                "SOMART SOPHEAK",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 255, 255, 255),
                ),
              ),
              const SizedBox(
                width: 300,
                child: Text(
                  "099 999 999",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                    color: Color.fromARGB(255, 148, 206, 100),
                  ),
                ),
              ),
              SizedBox(
                width: 300,
                child: Text(
                  "Please Enter PIN ",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                    color: Color.fromARGB(255, 200, 185, 185),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 40),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                backgroundColor: Color.fromARGB(255, 200, 187, 187),
                minRadius: 15,
                child: CircleAvatar(
                  backgroundColor: numPIN.length > 0
                      ? const Color.fromARGB(255, 0, 0, 0)
                      : Color.fromARGB(255, 255, 255, 255),
                  minRadius: 10,
                ),
              ),
              const SizedBox(width: 15),
              CircleAvatar(
                backgroundColor: Color.fromARGB(255, 200, 187, 187),
                minRadius: 15,
                child: CircleAvatar(
                  backgroundColor: numPIN.length > 1
                      ? const Color.fromARGB(255, 0, 0, 0)
                      : Color.fromARGB(255, 255, 255, 255),
                  minRadius: 10,
                ),
              ),
              const SizedBox(width: 15),
              CircleAvatar(
                backgroundColor: Color.fromARGB(255, 200, 187, 187),
                minRadius: 15,
                child: CircleAvatar(
                  backgroundColor: numPIN.length > 2
                      ? const Color.fromARGB(255, 0, 0, 0)
                      : Color.fromARGB(255, 255, 255, 255),
                  minRadius: 10,
                ),
              ),
              const SizedBox(width: 15),
              CircleAvatar(
                backgroundColor: Color.fromARGB(255, 200, 187, 187),
                minRadius: 15,
                child: CircleAvatar(
                  backgroundColor: numPIN.length > 3
                      ? const Color.fromARGB(255, 0, 0, 0)
                      : Color.fromARGB(255, 255, 255, 255),
                  minRadius: 10,
                ),
              ),
              const SizedBox(width: 15),
              CircleAvatar(
                backgroundColor: Color.fromARGB(255, 200, 187, 187),
                minRadius: 15,
                child: CircleAvatar(
                  backgroundColor: numPIN.length > 4
                      ? const Color.fromARGB(255, 0, 0, 0)
                      : Color.fromARGB(255, 255, 255, 255),
                  minRadius: 10,
                ),
              ),
              const SizedBox(width: 15),
              CircleAvatar(
                backgroundColor: Color.fromARGB(255, 200, 187, 187),
                minRadius: 15,
                child: CircleAvatar(
                  backgroundColor: numPIN.length > 5
                      ? const Color.fromARGB(255, 0, 0, 0)
                      : Color.fromARGB(255, 255, 255, 255),
                  minRadius: 10,
                ),
              )
            ],
          ),
          GridView(
            shrinkWrap: true,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              mainAxisExtent: 110,
            ),
            children: [
              ...List.generate(
                9,
                (index) => IconButton(
                  onPressed: () {
                    setState(() {
                      if (numPIN.length < 6) {
                        numPIN += '${index + 1}';
                      }
                    });
                  },
                  icon: Container(
                    height: 90,
                    width: 90,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color:
                          Color.fromARGB(255, 255, 255, 255).withOpacity(0.2),
                      border: Border.all(
                        width: 1,
                        color:
                            Color.fromARGB(255, 255, 255, 255).withOpacity(0.8),
                      ),
                    ),
                    child: Center(
                      child: Text(
                        "${index + 1}",
                        style: const TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 255, 255, 255),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              IconButton(
                onPressed: () {
                  setState(() {
                    numPIN = '';
                  });
                },
                icon: const Text(
                  "C",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w500,
                    color: Color.fromARGB(255, 255, 255, 255),
                  ),
                ),
              ),
              IconButton(
                onPressed: () {
                  setState(() {
                    if (numPIN.length < 6) {
                      numPIN += '0';
                    }
                  });
                },
                icon: Container(
                  height: 90,
                  width: 90,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Color.fromARGB(255, 255, 255, 255).withOpacity(0.2),
                    border: Border.all(
                      width: 1,
                      color:
                          Color.fromARGB(255, 255, 255, 255).withOpacity(0.8),
                    ),
                  ),
                  child: const Center(
                    child: Text(
                      "0",
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w500,
                        color: Color.fromARGB(255, 255, 255, 255),
                      ),
                    ),
                  ),
                ),
              ),
              IconButton(
                onPressed: () {
                  setState(() {
                    if (numPIN.isNotEmpty) {
                      numPIN = numPIN.substring(0, numPIN.length - 1);
                    }
                  });
                },
                icon: const Icon(
                  Icons.backspace,
                  size: 30,
                  color: Color.fromARGB(255, 255, 0, 0),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
