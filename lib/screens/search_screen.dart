import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ticket_app/utils/app_layout.dart';
import 'package:ticket_app/utils/app_styles.dart';
import 'package:ticket_app/widgets/icon_text_widget.dart';
import 'package:ticket_app/widgets/tickets_tab.dart';

import '../widgets/double_text_widget.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        padding: EdgeInsets.symmetric(
          horizontal: AppLayout.getWidth(20),
          vertical: AppLayout.getHeight(20),
        ),
        children: [
          Gap(AppLayout.getHeight(40)),
          Text(
            "What are \n you looking for ?",
            style: Styles.headlineStyle1.copyWith(
              fontSize: AppLayout.getWidth(35),
            ),
          ),
          Gap(
            AppLayout.getHeight(20),
          ),
          AppTicketTabs(
            firstTab: "Airline Tickets",
            secondTab: "Hotels",
          ),
          Gap(AppLayout.getHeight(25)),
          AppIconText(icon: Icons.flight_takeoff_rounded, text: "Departure"),
          Gap(AppLayout.getHeight(15)),
          AppIconText(icon: Icons.flight_land_rounded, text: "Arrival"),
          Gap(
            AppLayout.getHeight(20),
          ),
          Container(
            padding: EdgeInsets.symmetric(
                vertical: AppLayout.getWidth(18),
                horizontal: AppLayout.getWidth(15)),
            decoration: BoxDecoration(
                color: Color(0xD91130CE),
                borderRadius: BorderRadius.circular(
                  AppLayout.getWidth(10),
                )),
            child: Center(
              child: Text("Find Tickets",
                  style: Styles.textStyle
                      .copyWith(color: Colors.white, fontSize: 2)),
            ),
          ),
          Gap(
            AppLayout.getHeight(40),
          ),
          AppDoubleTextWidget(
              bigText: "Upcoming Flights", smallText: "View All"),
          Gap(
            AppLayout.getHeight(15),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: AppLayout.getHeight(400),
                width: size.width * 0.42,
                padding: EdgeInsets.symmetric(
                    horizontal: AppLayout.getHeight(15),
                    vertical: AppLayout.getWidth(15)),
                decoration: BoxDecoration(
                    borderRadius:
                        BorderRadius.circular(AppLayout.getHeight(20)),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.shade200,
                        blurRadius: 1,
                        spreadRadius: 1,
                      )
                    ]),
                child: Column(
                  children: [
                    Container(
                      height: AppLayout.getHeight(190),
                      decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.circular(AppLayout.getHeight(12)),
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage("assets/images/plane.jfif"),
                        ),
                      ),
                    ),
                    Gap(
                      AppLayout.getHeight(12),
                    ),
                    Text(
                      "20% discount on the early booking of this flight. Don't miss.",
                      style: Styles.headlineStyle2,
                    )
                  ],
                ),
              ),
              Column(
                children: [
                  Stack(
                    children: [
                      Container(
                        width: size.width * 0.44,
                        height: AppLayout.getHeight(174),
                        decoration: BoxDecoration(
                          color: Color(0xFF3AB8B8),
                          borderRadius:
                              BorderRadius.circular(AppLayout.getHeight(18)),
                        ),
                        padding: EdgeInsets.symmetric(
                            vertical: AppLayout.getHeight(15),
                            horizontal: AppLayout.getHeight(15)),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Discount \n for survey",
                              style: Styles.headlineStyle2.copyWith(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                            Gap(AppLayout.getHeight(10)),
                            Text(
                              "Take the survey about our services.",
                              style: Styles.headlineStyle2.copyWith(
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white,
                                  fontSize: 18),
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        right: -45,
                        top: -40,
                        child: Container(
                          padding: EdgeInsets.all(AppLayout.getHeight(30)),
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.transparent,
                              border: Border.all(
                                  width: 18, color: Color(0xFF189999))),
                        ),
                      )
                    ],
                  ),
                  Gap(AppLayout.getHeight(15)),
                  Container(
                    width: size.width * 0.44,
                    height: AppLayout.getHeight(210),
                    padding: EdgeInsets.symmetric(
                      vertical: AppLayout.getHeight(15),
                      horizontal: AppLayout.getHeight(15),
                    ),
                    decoration: BoxDecoration(
                      borderRadius:
                          BorderRadius.circular(AppLayout.getHeight(18)),
                      color: Color(0xFFEC6545),
                    ),
                    child: Column(
                      children: [
                        Text(
                          "Take Love",
                          style: Styles.headlineStyle2.copyWith(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        Gap(AppLayout.getHeight(5)),
                        RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: "🥰",
                                style: TextStyle(fontSize: 38),
                              ),
                              TextSpan(
                                text: "😘",
                                style: TextStyle(fontSize: 50),
                              ),
                              TextSpan(
                                text: "😍",
                                style: TextStyle(fontSize: 38),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
