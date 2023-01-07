import 'package:flutter/material.dart';

import '../utils/style.dart';

class DobuleText extends StatelessWidget {
  final String bigtext;
  final String smalltext;
  const DobuleText({Key? key, required this.bigtext, required this.smalltext})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          bigtext,
          style: Styles.headLinestyle2,
        ),
        InkWell(
          child: Text(
            smalltext,
            style: Styles.headLinestyle3,
          ),
        ),
      ],
    );
  }
}
