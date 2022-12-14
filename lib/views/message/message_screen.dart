import 'package:eamui/views/constants.dart';
import 'package:eamui/views/home_page/widgets/drawer_items.dart';
import 'package:eamui/views/message/widget/custom_message_tile.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:sizer/sizer.dart';

class MessageScreen extends StatelessWidget {
  const MessageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: GestureDetector(
        onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
        child: Scaffold(
          drawer: const DrawerItems(),
          body: SizedBox(
            child: Column(
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
                      Text(
                        "Messages",
                        style: kTextStyle2,
                      ),
                    ],
                  ),
                ),
                kHeight,
                Padding(
                  padding: EdgeInsets.only(left: 2.w, right: 2.w),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 6.h,
                        child: TextField(
                          cursorColor: Colors.black,
                          // cursorHeight: 3.h,
                          decoration: InputDecoration(
                            floatingLabelBehavior: FloatingLabelBehavior.never,
                            // hintStyle: TextStyle(height: .4.h),
                            // hintText: "Search in messages",
                            labelText: "Search in messages",
                            labelStyle: TextStyle(
                              height: .4.h,
                              color: Colors.blueGrey,
                            ),
                            prefixIcon: const Icon(Iconsax.search_normal_1,
                                color: Colors.black),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: const BorderSide(color: Colors.black),
                            ),
                          ),
                          // focusNode: FocusNode().addListener(() {}),
                        ),
                      ),
                      kHeight2,
                    ],
                  ),
                ),
                Expanded(
                  child: ListView.builder(
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      return const CustomMessageTile();
                    },
                    itemCount: 10,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
