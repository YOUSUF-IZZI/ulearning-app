import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ulearning_app/common/utils/colors.dart';


class RestorePasswordText extends StatelessWidget {
  const RestorePasswordText({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      //mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Forgot password? ',
          style: TextStyle(
              fontSize: 14.h,
          ),
        ),
        GestureDetector(
          onTap: (){},
          child: Text(
            'Reset password',
            style: TextStyle(
              fontSize: 14.h,
              decoration: TextDecoration.underline,
              decorationThickness: 1.3.h,
              fontWeight: FontWeight.bold,
              color: AppColors.primaryElement
            ),
          ),
        )
      ],
    );
  }
}
