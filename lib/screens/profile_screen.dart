import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:test/utils/layout.dart';

import '../utils/style.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                    width: AppLayout.getHeigth(80),
                    height: AppLayout.getHeigth(80),
                    decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.circular(AppLayout.getHeigth(20)),
                        image: const DecorationImage(
                            image: AssetImage('assets/images/1_img.png')))),
                Gap(AppLayout.getHeigth(5)),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Book Tickets",
                      style: Styles.headLinestyle1,
                    ),
                    Gap(AppLayout.getHeigth(5)),
                    Text(
                      "New-York",
                      style: Styles.headLinestyle4,
                    ),
                    Gap(AppLayout.getHeigth(5)),
                    Container(
                      padding: EdgeInsets.all(AppLayout.getHeigth(3)),
                      decoration: BoxDecoration(
                          borderRadius:
                              BorderRadius.circular(AppLayout.getHeigth(100)),
                          color: const Color(0xfffef4f3)),
                      child: Row(
                        children: [
                          Container(
                            padding: EdgeInsets.all(AppLayout.getHeigth(2)),
                            decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color(0xff526799)),
                            child: const Icon(
                              Icons.shield_rounded,
                              color: Colors.white,
                              size: 15,
                            ),
                          ),
                          Gap(AppLayout.getHeigth(3)),
                          Text(
                            'Permium status',
                            style: Styles.headLinestyle4.copyWith(
                                color: const Color(0xff526799),
                                fontWeight: FontWeight.w600),
                          )
                        ],
                      ),
                    )
                  ],
                ),
                const Spacer(),
                InkWell(
                  child: Text(
                    "Edit",
                    style: Styles.headLinestyle3,
                  ),
                )
              ],
            ),
            Gap(AppLayout.getHeigth(40)),
            Stack(
              alignment: AlignmentDirectional.center,
              children: [
                Container(
                  height: AppLayout.getHeigth(100),
                  decoration: BoxDecoration(
                    color: Colors.blueGrey,
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                Positioned(
                  right: -45,
                  bottom: 45,
                  child: Container(
                      padding: EdgeInsets.all(AppLayout.getHeigth(30)),
                      decoration: BoxDecoration(
                          color: Colors.blueGrey,
                          shape: BoxShape.circle,
                          border: Border.all(
                            width: 18,
                            color: Colors.blue,
                          ))),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      padding: EdgeInsets.all(AppLayout.getHeigth(3)),
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle, color: Colors.white),
                      child: const Icon(
                        Icons.lightbulb_outlined,
                        color: Color(0xff526799),
                        size: 45,
                      ),
                    ),
                    Gap(AppLayout.getHeigth(5)),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "you've got a new award",
                          style: Styles.headLinestyle2
                              .copyWith(color: Colors.white),
                        ),
                        Text(
                          "you have 150 flights in a year ",
                          style: Styles.headLinestyle3
                              .copyWith(color: Colors.white),
                        ),
                      ],
                    )
                  ],
                ),
              ],
            ),
            Gap(AppLayout.getHeigth(20)),
            Text(
              "Accumulated miles",
              style: Styles.headLinestyle2,
            ),
            Gap(AppLayout.getHeigth(10)),
            Container(
              child: Column(
                children: [
                  Text(
                    '192802',
                    style: Styles.headLinestyle1.copyWith(fontSize: 45),
                  ),
                  Gap(AppLayout.getHeigth(10)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Miles accrued',
                        style: Styles.headLinestyle4,
                      ),
                      Text(
                        '11 june 2022',
                        style: Styles.headLinestyle4,
                      ),
                    ],
                  ),
                  Gap(AppLayout.getHeigth(20)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Text(
                            '23 042',
                            style: Styles.headLinestyle3
                                .copyWith(color: Colors.black),
                          ),
                          Text(
                            'Miles',
                            style: Styles.headLinestyle4,
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Text(
                            'Airline CO',
                            style: Styles.headLinestyle3
                                .copyWith(color: Colors.black),
                          ),
                          Text(
                            'Received from',
                            style: Styles.headLinestyle4,
                          ),
                        ],
                      ),
                    ],
                  ),
                  Gap(AppLayout.getHeigth(20)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Text(
                            '24',
                            style: Styles.headLinestyle3
                                .copyWith(color: Colors.black),
                          ),
                          Text(
                            'Miles',
                            style: Styles.headLinestyle4,
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Text(
                            'McDonanals',
                            style: Styles.headLinestyle3
                                .copyWith(color: Colors.black),
                          ),
                          Text(
                            'Recieved from',
                            style: Styles.headLinestyle4,
                          ),
                        ],
                      ),
                    ],
                  ),
                  Gap(AppLayout.getHeigth(20)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Text(
                            '52340',
                            style: Styles.headLinestyle3
                                .copyWith(color: Colors.black),
                          ),
                          Text(
                            'Miles',
                            style: Styles.headLinestyle4,
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Text(
                            'Ahmed Elgindy',
                            style: Styles.headLinestyle3
                                .copyWith(color: Colors.black),
                          ),
                          Text(
                            'Received from',
                            style: Styles.headLinestyle4,
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
