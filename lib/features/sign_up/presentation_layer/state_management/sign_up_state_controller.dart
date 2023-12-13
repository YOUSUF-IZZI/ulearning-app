import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ulearning_app/features/sign_up/domain_layer/sign_up_model.dart';
import 'package:flutter/material.dart';


class SignUpNotifier extends StateNotifier<LoginModel>
{
  SignUpNotifier(): super(const LoginModel());

  void changeUserName(String value){
    state = state.copyWith(userName: value);
  }
  void changeEmail(String value){
    state = state.copyWith(email: value);
  }
  void changePassword(String value){
    state = state.copyWith(password: value);
  }
  void changeConfirmPassword(String value){
    state = state.copyWith(confirmPassword: value);
  }

  //This method work when register button clicked
  void registerMe(BuildContext context){
    ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: SizedBox(
            height: 20.h,
            child: Center(child: Text('Error', style: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.bold),)),
          ),
          backgroundColor: Colors.red,
          duration: const Duration(seconds: 3),
          behavior: SnackBarBehavior.floating,
          padding: EdgeInsets.all(15.h),
          margin: EdgeInsets.only(left: 10.w, right: 10.w, bottom: 10.h),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16.r),
          ),
          //showCloseIcon: true,
          //works when snackBar show
          onVisible: (){},
        ),
    );

  }
}


final signUpNotifierProvider = StateNotifierProvider<SignUpNotifier, LoginModel>((ref){
  return SignUpNotifier();
});