import 'package:eamui/views/constants.dart';
import 'package:eamui/views/home_page/widgets/drawer_items.dart';
import 'package:eamui/views/message/widget/custom_message_tile.dart';
import 'package:eamui/views/notification/widgets/custom_notification_card.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:sizer/sizer.dart';

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
                      Container(
                        height: 4.5.h,
                        width: 25.w,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Priority",
                              style: TextStyle(
                                  fontWeight: FontWeight.w500, fontSize: 2.h),
                            ),
                            Icon(
                              Iconsax.arrow_down_1,
                              size: 2.3.h,
                            ),
                          ],
                        ),
                      ),
                      kWidth,
                      Container(
                        height: 4.5.h,
                        width: 35.w,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Work Center",
                              style: TextStyle(
                                  fontWeight: FontWeight.w500, fontSize: 2.h),
                            ),
                            Icon(
                              Iconsax.arrow_down_1,
                              size: 2.3.h,
                            ),
                          ],
                        ),
                      ),
                      kWidth,
                      Container(
                        height: 4.5.h,
                        width: 38.w,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Notifications",
                              style: TextStyle(
                                  fontWeight: FontWeight.w500, fontSize: 2.h),
                            ),
                            Icon(
                              Iconsax.arrow_down_1,
                              size: 2.3.h,
                            ),
                          ],
                        ),
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
      ),
    );
  }
}
