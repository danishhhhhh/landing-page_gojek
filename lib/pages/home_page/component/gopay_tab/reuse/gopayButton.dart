import 'package:flutter/material.dart';
import 'package:tugas_ui_gojek/themes/theme.dart';

class GoPayButton extends StatelessWidget {

  const GoPayButton({super.key, required this.icon, required this.title});
  final IconData icon;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.symmetric(vertical: 5),
            padding: const EdgeInsets.all(2),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10)),
            child: Icon(
              icon,
              color: ColorsBase.darkBlueBase,
            ),
          ),
          Text(
            title,
            style: FontBaseStyle().styleW700_14.copyWith(color: ColorsBase.whiteBase),
          )
        ],
      ),
    );
  }
}
