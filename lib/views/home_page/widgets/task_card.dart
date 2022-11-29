import 'package:eamui/views/constants.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:sizer/sizer.dart';

class TaskWidget extends StatelessWidget {
  const TaskWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 32.h,
      width: double.maxFinite,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.blueGrey[50],
      ),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 5.h,
                  width: 8.w,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color.fromRGBO(184, 176, 229, 1),
                  ),
                  child: Icon(
                    Iconsax.task_square,
                    size: 2.5.h,
                  ),
                ),
                kWidth,
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: 64.w,
                        child: Padding(
                          padding: EdgeInsets.only(top: 1.h),
                          child: Text(
                            "Machine Monthly Maintanance Checkup",
                            maxLines: 2,
                            style: TextStyle(
                              overflow: TextOverflow.ellipsis,
                              fontSize: 2.2.h,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                PopupMenuButton(
                  itemBuilder: (context) {
                    return const [
                      PopupMenuItem(
                        value: '/hello',
                        child: Text("Hello"),
                      ),
                      PopupMenuItem(
                        value: '/about',
                        child: Text("About"),
                      ),
                      PopupMenuItem(
                        value: '/contact',
                        child: Text("Contact"),
                      )
                    ];
                  },
                )
              ],
            ),
            Padding(
              padding: EdgeInsets.only(left: 10.w, top: 1.5.h),
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Monthly",
                        style: TextStyle(
                            fontSize: 2.h, fontWeight: FontWeight.bold),
                      ),
                      kHeight,
                      Text(
                        "27 Jul 2022",
                        style: TextStyle(
                            fontSize: 1.8.h,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey[700]),
                      ),
                      kHeight2,
                      Container(
                        height: 3.5.h,
                        width: 15.w,
                        decoration: BoxDecoration(
                          color: const Color.fromRGBO(0, 188, 139, 1),
                          borderRadius: BorderRadius.circular(100),
                        ),
                        child: const Center(
                          child: Text(
                            "Low",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w500),
                          ),
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
                                fontSize: 2.h,
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                              children: const [
                                TextSpan(
                                  text: " (Line 1)",
                                  style: TextStyle(
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
                                fontSize: 2.h,
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                              children: const [
                                TextSpan(
                                  text: " (Z1 Areal feed 1)",
                                  style: TextStyle(
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
              ),
            )
          ],
        ),
      ),
    );
  }
}
