import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ulearning_app/common/widgets/custom_button.dart';
import 'package:ulearning_app/common/widgets/custom_text_field.dart';
import 'package:ulearning_app/features/sign_up/presentation_layer/state_management/sign_up_state_controller.dart';


final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Colors.white,
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(left: 20.w, right: 20.w, bottom: MediaQuery.of(context).viewInsets.bottom),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Register',
                style: TextStyle(fontSize: 34.h, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 16.h,),
              Text(' Username', style: TextStyle(fontSize: 16.h)),
              //user name TextField
              Consumer(
                builder: (context, ref, child) {
                  return CustomTextField(
                    hint: 'Enter your username',
                    prefixIcon: Icon(Icons.person, size: 24.h,),
                    isPassword: false,
                    onChanged: (value) => ref.read(signUpNotifierProvider.notifier).changeUserName(value),
                  );
                },
              ),
              SizedBox(height: 20.h,),
              Text(' Email', style: TextStyle(fontSize: 16.h)),
              //Email TextField
              Consumer(
                builder: (context, ref, child) {
                  return CustomTextField(
                    hint: 'Enter your email address',
                    prefixIcon: Icon(Icons.email_outlined, size: 24.h,),
                    isPassword: false,
                    onChanged: (value) => ref.read(signUpNotifierProvider.notifier).changeEmail(value),
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
                    onChanged: (value) => ref.read(signUpNotifierProvider.notifier).changePassword(value),
                  );
                },
              ),
              SizedBox(height: 20.h,),
              Text(' Confirm Password', style: TextStyle(fontSize: 16.h)),
              //Confirm Password TextField
              Consumer(
                builder: (context, ref, child) {
                  return CustomTextField(
                    hint: 'Confirm your password',
                    prefixIcon: Icon(Icons.password, size: 24.h,),
                    isPassword: true,
                    onChanged: (value) => ref.read(signUpNotifierProvider.notifier).changeConfirmPassword(value),
                  );
                },
              ),
              const SizedBox(height: 40,),
              //Login Button
              Consumer(builder: (context, ref, child) {
                return CustomButton(
                  name: 'Register',
                  onPressed: (){
                    ref.read(signUpNotifierProvider.notifier).registerMe(context);
                  },
                );
              },)
            ],
          ),
        ),
      ),
    );
  }
}



