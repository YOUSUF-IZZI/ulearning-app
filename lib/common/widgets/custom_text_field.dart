import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ulearning_app/common/state_management/obscure_text_state_provider.dart';
import 'package:ulearning_app/common/utils/colors.dart';


class CustomTextField extends ConsumerWidget {
  const CustomTextField({super.key,
    required this.hint,
    required this.prefixIcon,
    required this.isPassword,
    required this.onChanged
  });


  final String hint;
  //only for password TextField
  final Widget prefixIcon;
  //To check if this TextField is for password or not, then manage: 1-suffixIcon 2-obscureText
  final bool isPassword;
  //This function used for changing text field value according to onChanged method
  final void Function(String value) onChanged;


  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isObscure = ref.watch(isObscureTextProvider);
    return Center(
      child: SizedBox(
        height: 60.h,
        child: TextField(
          textAlignVertical: TextAlignVertical.center,
          cursorColor: AppColors.primaryElement,
          obscureText: (isObscure && isPassword) ? true : false,
          style: TextStyle(
            fontSize: 16.h,
          ),

          onChanged: (value) => onChanged(value),

          decoration: InputDecoration(
              prefixIcon: prefixIcon,
              suffixIcon: isPassword ? IconButton(
                onPressed: (){
                  ref.read(isObscureTextProvider.notifier).state = !isObscure;
                },
                icon: Icon(isObscure ? Icons.visibility : Icons.visibility_off, size: 24.h,),
              ) : Text('', style: TextStyle(fontSize: 12.h)),
              hintText: hint,
              hintStyle: TextStyle(
                fontSize: 16.h,
                color: Colors.grey
              ),

              // before clicking border
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12.r),
                  borderSide: const BorderSide(
                    color: Colors.grey,
                    width: 1,
                  )
              ),

              //after clicking border
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12.r),
                  borderSide: const BorderSide(
                      color: AppColors.primaryElement,
                      width: 3
                  )
              ),
          ),
        ),
      ),
    );
  }
}
