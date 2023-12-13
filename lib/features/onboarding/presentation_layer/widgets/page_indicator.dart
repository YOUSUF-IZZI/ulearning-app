import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:ulearning_app/common/utils/colors.dart';
import 'package:ulearning_app/features/onboarding/presentation_layer/state_management/onboarding_page_controller_provider.dart';


class CustomPageIndicator extends ConsumerWidget {
  const CustomPageIndicator({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controller = ref.watch(onboardingPageControllerProvider);
    return SmoothPageIndicator(
      controller: controller,
      count: 3,
      effect: ScrollingDotsEffect(
        activeDotColor: AppColors.primaryElement,
        dotHeight: 13.r,
        dotWidth: 13.r,
      ),
    );
  }
}
