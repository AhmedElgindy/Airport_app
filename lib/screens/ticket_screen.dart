import 'package:barcode_widget/barcode_widget.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:test/utils/layout.dart';
import 'package:test/utils/list_info.dart';
import 'package:test/widgets/dotedwidget.dart';
import 'package:test/widgets/double_tap.dart';
import 'package:test/widgets/tick_view.dart';

import '../utils/style.dart';

class TicketScreen extends StatelessWidget {
  const TicketScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: EdgeInsets.all(AppLayout.getHeigth(20)),
          child: ListView(
            children: [
              Gap(AppLayout.getHeigth(20)),
              Text(
                "Tickets",
                style: Styles.headLinestyle1,
              ),
              Gap(AppLayout.getHeigth(20)),
              const DoubleTap(firsttap: "Upcoming", secondtap: "Pervious"),
              Gap(AppLayout.getHeigth(20)),
              TickView(ticket: ticktes[0], iscolor: true),
              Gap(AppLayout.getHeigth(2)),
              Column(
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(
                        horizontal: AppLayout.getHeigth(16)),
                    margin: EdgeInsets.symmetric(
                        horizontal: AppLayout.getHeigth(20)),
                    decoration: const BoxDecoration(color: Colors.white),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Gap(AppLayout.getHeigth(20)),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Flutter Dash",
                              style: Styles.headLinestyle3
                                  .copyWith(color: Colors.black),
                            ),
                            Text(
                              "5221 478566",
                              style: Styles.headLinestyle3
                                  .copyWith(color: Colors.black),
                            )
                          ],
                        ),
                        Gap(AppLayout.getHeigth(5)),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Passenger",
                              style: Styles.headLinestyle4,
                            ),
                            Text(
                              "Passport",
                              style: Styles.headLinestyle4,
                            )
                          ],
                        ),
                        Gap(AppLayout.getHeigth(20)),
                        Container(
                          child: const DotedWidget(
                            section: 15,
                            width: 6,
                          ),
                        ),
                        Gap(AppLayout.getHeigth(20)),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "0055 444 77147",
                              style: Styles.headLinestyle3
                                  .copyWith(color: Colors.black),
                            ),
                            Text(
                              "B2SG28",
                              style: Styles.headLinestyle3
                                  .copyWith(color: Colors.black),
                            )
                          ],
                        ),
                        Gap(AppLayout.getHeigth(5)),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Number of E-ticket",
                              style: Styles.headLinestyle4,
                            ),
                            Text(
                              "Booking code",
                              style: Styles.headLinestyle4,
                            )
                          ],
                        ),
                        Gap(AppLayout.getHeigth(20)),
                        Container(
                          child: const DotedWidget(
                            section: 15,
                            width: 6,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Image.asset(
                                  'assets/images/download.png',
                                  scale: 4,
                                ),
                                Text(
                                  '*** 4262',
                                  style: Styles.headLinestyle3
                                      .copyWith(color: Colors.black),
                                ),
                              ],
                            ),
                            Text(
                              "\$249.99",
                              style: Styles.headLinestyle3
                                  .copyWith(color: Colors.black),
                            )
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Payment method",
                              style: Styles.headLinestyle4,
                            ),
                            Text(
                              "Price",
                              style: Styles.headLinestyle4,
                            )
                          ],
                        ),
                        Gap(AppLayout.getHeigth(20)),
                      ],
                    ),
                  ),
                ],
              ),
              const Gap(2),
              Container(
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(15),
                        bottomRight: Radius.circular(15))),
                padding:
                    EdgeInsets.symmetric(vertical: AppLayout.getHeigth(15)),
                margin:
                    EdgeInsets.symmetric(horizontal: AppLayout.getHeigth(20)),
                child: Container(
                  padding: const EdgeInsets.only(left: 15, right: 15),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: BarcodeWidget(
                      data: 'https://github.com/AhmedElgindy/',
                      barcode: Barcode.code128(),
                      drawText: false,
                      color: Styles.textColor,
                      width: double.infinity,
                      height: AppLayout.getHeigth(50),
                    ),
                  ),
                ),
              ),
              const Gap(15),
              TickView(ticket: ticktes[1]),
            ],
          ),
        ),
        Positioned(
          left: AppLayout.getHeigth(25),
          top: AppLayout.getHeigth(295),
          child: Container(
            padding: const EdgeInsets.all(2),
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(width: 2, color: Colors.black)),
            child: const CircleAvatar(
              maxRadius: 4,
              backgroundColor: Colors.black,
            ),
          ),
        ),
        Positioned(
          right: AppLayout.getHeigth(25),
          top: AppLayout.getHeigth(295),
          child: Container(
            padding: const EdgeInsets.all(2),
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(width: 2, color: Colors.black)),
            child: const CircleAvatar(
              maxRadius: 4,
              backgroundColor: Colors.black,
            ),
          ),
        ),
      ],
    );
  }
}
