import 'package:flutter/material.dart';

class BalanceCard extends StatelessWidget {
  final BuildContext context;
  final String phoneNum;
  final String accountName;
  final String amount;
  final String wallet;

  BalanceCard(
      this.context, this.phoneNum, this.accountName, this.amount, this.wallet);

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
                    Text(phoneNum, style: const TextStyle(fontSize: 16.0)),
                    Text(accountName, style: const TextStyle(fontSize: 14.0)),
                  ],
                ),
              ),
              const SizedBox(
                width: 60,
              ),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Column(
                      children: [
                        Text(amount, style: const TextStyle(fontSize: 16.0)),
                        Text(wallet, style: const TextStyle(fontSize: 14.0)),
                      ],
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.arrow_forward_ios),
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
class BalanceCard2 extends StatelessWidget {
  final String phoneNum;
  final String accountName;
  final String amount;
  final String wallet;
  final VoidCallback onTap;

  BalanceCard2(
    this.phoneNum,
    this.accountName,
    this.amount,
    this.wallet, {
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
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
                      Text(phoneNum, style: const TextStyle(fontSize: 16.0)),
                      Text(accountName, style: const TextStyle(fontSize: 14.0)),
                    ],
                  ),
                ),
                const SizedBox(
                  width: 60,
                ),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Column(
                        children: [
                          Text(amount, style: const TextStyle(fontSize: 16.0)),
                          Text(wallet, style: const TextStyle(fontSize: 14.0)),
                        ],
                      ),
                      IconButton(
                        onPressed: () {
                          // Implement your logic here
                          print('Icon button pressed');
                        },
                        icon: const Icon(Icons.arrow_forward_ios),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// class BalanceCard2 extends StatelessWidget {
//   final BuildContext context;
//   final String phoneNum;
//   final String accountName;
//   final String amount;
//   final String wallet;

//   BalanceCard2(
//       this.context, this.phoneNum, this.accountName, this.amount, this.wallet);

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: MediaQuery.of(context).size.width,
//       height: 90,
//       margin: const EdgeInsets.only(top: 10),
//       decoration: BoxDecoration(
//         borderRadius: BorderRadius.circular(20.0),
//         boxShadow: [
//           BoxShadow(
//             color: const Color.fromARGB(255, 74, 109, 162).withOpacity(0.3),
//             blurRadius: 8,
//           ),
//         ],
//       ),
//       child: Card(
//         child: Padding(
//           padding: const EdgeInsets.only(top: 16, left: 16, bottom: 16),
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               Expanded(
//                 child: Column(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Text(phoneNum, style: const TextStyle(fontSize: 16.0)),
//                     Text(accountName, style: const TextStyle(fontSize: 14.0)),
//                   ],
//                 ),
//               ),
//               const SizedBox(
//                 width: 60,
//               ),
//               Expanded(
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   crossAxisAlignment: CrossAxisAlignment.end,
//                   children: [
//                     Column(
//                       children: [
//                         Text(amount, style: const TextStyle(fontSize: 16.0)),
//                         Text(wallet, style: const TextStyle(fontSize: 14.0)),
//                       ],
//                     ),
//                     IconButton(
//                       onPressed: () {},
//                       icon: const Icon(Icons.arrow_forward_ios),
//                     ),
//                   ],
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
