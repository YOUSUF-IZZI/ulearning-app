import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:ulearning_app/common/widgets/custom_button.dart';
import 'package:ulearning_app/features/sign_in/presentation_layer/state_management/login_state_controller.dart';
import 'package:ulearning_app/features/sign_in/presentation_layer/widgets/create_account_text.dart';
import 'package:ulearning_app/features/sign_in/presentation_layer/widgets/custom_divider.dart';
import 'package:ulearning_app/common/widgets/custom_text_field.dart';
import 'package:ulearning_app/features/sign_in/presentation_layer/widgets/restore_password_text.dart';
import 'package:ulearning_app/features/sign_in/presentation_layer/widgets/third_party_login.dart';


class SignInPage extends StatelessWidget {
  const SignInPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(left: 20.w, right: 20.w, bottom: MediaQuery.of(context).viewInsets.bottom),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //Login header text
              Text(
                'Login',
                style: TextStyle(fontSize: 34.h, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 16.h,),
              Text(' Email', style: TextStyle(fontSize: 16.h)),
              //Email TextField
              Consumer(
                builder: (context, ref, child) {
                  return CustomTextField(
                    hint: 'Enter your email address',
                    prefixIcon: Icon(Icons.email_outlined, size: 24.h,),
                    isPassword: false,
                    onChanged: (value) => ref.read(loginNotifierProvider.notifier).changeEmail(value),
                  );
                },
              ),
              SizedBox(height: 20.h,),
              Text(' Password', style: TextStyle(fontSize: 16.h)),
              //Password TextField
              Consumer(
                builder: (context, ref, child) {
                  return CustomTextField(
                    hint: 'Enter your password',
                    prefixIcon: Icon(Icons.password, size: 24.h,),
                    isPassword: true,
                    onChanged: (value)=>ref.read(loginNotifierProvider.notifier).changePassword(value),
                  );
                },
              ),
              SizedBox(height: 10.h,),
              const RestorePasswordText(),
              SizedBox(height: 40.h,),
              //Login Button
              Consumer(builder: (context, ref, child) {
                return CustomButton(
                  name: 'Login',
                  onPressed: () {
                    Fluttertoast.showToast(
                        msg: "This is Center Short Toast",
                        toastLength: Toast.LENGTH_SHORT,
                        gravity: ToastGravity.CENTER,
                        timeInSecForIosWeb: 1,
                        backgroundColor: Colors.red,
                        textColor: Colors.white,
                        fontSize: 16.0
                    );
                  }
                );
              },),
              const CreateAccountText(),
              const CustomDivider(dividerTitle: 'Or Sign in with'),
              const ThirdPartyLogin(),
            ],
          ),
        ),
      ),
    );
  }
}



