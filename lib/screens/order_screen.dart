import 'package:flutter/material.dart';
import 'package:rumedy/consts/colors.dart';

class OrderScreen extends StatefulWidget {
  const OrderScreen({super.key});

  @override
  State<OrderScreen> createState() => _OrderScreenState();
}

class _OrderScreenState extends State<OrderScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          "OrderScreen",
          style: TextStyle(color: whiteColor),
        ),
      ),
    );
  }
}
