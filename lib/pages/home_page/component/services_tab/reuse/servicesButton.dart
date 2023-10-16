import 'package:flutter/material.dart';
import 'package:tugas_ui_gojek/themes/theme.dart';

class ServicesButton extends StatelessWidget {
  const ServicesButton({super.key, required this.image, required this.serviceName});
  final String image, serviceName;

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    return Padding(
      padding: const EdgeInsets.all(5),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 5),
            child: Image.asset('assets/images/$image', height: (screenHeight * 0.05 < 40) ? 40 : screenHeight * 0.05,),
          ),
          Text(
            serviceName,
            style: FontBaseStyle().styleW400_14.copyWith(color: ColorsBase.darkGreyBase)
          ),
        ],
      ),
    );
  }
}
