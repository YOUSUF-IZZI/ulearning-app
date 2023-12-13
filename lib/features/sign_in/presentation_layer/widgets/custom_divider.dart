import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class CustomDivider extends StatelessWidget {
  const CustomDivider({super.key, required this.dividerTitle,});
  //setting the title from outside
  final String dividerTitle;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Divider(
            color: Colors.grey[300],
            thickness: 2.0,
            height: 50,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18),
          child: Text(
            dividerTitle,
            style: TextStyle(
              color: Colors.grey,
              fontSize: 14.h,
            ),
          ),
        ),
        Expanded(
          child: Divider(
            color: Colors.grey[300],
            thickness: 2.0,
          ),
        ),
      ],
    );
  }
}