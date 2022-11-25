// ignore_for_file: depend_on_referenced_packages, import_of_legacy_library_into_null_safe

import 'package:eamui/views/constants.dart';
import 'package:eamui/views/home_page/widgets/custom_drawer_list.dart';
import 'package:eamui/views/home_page/widgets/customcard.dart';
import 'package:eamui/views/home_page/widgets/drawer_items.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:sizer/sizer.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        drawer: const DrawerItems(),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(right: 3.w, top: 2.h),
                    child: Row(
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
                        // kWidth,
                        Expanded(
                          child: SizedBox(
                            height: 6.h,
                            child: TextField(
                              decoration: InputDecoration(
                                hintStyle: TextStyle(height: .4.h),
                                hintText: "Search here....",
                                prefixIcon: const Icon(Iconsax.search_normal_1,
                                    color: Colors.black),
                                suffixIcon: IconButton(
                                  icon: const Icon(Iconsax.scanner,
                                      color: Colors.black),
                                  onPressed: () {},
                                ),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 3.w, right: 3.w, top: 3.h),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Good evening",
                                  style: kTextStyle,
                                ),
                                Text(
                                  "Samuel Jackson",
                                  style: kTextStyle2,
                                )
                              ],
                            ),
                            Wrap(
                              children: [
                                Container(
                                  height: 5.h,
                                  width: 10.w,
                                  decoration: kIconBoxStyle,
                                  child: IconButton(
                                    onPressed: () {},
                                    icon: const Icon(Iconsax.calendar_2),
                                  ),
                                ),
                                SizedBox(width: 2.h),
                                Container(
                                  height: 5.h,
                                  width: 10.w,
                                  decoration: kIconBoxStyle,
                                  child: IconButton(
                                    onPressed: () {},
                                    icon: const Icon(Iconsax.map),
                                  ),
                                ),
                                SizedBox(width: 2.h),
                                Container(
                                  height: 5.h,
                                  width: 10.w,
                                  decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                    image: DecorationImage(
                                      image: NetworkImage(
                                          'https://googleflutter.com/sample_image.jpg'),
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(height: 3.h),
                      ],
                    ),
                  )
                ],
              ),
              Padding(
                padding: EdgeInsets.only(left: 3.w),
                child: SizedBox(
                  height: 17.h,
                  child: Row(
                    children: [
                      Expanded(
                        child: ListView.separated(
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          itemCount: 10,
                          itemBuilder: (context, index) => const CustomCard(),
                          separatorBuilder: (context, index) => SizedBox(
                            width: 3.w,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              kHeight,
              ListTile(
                leading: Text(
                  "Your tasks",
                  style: kTextStyle2,
                ),
                trailing: Text(
                  "view all",
                  style: TextStyle(
                    fontSize: 2.h,
                    decoration: TextDecoration.underline,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 2.h, right: 2.h),
                child: Container(
                  height: 40.h,
                  width: double.maxFinite,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.grey[200],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Container(
                              height: 5.h,
                              width: 10.w,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.blue[200],
                              ),
                            )
                          ],
                        )
                      ],
                    ),
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

// Card(
//   shape: RoundedRectangleBorder(
//       side: const BorderSide(
//         color: Colors.black12,
//       ),
//       borderRadius: BorderRadius.circular(5)),
//   color: Colors.grey[200],
//   child: Padding(
//     padding: const EdgeInsets.all(8.0),
//     child: Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         Container(
//           decoration: const BoxDecoration(
//             color: Colors.black,
//             shape: BoxShape.circle,
//           ),
//           child: IconButton(
//               color: Colors.white,
//               onPressed: () {},
//               icon: const Icon(Iconsax.calendar_2)),
//         ),
//         kHeight,
//         Text("05", style: kTextStyle2),
//         kHeight,
//         Text(
//           "Hi Jackson",
//           style: kTextStyle2,
//         )
//       ],
//     ),
//   ),
// ),