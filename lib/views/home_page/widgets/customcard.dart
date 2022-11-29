import 'package:eamui/views/constants.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:sizer/sizer.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 17.h,
      width: 27.w,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: Colors.blueGrey[50],
          border: Border.all(color: Colors.black12)),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 5.h,
              width: 10.w,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.black,
              ),
              child: const Icon(
                (Iconsax.bag_2),
                color: Colors.white,
              ),
            ),
            kHeight,
            Text("05", style: kTextStyle2),
            SizedBox(
              height: .5.h,
            ),
            Expanded(
              child: Text(
                "Work Permit Requests",
                overflow: TextOverflow.fade,
                style: TextStyle(
                  fontSize: 1.8.h,
                  fontWeight: FontWeight.bold,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
