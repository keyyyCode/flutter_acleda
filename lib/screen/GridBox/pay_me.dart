import 'package:bank/screen/Screen_Main/main_screen.dart';
import 'package:flutter/material.dart';

class PayMeScreens extends StatefulWidget {
  @override
  _PayMeScreenState createState() => _PayMeScreenState();
}

class _PayMeScreenState extends State<PayMeScreens> {
  String amount = '00';
  String remark = '';

  void _onKeyPressed(String value) {
    setState(() {
      if (value == 'backspace') {
        if (amount.length > 0) {
          amount = amount.substring(0, amount.length - 1);
          if (amount.isEmpty) {
            amount = '00';
          }
        }
      } else {
        if (amount == '00') {
          amount = value;
        } else {
          amount += value;
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 8, 59, 98),
        centerTitle: true,
        iconTheme: const IconThemeData(color: Colors.white),
        title: const Text(
          'PAY ME',
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pop(
                context,
                MaterialPageRoute(
                  builder: (context) => HomepageScreen(),
                ),
              );
            },
            icon: Image.asset(
              'assets/icons/body/acleda.png',
              width: 33,
              height: 33,
            ),

            // padding: const EdgeInsets.all(16.0),
          )
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    const Text(
                      'USD',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(width: 8),
                    DropdownButton<String>(
                      value: '0889174559',
                      icon: const Icon(Icons.arrow_drop_down),
                      underline: const SizedBox(), // Removes the underline
                      items: <String>['0889174559', 'KHR']
                          .map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                      onChanged: (String? newValue) {},
                    ),
                  ],
                ),
                IconButton(
                  icon: const Icon(Icons.tune),
                  onPressed: () {
                    // Define the action for the settings icon here
                  },
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20.0),
            child: Text(
              '\៛ $amount',
              style: TextStyle(fontSize: 48.0),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              decoration: InputDecoration(
                labelText: 'Remark',
                // border: OutlineInputBorder(),
              ),
              onChanged: (text) {
                setState(() {
                  remark = text;
                });
              },
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  _buildKeypadRow(['1', '2', '3']),
                  _buildKeypadRow(['4', '5', '6']),
                  _buildKeypadRow(['7', '8', '9']),
                  _buildKeypadRow(['.', '0', 'backspace']),
                ],
              ),
            ),
          ),
          Container(
            width: double.infinity,
            color: const Color.fromARGB(255, 4, 20, 88),
            child: TextButton(
              onPressed: () {},
              child: const Text(
                'OK',
                style: TextStyle(
                    color: Color.fromARGB(255, 253, 241, 0),
                    fontSize: 23,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildKeypadRow(List<String> keys) {
    return Expanded(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: keys.map((key) {
          return _buildKeypadButton(key);
        }).toList(),
      ),
    );
  }

  Widget _buildKeypadButton(String key) {
    return Expanded(
      child: InkWell(
        onTap: () {
          _onKeyPressed(key);
        },
        child: Container(
          margin: const EdgeInsets.all(4.0),
          alignment: Alignment.center,
          decoration: BoxDecoration(
            // border: Border.all(),
            borderRadius: BorderRadius.circular(8.0),
          ),
          child: key == 'backspace'
              ? Icon(Icons.backspace)
              : Text(
                  key,
                  style: TextStyle(fontSize: 20.0),
                ),
        ),
      ),
    );
  }
}
