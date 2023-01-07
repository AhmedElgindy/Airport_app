import 'package:flutter/material.dart';

class DotedWidget extends StatelessWidget {
  final int section;
  final double? width;
  final Color? color;
  const DotedWidget({
    Key? key,
    this.color,
    required this.section,
    this.width,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Flex(
            direction: Axis.horizontal,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            mainAxisSize: MainAxisSize.max,
            children: List.generate(
                (constraints.constrainWidth() / section).floor(),
                ((index) => SizedBox(
                      width: width ?? 5,
                      height: 1,
                      child: DecoratedBox(
                          decoration:
                              BoxDecoration(color: color ?? Colors.grey)),
                    ))));
      },
    );
  }
}
