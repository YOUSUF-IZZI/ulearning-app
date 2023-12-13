import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:ulearning_app/common/utils/colors.dart';

import '../../../../route/go_router_provider.dart';


class CreateAccountText extends StatelessWidget {
  const CreateAccountText({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Don\'t have an account? ',
            style: TextStyle(
              fontSize: 14.h,
            ),
          ),
          GestureDetector(
            onTap: (){
              GoRouter.of(context).push(RoutePath.signUpPage.path);
            },
            child: Text(
              'Sing Up',
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
      ),
    );
  }
}
