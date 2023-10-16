import 'package:flutter/material.dart';
import 'package:tugas_ui_gojek/themes/theme.dart';

class AppTabBar extends StatelessWidget {
  const AppTabBar({super.key});

  @override
  Widget build(BuildContext context) {
    final tabbarwidth = MediaQuery.of(context).size.width / 4;
    return Container(
      decoration: const BoxDecoration(
        color: ColorsBase.whiteBase,
        boxShadow: [
          BoxShadow(
            color: ColorsBase.greyBase,
            blurRadius: 20.0,
            offset: Offset(0, 15),
          ),
        ],
      ),
      child: TabBar(
        splashFactory: NoSplash.splashFactory,
        isScrollable: true,
        labelPadding: EdgeInsets.zero,
        dividerColor: Colors.transparent,
        unselectedLabelColor: ColorsBase.greyBase,
        unselectedLabelStyle: FontBaseStyle().styleW400_12,
        labelColor: ColorsBase.greenBase,
        labelStyle: FontBaseStyle().styleW700_12,
        indicator: BoxDecoration(
          border: const Border(
            top: BorderSide(width: 4, color: Colors.green),
          ),
          gradient: LinearGradient(
            colors: [
              Colors.green.withOpacity(0.1),
              Colors.green.withOpacity(0),
            ],
            begin: Alignment.topCenter,
            end: Alignment.center,
          ),
        ),
        padding: const EdgeInsets.all(0),
        tabs: <Widget>[
          tabItems('Beranda', Icons.home_filled, tabbarwidth),
          tabItems('Pesanan', Icons.ac_unit, tabbarwidth),
          tabItems('Promo', Icons.featured_play_list_rounded, tabbarwidth),
          tabItems('Chat', Icons.chat, tabbarwidth),
        ],
      ),
    );
  }
}

Widget tabItems(String text, IconData icon, double width) {
  return SizedBox(
    width: width,
    child: Tab(
      icon: Icon(icon),
      text: text,
    ),
  );
}
