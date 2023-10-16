import 'package:flutter/material.dart';
import 'package:tugas_ui_gojek/themes/theme.dart';

class DiscountPageView extends StatelessWidget {
  const DiscountPageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text("Discount Page", style: FontBaseStyle().styleW900_16,)),
    );
  }
}
