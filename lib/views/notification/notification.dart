import 'package:eamui/views/constants.dart';
import 'package:eamui/views/home_page/widgets/drawer_items.dart';
import 'package:eamui/views/message/widget/custom_message_tile.dart';
import 'package:eamui/views/notification/add_notification.dart';
import 'package:eamui/views/notification/widgets/custom_notification_card.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:sizer/sizer.dart';

import 'addingnotificationsample.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        drawer: const DrawerItems(),
        body: SizedBox(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(right: 3.w, top: 2.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Builder(
                          builder: (BuildContext context) {
                            return IconButton(
                              icon: Icon(
                                Iconsax.menu_1,
                                color: Colors.black,
                                size: 4.h,
                              ),
                              onPressed: () {
                                Scaffold.of(context).openDrawer();
                              },
                            );
                          },
                        ),
                        Text(
                          "Notifications",
                          style: kTextStyle2,
                        ),
                      ],
                    ),
                    Wrap(
                      spacing: 0,
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: Icon(Iconsax.search_normal_1),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(Iconsax.refresh_circle),
                        ),
                        PopupMenuButton(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          padding: EdgeInsets.all(0),
                          itemBuilder: (context) {
                            return const [
                              PopupMenuItem(
                                value: '/round',
                                child: Text("Start Round"),
                              ),
                              PopupMenuItem(
                                value: '/notification',
                                child: Text("Create Notification"),
                              ),
                              PopupMenuItem(
                                value: '/details',
                                child: Text("Details"),
                              )
                            ];
                          },
                        ),
                      ],
                    )
                  ],
                ),
              ),
              kHeight,
              Padding(
                padding: EdgeInsets.only(left: 3.w),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Container(
                        height: 4.5.h,
                        width: 12.w,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Icon(Iconsax.align_vertically),
                      ),
                      kWidth,
                      CustomFilterCard(
                        filterText: "Priority",
                        onTap: () {},
                      ),
                      kWidth,
                      CustomFilterCard(
                        filterText: "Work Center",
                        onTap: () {},
                      ),
                      kWidth,
                      CustomFilterCard(
                        filterText: "Notifications",
                        onTap: () {},
                      ),
                      kWidth,
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.only(left: 3.w, right: 3.w, top: 2.h),
                  child: ListView.builder(
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                          const NotificationCard(),
                          kHeight2,
                        ],
                      );
                    },
                    itemCount: 10,
                  ),
                ),
              )
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => Notificationn(
                        callBackListener:
                            (enabledFailureCard, enableFunctionCard) => false,
                      )),
            );
          },
          backgroundColor: const Color.fromRGBO(40, 95, 231, 1),
          child: const Icon(Iconsax.add),
        ),
      ),
    );
  }
}

class CustomFilterCard extends StatelessWidget {
  final String filterText;
  final VoidCallback onTap;
  const CustomFilterCard(
      {super.key, required this.filterText, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            height: 4.5.h,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Padding(
              padding: EdgeInsets.only(left: 3.w, right: 2.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    filterText,
                    style:
                        TextStyle(fontWeight: FontWeight.w500, fontSize: 2.h),
                  ),
                  Icon(
                    Iconsax.arrow_down_1,
                    size: 2.3.h,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
