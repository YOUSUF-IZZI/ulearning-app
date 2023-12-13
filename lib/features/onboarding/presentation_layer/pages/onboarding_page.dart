import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ulearning_app/features/onboarding/presentation_layer/components/onboarding_page_body.dart';
import 'package:ulearning_app/features/onboarding/presentation_layer/state_management/onboarding_page_controller_provider.dart';
import 'package:ulearning_app/features/onboarding/presentation_layer/state_management/page_index_provider.dart';
import 'package:ulearning_app/features/onboarding/presentation_layer/widgets/page_indicator.dart';



class OnboardingPage extends ConsumerWidget {
  const OnboardingPage({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controller = ref.watch(onboardingPageControllerProvider);
    return Scaffold(
      appBar: AppBar(),
      body: Stack(
        alignment: Alignment.center,
        children: [
          PageView(
            // We use controller in navigation and some useful things
            controller: controller,
            // onPageChanged provide us with index number
            onPageChanged: (value) {
              ref.read(pageIndexProvider.notifier).state = value;
            },
            //physics: const BouncingScrollPhysics(),
            children: const [
              OnboardingComponent(
                image: 'assets/images/reading.png',
                title: 'First see learning',
                description: 'Forget about the paper, now learning all in one place',
              ),
              OnboardingComponent(
                  image: 'assets/images/man.png',
                  title: 'Connect with everyone',
                  description: 'Always keep in touch with your tutor and friends. Let\'s get connected'
              ),
              OnboardingComponent(
                  image: 'assets/images/boy.png',
                  title: 'Always Fascinated Learning',
                  description: 'Anywhere, anytime. The time is at your discretion. So study wherever you can'
              ),
            ],
          ),
          Positioned(
            top: 420.h,
            child: const CustomPageIndicator(),
          )
        ],
      ),
    );
  }
}
