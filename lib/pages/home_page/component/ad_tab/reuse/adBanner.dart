import 'package:flutter/material.dart';
import 'package:tugas_ui_gojek/pages/home_page/component/ad_tab/ad_model.dart';
import 'package:tugas_ui_gojek/themes/theme.dart';

class AdBanner extends StatelessWidget {
  const AdBanner({super.key, required this.data});
  final AdModel data;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Container(
        clipBehavior: Clip.hardEdge,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          border: Border.all(color: ColorsBase.greyBase),
        ),
        child: Column(
          children: [
            Container(
              constraints: BoxConstraints(maxHeight: 250),
              child: Image.asset(
                data.image,
                fit: BoxFit.cover,
                width: double.maxFinite,
              ),
            ),
            Container(
              margin: const EdgeInsets.all(20),
              width: double.maxFinite,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 5),
                    child: Text(
                      data.title,
                      style: FontBaseStyle().styleW900_14
                    ),
                  ),
                  Text(
                    data.description,
                    style: FontBaseStyle().styleW400_12
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

