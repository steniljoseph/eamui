import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:sizer/sizer.dart';

class CustomCrewTile extends StatelessWidget {
  const CustomCrewTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 2.w, right: 2.w),
      child: ListTile(
        contentPadding: EdgeInsets.only(bottom: 2.h),
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
        trailing: Wrap(
          children: [
            IconButton(
              icon: const Icon(
                Iconsax.call_calling,
              ),
              onPressed: () {},
              color: Colors.black,
            ),
            PopupMenuButton(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16.0),
              ),
              icon: const Icon(
                Icons.more_vert,
                color: Colors.black,
              ),
              itemBuilder: (context) {
                return [
                  PopupMenuItem(
                    value: '/hello',
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        IconButton(
                            onPressed: () {}, icon: const Icon(Iconsax.card)),
                        const Text("Email"),
                      ],
                    ),
                  ),
                  PopupMenuItem(
                    value: '/about',
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        IconButton(
                            onPressed: () {},
                            icon: const Icon(Iconsax.message)),
                        const Text("Message"),
                      ],
                    ),
                  )
                ];
              },
            ),
          ],
        ),
      ),
    );
  }
}

class PopUpMen extends StatelessWidget {
  final List<PopupMenuEntry> menuList;

  const PopUpMen({
    Key? key,
    required this.menuList,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16.0),
      ),
      itemBuilder: ((context) => menuList),
    );
  }
}
