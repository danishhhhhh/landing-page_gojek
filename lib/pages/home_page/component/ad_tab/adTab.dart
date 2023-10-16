import 'package:flutter/material.dart';
import 'package:tugas_ui_gojek/pages/home_page/component/ad_tab/ad_data.dart';
import 'package:tugas_ui_gojek/pages/home_page/component/ad_tab/reuse/adBanner.dart';
import 'package:tugas_ui_gojek/themes/theme.dart';

class AdTab extends StatefulWidget {
  const AdTab({super.key});

  @override
  State<AdTab> createState() => _AdTabState();
}

class _AdTabState extends State<AdTab> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.all(20),
          width: double.maxFinite,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                'assets/images/TokopediaImage.png',
                height: 16,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 5),
                child: Text(
                  'Belanja makin hemat 🤑',
                  style: FontBaseStyle().styleW900_16
                ),
              ),
              Text(
                'Dapetin diskon dan harga spesialnya di Tokopedia sekarang sebelum kehabisan!',
                style: FontBaseStyle().styleW400_14
              ),
            ],
          ),
        ),
        ...addData.map(
          (data) {
            return AdBanner(data: data);
          },
        ),
      ],
    );
  }
}
