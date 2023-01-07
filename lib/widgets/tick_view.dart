import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:test/utils/style.dart';
import 'package:test/utils/layout.dart';
import 'package:test/widgets/dotedwidget.dart';
import 'package:test/widgets/thick_continer.dart';

class TickView extends StatelessWidget {
  final bool? iscolor;
  final Map<String, dynamic> ticket;
  const TickView({Key? key, required this.ticket, this.iscolor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return SizedBox(
      width: size.width,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: AppLayout.getHeigth(20)),
        child: Column(
          children: [
            /*this container for blue part*/
            Container(
              padding: EdgeInsets.all(AppLayout.getHeigth(16)),
              decoration: BoxDecoration(
                  color: iscolor == null ? Styles.blueColor : Colors.white,
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(15),
                      topRight: Radius.circular(15))),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "${ticket['from']['code']}",
                        style: Styles.headLinestyle3.copyWith(
                            color:
                                iscolor == null ? Colors.white : Colors.black),
                      ),
                      const Spacer(),
                      iscolor == null
                          ? const ThickContainer()
                          : const ThickContainer(
                              iscolor: true,
                            ),
                      Expanded(
                        child: Stack(
                          children: [
                            SizedBox(
                                height: 24,
                                child: DotedWidget(
                                  color: iscolor == null
                                      ? Colors.white
                                      : Colors.blue,
                                  section: 6,
                                  width: 4,
                                )),
                            Center(
                              child: Transform.rotate(
                                  angle: 1.5,
                                  child: Icon(
                                    Icons.airplanemode_on_outlined,
                                    color: iscolor == null
                                        ? Colors.white
                                        : Colors.blue,
                                  )),
                            ),
                          ],
                        ),
                      ),
                      iscolor == null
                          ? const ThickContainer()
                          : const ThickContainer(
                              iscolor: true,
                            ),
                      const Spacer(),
                      Text(
                        "${ticket['to']['code']}",
                        style: Styles.headLinestyle3.copyWith(
                            color:
                                iscolor == null ? Colors.white : Colors.black),
                      ),
                    ],
                  ),
                  const Gap(5),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '${ticket['from']['name']}',
                        style: iscolor == null
                            ? Styles.headLinestyle3
                                .copyWith(color: Colors.white)
                            : Styles.headLinestyle3,
                      ),
                      Text(
                        '${ticket['flying-time']}',
                        style: Styles.headLinestyle3.copyWith(
                            color:
                                iscolor == null ? Colors.white : Colors.black),
                      ),
                      Text(
                        '${ticket['to']['name']}',
                        style: iscolor == null
                            ? Styles.headLinestyle3
                                .copyWith(color: Colors.white)
                            : Styles.headLinestyle3,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            /* this Container for top orange part */
            Container(
              color: iscolor == null ? Styles.orangeColor : Colors.white,
              child: Row(
                children: [
                  SizedBox(
                    width: AppLayout.getWidth(10),
                    height: AppLayout.getHeigth(20),
                    child: const DecoratedBox(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(10),
                                bottomRight: Radius.circular(10)))),
                  ),
                  Expanded(
                      child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: DotedWidget(
                      color: iscolor == null ? Colors.white : null,
                      section: 15,
                      width: 6,
                    ),
                  )),
                  SizedBox(
                    width: AppLayout.getWidth(10),
                    height: AppLayout.getHeigth(20),
                    child: const DecoratedBox(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                bottomLeft: Radius.circular(10)))),
                  ),
                ],
              ),
            ),
            /* the bottom part */
            Container(
              padding: EdgeInsets.all(AppLayout.getHeigth(16)),
              decoration: BoxDecoration(
                  color: iscolor == null ? Styles.orangeColor : Colors.white,
                  borderRadius: iscolor == null
                      ? const BorderRadius.only(
                          bottomLeft: Radius.circular(15),
                          bottomRight: Radius.circular(15))
                      : null),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "${ticket['date']}",
                        style: Styles.headLinestyle3.copyWith(
                            color:
                                iscolor == null ? Colors.white : Colors.black),
                      ),
                      const Gap(3),
                      Text(
                        "Date",
                        style: Styles.headLinestyle4.copyWith(
                            color:
                                iscolor == null ? Colors.white : Colors.grey),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "${ticket['departe-time']}",
                        style: Styles.headLinestyle3.copyWith(
                            color:
                                iscolor == null ? Colors.white : Colors.black),
                      ),
                      const Gap(3),
                      Text(
                        "Departure time",
                        style: Styles.headLinestyle4.copyWith(
                            color:
                                iscolor == null ? Colors.white : Colors.grey),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        "${ticket['number']}",
                        style: Styles.headLinestyle3.copyWith(
                            color:
                                iscolor == null ? Colors.white : Colors.black),
                      ),
                      const Gap(3),
                      Text(
                        "Number",
                        style: Styles.headLinestyle4.copyWith(
                            color:
                                iscolor == null ? Colors.white : Colors.grey),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
