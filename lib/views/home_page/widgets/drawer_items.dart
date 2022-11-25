import 'package:eamui/views/constants.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:sizer/sizer.dart';
import 'custom_drawer_list.dart';

class DrawerItems extends StatelessWidget {
  const DrawerItems({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          SizedBox(
            height: 10.h,
            child: DrawerHeader(
              child: Text(
                "Unvired.",
                style: kTextStyle2,
              ),
            ),
          ),
          const CustomDrawerListItems(title: "Home", leading: Iconsax.home_2),
          const CustomDrawerListItems(
              title: "Notifications (15)", leading: Iconsax.notification),
          const CustomDrawerListItems(
              title: "Rounds (3)", leading: Iconsax.arrow_circle_right),
          const CustomDrawerListItems(
              title: "Technical Objects (12)", leading: Iconsax.setting_3),
          const CustomDrawerListItems(
              title: "Forms (5)", leading: Iconsax.document),
          const CustomDrawerListItems(title: "Map view", leading: Iconsax.map),
          const Divider(
            color: Colors.black26,
          ),
          const CustomDrawerListItems(
              title: "Profile Settings", leading: Iconsax.setting_2),
          const CustomDrawerListItems(
              title: "Sync now", leading: Iconsax.refresh_circle),
          const CustomDrawerListItems(
              title: "Logout", leading: Iconsax.logout_1)
        ],
      ),
    );
  }
}
