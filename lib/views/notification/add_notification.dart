import 'package:eamui/views/constants.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class AddNotification extends StatelessWidget {
  const AddNotification({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
          leading: IconButton(
            icon: const Icon(Icons.close),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          title: Text(
            "Add Notification",
            style: kTextStyle2,
          ),
          actions: [
            TextButton(
              onPressed: () {},
              child: Text(
                "Save",
                style: kTextStyle3,
              ),
            )
          ],
        ),
        body: Column(
          children: [
            kHeight2,
            Card(
              borderOnForeground: false,
              elevation: 0,
              margin: const EdgeInsets.all(0),
              color: Colors.grey[100],
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "GENERAL",
                      style: kTextStyle3,
                    ),
                    kHeight,
                    const Text("Notification Description*"),
                    kHeight,
                    SizedBox(
                      height: 45,
                      child: TextField(
                        cursorColor: Colors.black,
                        cursorHeight: 2.5.h,
                        decoration: InputDecoration(
                          hintStyle: TextStyle(height: .4.h),
                          hintText: "Enter short text",
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
                    Divider(
                      height: 3.h,
                    ),
                    Text("Notificaion Type"),
                    kHeight,
                    SizedBox(
                      height: 45,
                      child: TextField(
                        showCursor: false,
                        enableInteractiveSelection: false,
                        cursorColor: Colors.black,
                        decoration: InputDecoration(
                          hintStyle: TextStyle(height: .4.h),
                          hintText: "Select type",
                          border: InputBorder.none,
                          suffixIcon: Icon(
                            Icons.arrow_forward_ios,
                            size: 2.h,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
