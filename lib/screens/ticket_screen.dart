import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ticket_app/screens/ticket_view.dart';
import 'package:ticket_app/utils/app_info_list.dart';
import 'package:ticket_app/utils/app_layout.dart';
import 'package:ticket_app/utils/app_styles.dart';
import 'package:ticket_app/widgets/column_layout.dart';
import 'package:ticket_app/widgets/tickets_tab.dart';

class TicketScreen extends StatelessWidget {
  const TicketScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: Stack(
        children: [
          ListView(
            padding: EdgeInsets.symmetric(
                horizontal: AppLayout.getHeight(20),
                vertical: AppLayout.getHeight(20)),
            children: [
              Gap(AppLayout.getHeight(40)),
              Text(
                "Tickets",
                style: Styles.headlineStyle1,
              ),
              Gap(AppLayout.getHeight(20)),
              AppTicketTabs(firstTab: "Upcoming", secondTab: "Previous"),
              Gap(AppLayout.getHeight(20)),
              Container(
                padding: EdgeInsets.only(left: AppLayout.getHeight(15)),
                child: TicketView(
                  isColor: true,
                  ticket: ticketList[0],
                ),
              ),
              SizedBox(
                height: 1,
              ),
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 15,
                  vertical: 20,
                ),
                margin: EdgeInsets.symmetric(horizontal: 15),
                color: Colors.white,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        AppColumnLayout(
                          firstText: "Flutter DB",
                          secondText: "Passenger",
                          alignment: CrossAxisAlignment.start,
                          isColor: null,
                        ),
                        AppColumnLayout(
                          firstText: "8823 123993",
                          secondText: "Passport",
                          alignment: CrossAxisAlignment.end,
                          isColor: null,
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
