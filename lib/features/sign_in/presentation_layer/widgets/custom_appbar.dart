import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key});
  @override
  //total height of the appbar.
  Size get preferredSize => Size.fromHeight(60.h);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Text('Sing in'),
      bottom: PreferredSize(
        //bottom height
        preferredSize: Size.fromHeight(1.h),
        child: Container(
          color: Colors.grey[200],
          height: 1.h,
        )
      ),
    );
  }
}
