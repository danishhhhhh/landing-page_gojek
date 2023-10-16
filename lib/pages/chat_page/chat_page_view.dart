import 'package:flutter/material.dart';
import 'package:tugas_ui_gojek/themes/theme.dart';

class ChatPageView extends StatelessWidget {
  const ChatPageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text("Chat Page", style: FontBaseStyle().styleW900_16,)),
    );
  }
}
