// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import 'package:test/utils/style.dart';
import 'package:test/utils/layout.dart';

class HotelView extends StatelessWidget {
  final Map<String, dynamic> hotel;
  const HotelView({
    Key? key,
    required this.hotel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 17),
      margin: const EdgeInsets.only(top: 5, right: 17),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        color: Styles.blueColor,
      ),
      width: size.width * 0.6,
      height: AppLayout.getHeigth(360),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: AppLayout.getHeigth(180),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Styles.bgColor,
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage("assets/images/${hotel['image']}"))),
          ),
          const Gap(10),
          Text(
            "${hotel['place']}",
            style: Styles.headLinestyle2.copyWith(color: Styles.kakiColor),
          ),
          const Gap(10),
          Text(
            "${hotel['destination']}",
            style: Styles.headLinestyle4.copyWith(color: Colors.white),
          ),
          const Gap(5),
          Text(
            "\$${hotel['price']}/night",
            style: Styles.headLinestyle1.copyWith(color: Styles.kakiColor),
          ),
        ],
      ),
    );
  }
}
