import 'package:eamui/views/constants.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:sizer/sizer.dart';

class NotificationCard extends StatelessWidget {
  const NotificationCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30.h,
      width: double.maxFinite,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black),
        borderRadius: BorderRadius.circular(10),
        color: Colors.blueGrey[50],
      ),
      child: Padding(
        padding: const EdgeInsets.only(
          left: 15,
          top: 10,
          bottom: 10,
          right: 5,
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Broken Gears in the Production Maintenance",
                        style: TextStyle(
                          overflow: TextOverflow.ellipsis,
                          fontSize: 2.2.h,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                PopupMenuButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  padding: const EdgeInsets.all(0),
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
            ),
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "PM03 - Preventive Maintenance Order",
                      style: TextStyle(
                        fontSize: 2.h,
                        fontWeight: FontWeight.bold,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    kHeight,
                    Text(
                      "27 Jul 2022",
                      style: TextStyle(
                        overflow: TextOverflow.ellipsis,
                        fontSize: 1.8.h,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey[700],
                      ),
                    ),
                    kHeight2,
                    IntrinsicWidth(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Container(
                            height: 3.5.h,
                            decoration: BoxDecoration(
                              color: const Color.fromRGBO(242, 73, 73, 1),
                              borderRadius: BorderRadius.circular(100),
                            ),
                            child: Center(
                              child: Padding(
                                padding: EdgeInsets.only(left: 2.w, right: 2.w),
                                child: const Text(
                                  "High",
                                  style: TextStyle(
                                    overflow: TextOverflow.ellipsis,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    kHeight2,
                    Row(
                      children: [
                        Icon(
                          Iconsax.location,
                          size: 2.5.h,
                        ),
                        kWidth,
                        RichText(
                          text: TextSpan(
                            text: "CA-CA1",
                            style: TextStyle(
                              overflow: TextOverflow.ellipsis,
                              fontSize: 2.h,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                            children: const [
                              TextSpan(
                                text: " (Line 1)",
                                style: TextStyle(
                                  overflow: TextOverflow.ellipsis,
                                  fontWeight: FontWeight.normal,
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                    kHeight,
                    Row(
                      children: [
                        Icon(
                          Iconsax.setting_2,
                          size: 2.5.h,
                        ),
                        kWidth,
                        RichText(
                          text: TextSpan(
                            text: "AFC-1097",
                            style: TextStyle(
                              overflow: TextOverflow.ellipsis,
                              fontSize: 2.h,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                            children: const [
                              TextSpan(
                                text: " (Z1 Areal feed 1)",
                                style: TextStyle(
                                  overflow: TextOverflow.ellipsis,
                                  fontWeight: FontWeight.normal,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
