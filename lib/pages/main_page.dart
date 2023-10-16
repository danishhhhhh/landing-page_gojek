import 'package:flutter/material.dart';
import 'package:tugas_ui_gojek/pages/chat_page/chat_page_view.dart';
import 'package:tugas_ui_gojek/pages/discount_page/discount_page_view.dart';
import 'package:tugas_ui_gojek/pages/order_page/order_page_view.dart';
import 'package:tugas_ui_gojek/pages/tabbar_item.dart';
import 'package:tugas_ui_gojek/pages/home_page/home_page_view.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {


  @override
  Widget build(BuildContext context) {
    return const DefaultTabController(
      length: 4,
      child: Scaffold(
        body: TabBarView(
          children: [
            HomePageView(),
            DiscountPageView(),
            OrderPageView(),
            ChatPageView(),
          ],
        ),
        bottomNavigationBar: AppTabBar(),
      ),
    );
  }
}
