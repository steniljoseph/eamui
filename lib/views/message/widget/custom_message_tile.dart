import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class CustomMessageTile extends StatelessWidget {
  const CustomMessageTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 2.w, right: 2.w),
      child: ListTile(
        contentPadding: const EdgeInsets.all(0),
        leading: Container(
          height: 7.h,
          width: 14.w,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(
              image: NetworkImage('https://googleflutter.com/sample_image.jpg'),
              fit: BoxFit.fill,
            ),
          ),
        ),
        title: Text(
          "Stenil Joseph",
          style: TextStyle(
            overflow: TextOverflow.ellipsis,
            fontSize: 2.2.h,
            fontWeight: FontWeight.bold,
          ),
        ),
        subtitle: Text("hello"),
        trailing: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text("24m"),
            Icon(
              Icons.circle,
              size: 1.h,
              color: Colors.blue,
            ),
          ],
        ),
      ),
    );
  }
}
