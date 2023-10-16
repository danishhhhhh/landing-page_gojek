import 'package:flutter/material.dart';
import 'package:tugas_ui_gojek/themes/theme.dart';

class ExpTab extends StatefulWidget {
  const ExpTab({super.key});

  @override
  State<ExpTab> createState() => _ExpTabState();
}

class _ExpTabState extends State<ExpTab> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        border: Border.all(color: ColorsBase.lightGreyBase),
        borderRadius: BorderRadius.circular(15),
        gradient: LinearGradient(
          colors: [
            ColorsBase.blueBase.withOpacity(0.075),
            ColorsBase.blueBase.withOpacity(0),
          ],
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
        ),
      ),
      child: Stack(
        alignment: AlignmentDirectional.centerStart,
        children: [
          Padding(
            padding: const EdgeInsets.all(5),
            child: Image.asset('assets/images/ExpBackground.png'),
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Image.asset('assets/images/ExpLogo.png', height: 40),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '297 XP lagi ada Harta Karun',
                      style: FontBaseStyle().styleW700_14
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 5),
                      child: Stack(
                        children: [
                          Container(
                            height: 5,
                            decoration: BoxDecoration(
                                color: ColorsBase.greyBase,
                                borderRadius: BorderRadius.circular(10)),
                          ),
                          FractionallySizedBox(
                            widthFactor: 0.85,
                            child: Container(
                              width: MediaQuery.of(context).size.width,
                              height: 5,
                              decoration: BoxDecoration(
                                  color: ColorsBase.greenBase,
                                  borderRadius: BorderRadius.circular(10)),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(20),
                child: Icon(
                  Icons.arrow_forward_ios_rounded,
                  size: 20,
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
