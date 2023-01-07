import 'package:flutter/material.dart';

import '../utils/layout.dart';

class DoubleTap extends StatelessWidget {
  final String firsttap;
  final String secondtap;
  const DoubleTap({Key? key, required this.firsttap, required this.secondtap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      child: Container(
        padding: const EdgeInsets.all(3),
        decoration: BoxDecoration(
            color: const Color(0xFFF4F6FD),
            borderRadius: BorderRadius.circular(AppLayout.getWidth(20))),
        child: Row(children: [
          Container(
            padding: EdgeInsets.symmetric(vertical: AppLayout.getHeigth(7)),
            width: AppLayout.getSize(context).width * 0.44,
            decoration: BoxDecoration(
                color: const Color(0xFFF4F6FD),
                borderRadius: BorderRadius.horizontal(
                    left: Radius.circular(AppLayout.getWidth(20)))),
            child: Center(child: Text(firsttap)),
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: AppLayout.getHeigth(7)),
            width: AppLayout.getSize(context).width * 0.44,
            decoration: BoxDecoration(
                color: Colors.grey.shade200,
                borderRadius: BorderRadius.horizontal(
                    right: Radius.circular(AppLayout.getWidth(20)))),
            child: Center(child: Text(secondtap)),
          ),
        ]),
      ),
    );
  }
}
