import 'package:eamui/views/constants.dart';
import 'package:eamui/views/crew/widgets/custom_crew_tile.dart';
import 'package:eamui/views/home_page/widgets/drawer_items.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:sizer/sizer.dart';

class CrewPage extends StatefulWidget {
  const CrewPage({super.key});

  @override
  State<CrewPage> createState() => _CrewPageState();
}

class _CrewPageState extends State<CrewPage> {
  bool enable = true;
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
                        "Crew",
                        style: kTextStyle2,
                      ),
                    ],
                  ),
                ),
                kHeight,
                Padding(
                  padding: EdgeInsets.only(left: 2.w, right: 2.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
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
                            labelText: "Search crew members",
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
                        ),
                      ),
                      kHeight2,
                      availableOfflineButtons(),
                      kHeight2,
                    ],
                  ),
                ),
                Expanded(
                  child: ListView.builder(
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      return const CustomCrewTile();
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

  availableOfflineButtons() {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: const BorderRadius.all(
          Radius.circular(20),
        ),
      ),
      child: Wrap(
        alignment: WrapAlignment.start,
        children: [
          Container(
            height: 35,
            decoration: BoxDecoration(
              color: enable ? Colors.black : Colors.grey[200],
              borderRadius: const BorderRadius.all(
                Radius.circular(20),
              ),
            ),
            child: TextButton(
              onPressed: () {
                if (enable == false) {
                  enable = true;
                } else {
                  enable = false;
                }
                setState(() {});
              },
              child: Text(
                'Avaialble',
                style: TextStyle(color: enable ? Colors.white : Colors.grey),
              ),
            ),
          ),
          Container(
            height: 35,
            decoration: BoxDecoration(
              color: enable ? Colors.grey[200] : Colors.black,
              borderRadius: const BorderRadius.all(
                Radius.circular(20),
              ),
            ),
            child: TextButton(
              onPressed: () {
                if (enable == false) {
                  enable = true;
                } else {
                  enable = false;
                }
                setState(() {});
              },
              child: Text(
                'Offline',
                textAlign: TextAlign.center,
                style: TextStyle(color: enable ? Colors.grey : Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
