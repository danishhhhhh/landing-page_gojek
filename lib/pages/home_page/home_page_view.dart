import 'package:flutter/material.dart';
import '../../themes/theme.dart';
import 'component/ad_tab/adTab.dart';
import 'component/appbar_home_page/appBarSearchBar.dart';
import 'component/exp_tab/expTab.dart';
import 'component/gopay_tab/gopayTab.dart';
import 'component/services_tab/servicesTab.dart';

class HomePageView extends StatelessWidget {
  const HomePageView({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
        appBar: AppBar(
          backgroundColor: ColorsBase.greenBase,
          toolbarHeight: (screenHeight * 0.075 < 70) ? 70 : screenHeight * 0.075,
          title: const AppBarSearchBar(),
        ),
        body: const SingleChildScrollView(
          child: Column(
            children: [
              GoPayTab(),
              ServicesTab(),
              ExpTab(),
              AdTab(),
            ],
          ),
        ));
  }
}
