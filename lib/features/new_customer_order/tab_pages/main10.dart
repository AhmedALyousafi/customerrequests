import 'package:customerrequests/inputFormScreen%20.dart';
import 'package:customerrequests/features/new_customer_order/widgets/datafrom.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Main10 extends StatelessWidget {
  const Main10({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: Column(
        children: [
          CheckBoxItem(),
          Container(
            color: Colors.white,
            child: Column(
              children: [
                Inputformscreen(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
