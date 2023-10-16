import 'package:flutter/material.dart';
import 'package:tugas_ui_gojek/pages/home_page/component/gopay_tab/reuse/gopayButton.dart';
import 'package:tugas_ui_gojek/themes/theme.dart';

class GoPayTab extends StatelessWidget {
  const GoPayTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: const BoxDecoration(
        color: ColorsBase.darkBlueBase,
        borderRadius: BorderRadius.all(
          Radius.circular(15),
        ),
      ),
      margin: const EdgeInsets.all(20),
      child: Row(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(right: 10),
              child: Container(
                padding: const EdgeInsets.all(8),
                decoration: const BoxDecoration(
                    color: ColorsBase.whiteBase,
                    borderRadius: BorderRadius.all(
                      Radius.circular(8),
                    )),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(
                      'assets/images/logo_gojek.png',
                      fit: BoxFit.fill,
                      height: 17.5,
                    ),
                    Text('Rp9.280', style: FontBaseStyle().styleW900_16),
                    Text(
                      'Klik & cek riwayat',
                      style: FontBaseStyle()
                          .styleW400_12
                          .copyWith(color: ColorsBase.greenBase),
                    ),
                  ],
                ),
              ),
            ),
          ),
          const Expanded(
            child: Row(
              children: [
                GoPayButton(icon: Icons.arrow_upward_rounded, title: 'Bayar'),
                GoPayButton(icon: Icons.add, title: 'Top Up'),
                GoPayButton(icon: Icons.rocket_launch_rounded, title: 'Eksplor'),
              ],
            ),
          )
        ],
      ),
    );
  }
}
