import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class ThirdPartyLogin extends StatelessWidget {
  const ThirdPartyLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 40.w, right: 40.w, top: 20.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          GestureDetector(
            onTap: (){},
            child: CircleAvatar(
              radius: 24.r,
              backgroundColor: Colors.transparent,
              child: Image.asset('assets/icons/google.png',),
            ),
          ),
          GestureDetector(
            onTap: (){},
            child: CircleAvatar(
              radius: 24.r,
              backgroundColor: Colors.transparent,
              child: Image.asset('assets/icons/facebook.png',),
            ),
          ),
          GestureDetector(
            onTap: (){},
            child: CircleAvatar(
              radius: 24.r,
              backgroundColor: Colors.transparent,
              child: Image.asset('assets/icons/apple.png',),
            ),
          )
        ],
      ),
    );
  }
}
