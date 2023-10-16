import 'package:flutter/material.dart';
import 'package:tugas_ui_gojek/themes/theme.dart';

class OrderPageView extends StatelessWidget {
  const OrderPageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text("Order Page", style: FontBaseStyle().styleW900_16,)),
    );
  }
}
