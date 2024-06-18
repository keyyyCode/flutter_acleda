import 'package:flutter/material.dart';

class BottomSheetSelector extends StatelessWidget {
  final String title;
  final List<Widget> items;

  const BottomSheetSelector({
    Key? key,
    required this.title,
    required this.items,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      child: Column(
        children: [
          Container(
            height: 50,
            decoration: const BoxDecoration(
              color: Color.fromARGB(255, 34, 56, 164),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
            ),
            child: Center(
              child: Text(
                title,
                style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ),
          ),
          ...items,
        ],
      ),
    );
  }
}

class BottomSheetSelector1 extends StatelessWidget {
  final String title;
  final List<Widget> items;

  const BottomSheetSelector1({
    Key? key,
    required this.title,
    required this.items,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 450,
      child: Column(
        children: [
          Container(
            height: 50,
            decoration: const BoxDecoration(
              color: Color.fromARGB(255, 34, 56, 164),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
            ),
            child: Center(
              child: Text(
                title,
                style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ),
          ),
          ...items,
        ],
      ),
    );
  }
}

class CurrencyCard extends StatelessWidget {
  final String currency;

  const CurrencyCard({Key? key, required this.currency}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 90,
      margin: const EdgeInsets.only(top: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
        boxShadow: [
          BoxShadow(
            color: const Color.fromARGB(255, 74, 109, 162).withOpacity(0.3),
            blurRadius: 8,
          ),
        ],
      ),
      child: Card(
        child: Padding(
          padding: const EdgeInsets.only(top: 16, left: 16, bottom: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(currency, style: const TextStyle(fontSize: 16.0)),
                    const Text('Currency', style: TextStyle(fontSize: 14.0)),
                  ],
                ),
              ),
              const SizedBox(width: 60),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Column(
                      children: [
                        Text('Available', style: TextStyle(fontSize: 16.0)),
                        Text('0.00', style: TextStyle(fontSize: 14.0)),
                      ],
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.arrow_forward_ios),
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
}
