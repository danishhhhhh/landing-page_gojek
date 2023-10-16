import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:tugas_ui_gojek/themes/theme.dart';

class AppBarSearchBar extends StatefulWidget {
  const AppBarSearchBar({super.key});

  @override
  State<AppBarSearchBar> createState() => _AppBarSearchBarState();
}

class _AppBarSearchBarState extends State<AppBarSearchBar> {
  final CarouselController carouselController = CarouselController();

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    return Row(
      children: [
        Flexible(
          child: GestureDetector(
            onTap: () {},
            child: Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: ColorsBase.whiteBase,
                borderRadius: BorderRadius.circular(25),
                border: Border.all(color: ColorsBase.lightGreyBase),
              ),
              child: Row(
                children: [
                  Container(
                    margin: const EdgeInsets.only(right: 5),
                    child: const Icon(Icons.search, size: 20),
                  ),
                  Flexible(
                    child: CarouselSlider(
                      options: CarouselOptions(
                        scrollPhysics: const NeverScrollableScrollPhysics(),
                        height: (screenHeight * 0.025 < 24)
                            ? 24
                            : screenHeight * 0.025,
                        scrollDirection: Axis.vertical,
                        autoPlay: true,
                      ),
                      items: [
                        Text(
                          'Cari layanan, makanan, & tujuan',
                          style: FontBaseStyle().styleW400_12,
                        ),
                        Text(
                          'Makan apa hari ini? Cari di sini',
                          style: FontBaseStyle().styleW400_12,
                        )
                        // Add more items as needed
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 10),
          child: GestureDetector(
            onTap: () {},
            child: ClipOval(
              child: SizedBox.fromSize(
                size: const Size.fromRadius(20),
                child:
                    Image.asset('assets/images/profile.png', fit: BoxFit.cover),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
