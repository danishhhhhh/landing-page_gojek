import 'package:flutter/material.dart';
import 'package:tugas_ui_gojek/pages/home_page/component/services_tab/reuse/servicesButton.dart';
import 'package:tugas_ui_gojek/pages/home_page/component/services_tab/service.dart';

class ServicesTab extends StatefulWidget {
  const ServicesTab({super.key});

  @override
  State<ServicesTab> createState() => _ServicesTabState();
}

class _ServicesTabState extends State<ServicesTab> {
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.all(10),
        child: GridView.builder(
          itemCount: serviceColumn.length,
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 4,
            childAspectRatio: 1.1,
          ),
          itemBuilder: (context, index) {
            return ServicesButton(image: serviceColumn[index].image, serviceName: serviceColumn[index].serviceName,);
          },
        ));
  }
}

