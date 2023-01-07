import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:test/widgets/hotel_view.dart';
import 'package:test/widgets/tick_view.dart';
import 'package:test/utils/layout.dart';
import 'package:test/widgets/double_text.dart';

import '../utils/list_info.dart';
import '../utils/style.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                const Gap(40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "GoodMoring",
                          style: Styles.headLinestyle3,
                        ),
                        const Gap(5),
                        Text(
                          "Book Tickets",
                          style: Styles.headLinestyle1,
                        ),
                      ],
                    ),
                    Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: const DecorationImage(
                              image: AssetImage("assets/images/1_img.png"),
                              fit: BoxFit.cover)),
                    )
                  ],
                ),
                const Gap(25),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.white),
                  child: TextField(
                      cursorColor: pramiry,
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Search",
                          prefixIcon: Icon(
                            Icons.search_rounded,
                            color: pramiry,
                          ))),
                ),
                const Gap(40),
                const DobuleText(
                    bigtext: "up coming flight", smalltext: "View all")
              ],
            ),
          ),
          const Gap(15),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children:
                  ticktes.map((ticket) => TickView(ticket: ticket)).toList(),
            ),
          ),
          const Gap(20),
          Container(
              padding:
                  EdgeInsets.symmetric(horizontal: AppLayout.getHeigth(20)),
              child:
                  const DobuleText(bigtext: "Hotels", smalltext: "View All")),
          const Gap(15),
          SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                  children:
                      hotels.map((hotel) => HotelView(hotel: hotel)).toList())),
        ],
      ),
    );
  }
}
