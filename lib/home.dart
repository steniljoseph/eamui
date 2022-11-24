// ignore_for_file: depend_on_referenced_packages, import_of_legacy_library_into_null_safe

import 'package:eamui/constants.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:sizer/sizer.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        drawer: Drawer(
          child: ListView(
            children: const [
              DrawerHeader(
                child: Text("Hi"),
              ),
              ListTile(
                title: Text("List item 1"),
              ),
              ListTile(
                title: Text("List item 1"),
              ),
            ],
          ),
        ),
        body: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(right: 2.h, top: 2.h),
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
                  Expanded(
                    child: SizedBox(
                      height: 6.h,
                      child: TextField(
                        decoration: InputDecoration(
                          hintStyle: TextStyle(height: .43.h),
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
              padding: EdgeInsets.only(left: 2.h, right: 2.h, top: 3.h),
              child: Column(
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
                            decoration: kIconBoxStyle,
                            child: IconButton(
                                onPressed: () {},
                                icon: const Icon(Iconsax.calendar_2)),
                          ),
                          kWidth,
                          Container(
                            decoration: kIconBoxStyle,
                            child: IconButton(
                                onPressed: () {},
                                icon: const Icon(Iconsax.map)),
                          ),
                          kWidth,
                          Container(
                            height: 6.h,
                            width: 12.w,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                  image: NetworkImage(
                                      'https://googleflutter.com/sample_image.jpg'),
                                  fit: BoxFit.fill),
                            ),
                          ),
                        ],
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
